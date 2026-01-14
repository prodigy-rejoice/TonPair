import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/presentation/bloc/match_making_bloc.dart';
import 'package:flutter_butler_flutter/features/user_profile/domain/entities/user_profile/user_profile_entity.dart';
import 'package:flutter_butler_flutter/features/user_profile/presentation/register/views/user_dashboard_screen.dart';
import '../bloc/user_profile_bloc.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _goalController = TextEditingController();
  final List<String> _selectedSkills = [];
  final _skillController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _goalController.dispose();
    _skillController.dispose();
    super.dispose();
  }

  void _addSkill(String value) {
    final newSkill = value.trim().toLowerCase();
    if (newSkill.isNotEmpty) {
      bool alreadyExists = _selectedSkills.any(
        (skill) => skill.toLowerCase() == newSkill,
      );
      if (!alreadyExists) {
        setState(() {
          _selectedSkills.add(newSkill.toLowerCase());
          _skillController.clear();
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'You already added the skill: ${_skillController.text}',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Your Butler Profile'),
        elevation: 0,
      ),
      body: BlocConsumer<UserProfileBloc, UserProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (profile) {
              context.read<MatchMakingBloc>().add(
                MatchMakingEvent.findMatches(
                  userId: profile.id!,
                  hackathonId: 1,
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Welcome, ${profile.displayName}! Profile saved...finding matches',
                  ),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DashboardScreen(userId: profile.id!),
                ),
              );
            },
            failure: (message) {
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
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => _buildForm(context),
          );
        },
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Let's get started.",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "The Butler needs to know your skills to find the best match.",
            ),
            const SizedBox(height: 32),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Display Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
              validator: (val) => val!.isEmpty ? 'Enter a name' : null,
            ),
            const SizedBox(height: 20),

            TextFormField(
              controller: _goalController,
              decoration: const InputDecoration(
                labelText: 'Primary Goal',
                hintText: 'e.g., Build a fintech MVP',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.flag),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _skillController,
                  decoration: InputDecoration(
                    labelText: 'Add Skill (Press Enter)',
                    prefixIcon: const Icon(Icons.psychology_outlined),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add_circle),
                      onPressed: () => _addSkill(_skillController.text),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  onFieldSubmitted: _addSkill,
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8.0,
                  children: _selectedSkills
                      .map(
                        (skill) => InputChip(
                          label: Text(skill),
                          onDeleted: () =>
                              setState(() => _selectedSkills.remove(skill)),
                          deleteIconColor: Colors.redAccent,
                          backgroundColor: Colors.deepPurple.withOpacity(0.05),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () => _onSavePressed(context),
              child: const Text(
                'Save & Continue',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSavePressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final profile = UserProfile(
        displayName: _nameController.text,
        email: "demo@butler.com",
        skills: _selectedSkills,
        skillLevels: {},
        goal: _goalController.text,
        availability: 'Available',
        timezone: 'UTC+1',
      );

      context.read<UserProfileBloc>().add(
        UserProfileEvent.createUserProfile(profile),
      );
    }
  }
}
