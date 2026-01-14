import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_butler_flutter/features/user_profile/presentation/register/bloc/user_profile_bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/presentation/bloc/match_making_bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/entities/match_result_entity.dart';
import 'package:flutter_butler_flutter/features/match_requests/presentation/bloc/match_requests_bloc.dart';
import 'package:flutter_butler_flutter/features/match_requests/domain/entities/match_request_entity.dart';

class DashboardScreen extends StatefulWidget {
  final int userId;

  const DashboardScreen({super.key, required this.userId});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MatchRequestsBloc>().add(
      MatchRequestsEvent.loadRequests(
        userId: widget.userId,
        hackathonId: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userId = widget.userId;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('Butler Dashboard'),
          bottom: const TabBar(
            indicatorColor: Colors.black87,
            labelColor: Colors.black87,
            tabs: [
              Tab(icon: Icon(Icons.people_outline), text: "Find Partners"),
              Tab(icon: Icon(Icons.mail_outline), text: "Requests"),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        body: BlocListener<MatchMakingBloc, MatchMakingState>(
          listener: (context, state) {
            state.maybeWhen(
              requestSent: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Request sent! Butler is notifying them."),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: $message'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              orElse: () {},
            );
          },
          child: TabBarView(
            children: [
              _buildMatchmakingView(context),
              _buildInvitationsView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMatchmakingView(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<UserProfileBloc>().add(
          UserProfileEvent.getUserProfile(widget.userId),
        );
        context.read<MatchMakingBloc>().add(
          MatchMakingEvent.findMatches(userId: widget.userId, hackathonId: 1),
        );
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (profile) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back, ${profile.displayName}!',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Goal: ${profile.goal}',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8.0,
                        children: profile.skills
                            .map(
                              (skill) => Chip(
                                label: Text(skill),
                                backgroundColor: Colors.green.withOpacity(0.1),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 24),
            const Text(
              'Top Partner Matches',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "The Butler found these partners to complement your skills.",
            ),
            const SizedBox(height: 20),
            BlocBuilder<MatchMakingBloc, MatchMakingState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  error: (message) => Center(
                    child: Text(
                      'Error: $message',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  success: (matches) {
                    if (matches.isEmpty) {
                      return const Card(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("No matches found yet. Keep searching!"),
                        ),
                      );
                    }
                    return Column(
                      children: matches
                          .map((match) => _buildMatchCard(context, match))
                          .toList(),
                    );
                  },
                  orElse: () => const Center(child: Text("Searching...")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  int _selectedRequestFilter = 0; // 0: Received, 1: Sent

  Widget _buildInvitationsView(BuildContext context) {
    return BlocConsumer<MatchRequestsBloc, MatchRequestsState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (msg) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(msg), backgroundColor: Colors.red),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('Received'),
                    icon: Icon(Icons.inbox),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Sent'),
                    icon: Icon(Icons.send),
                  ),
                ],
                selected: {_selectedRequestFilter},
                onSelectionChanged: (Set<int> newSelection) {
                  setState(() {
                    _selectedRequestFilter = newSelection.first;
                  });
                },
              ),
            ),
            Expanded(
              child: state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (requests) {
                  final filteredRequests = requests.where((r) {
                    if (_selectedRequestFilter == 0) {
                      return r.toId == widget.userId;
                    } else {
                      return r.fromId == widget.userId;
                    }
                  }).toList();

                  if (filteredRequests.isEmpty) {
                    return Center(
                      child: Text(
                        _selectedRequestFilter == 0
                            ? "No received requests."
                            : "No sent requests.",
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredRequests.length,
                    itemBuilder: (context, index) => _buildRequestCard(
                      context,
                      filteredRequests[index],
                      isSent: _selectedRequestFilter == 1,
                    ),
                  );
                },
                error: (msg) => Center(child: Text("Error: $msg")),
                orElse: () => const Center(
                  child: Text("Check back later for requests."),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildRequestCard(
    BuildContext context,
    MatchRequestEntity request, {
    required bool isSent,
  }) {
    final isPending = request.status.toLowerCase() == 'pending';
    // For sent requests, we want to show who it was sent TO.
    // For received requests, we want to show who it was FROM.
    // Since we don't have user Map, we just show ID.
    final otherUserId = isSent ? request.toId : request.fromId;
    final label = isSent ? "To User" : "From User";

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: isSent ? Colors.orange[50] : Colors.blue[50],
                  child: Icon(
                    isSent ? Icons.arrow_outward : Icons.arrow_downward,
                    color: isSent ? Colors.orange : Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Request #${request.id}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "$label $otherUserId",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getStatusColor(request.status).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    request.status,
                    style: TextStyle(
                      color: _getStatusColor(request.status),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            // ONLY show actions if it is NOT Sent and IS Pending
            if (!isSent && isPending) ...[
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => context.read<MatchRequestsBloc>().add(
                            MatchRequestsEvent.declineRequest(
                                requestId: request.id),
                          ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(color: Colors.red),
                      ),
                      child: const Text("Decline"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => context.read<MatchRequestsBloc>().add(
                            MatchRequestsEvent.acceptRequest(
                                requestId: request.id),
                          ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Accept"),
                    ),
                  ),
                ],
              ),
            ],
            // Optional: Message for sent requests
            if (isSent) ...[
               const SizedBox(height: 8),
               Text(
                 "Waiting for response...",
                 style: TextStyle(fontSize: 12, color: Colors.grey[500], fontStyle: FontStyle.italic),
               )
            ]
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'accepted':
        return Colors.green;
      case 'rejected':
      case 'declined':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  Widget _buildMatchCard(BuildContext context, MatchResult match) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${match.score.toInt()}% Match',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('View Profile')),
              ],
            ),
            const SizedBox(height: 12),
            ...match.reasons.map(
              (reason) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        reason,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  context.read<MatchMakingBloc>().add(
                    MatchMakingEvent.sendMatchRequest(
                      fromId: widget.userId,
                      hackathonId: 1,
                      matchResult: match,
                    ),
                  );
                },
                child: const Text('Connect with Partner'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
