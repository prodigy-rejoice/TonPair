import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_butler_flutter/core/injector/injector.dart';
import 'package:flutter_butler_flutter/features/user_profile/presentation/register/bloc/user_profile_bloc.dart';
import 'features/matchmaking/presentation/bloc/match_making_bloc.dart';
import 'features/match_requests/presentation/bloc/match_requests_bloc.dart';
import 'features/user_profile/presentation/register/views/user_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => appInjector<UserProfileBloc>()),
        BlocProvider(create: (context) => appInjector<MatchMakingBloc>()),
        BlocProvider(create: (context) => appInjector<MatchRequestsBloc>()),
      ],
      child: MaterialApp(
        title: 'Hackathon Matchmaker',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green,
        ),
        home: UserProfileScreen(),
      ),
    );
  }
}
