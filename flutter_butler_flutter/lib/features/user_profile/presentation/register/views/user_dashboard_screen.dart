import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_butler_flutter/features/user_profile/presentation/register/bloc/user_profile_bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/presentation/bloc/match_making_bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/entities/match_result_entity.dart';

class DashboardScreen extends StatelessWidget {
  final int userId;

  const DashboardScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Butler Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<UserProfileBloc>().add(
            UserProfileEvent.getUserProfile(userId),
          );
          context.read<MatchMakingBloc>().add(
            MatchMakingEvent.findMatches(userId: userId, hackathonId: 1),
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
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  backgroundColor: Colors.green.withOpacity(
                                    0.1,
                                  ),
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
                  return state.when(
                    initial: () =>
                        const Center(child: Text("Starting matchmaking...")),
                    loading: () => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    error: (message) => Center(
                      child: Text(
                        'Butler Error: $message',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    success: (matches) {
                      if (matches.isEmpty) {
                        return const Card(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "No matches found yet. Keep searching!",
                            ),
                          ),
                        );
                      }
                      return Column(
                        children: matches
                            .map((match) => _buildMatchCard(context, match))
                            .toList(),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
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
                TextButton(
                  onPressed: () {},
                  child: const Text('View Profile'),
                ),
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Request sent! Butler is notifying them."),
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
