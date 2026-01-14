import 'package:flutter_butler_client/flutter_butler_client.dart';
import 'package:flutter_butler_flutter/config/app_config.dart';
import 'package:flutter_butler_flutter/features/matchmaking/data/repositories/match_making_repo.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/repositories/matchmaking_repository.dart';
import 'package:flutter_butler_flutter/features/matchmaking/presentation/bloc/match_making_bloc.dart';
import 'package:flutter_butler_flutter/features/user_profile/data/repositories/user_profile_repository_impl.dart';
import 'package:flutter_butler_flutter/features/user_profile/domain/repositories/user_profile_repository.dart';
import 'package:flutter_butler_flutter/features/user_profile/presentation/register/bloc/user_profile_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

final appInjector = GetIt.I;

Future<void> injector() async {
  const serverUrlFromEnv = String.fromEnvironment('SERVER_URL');
  final config = await AppConfig.loadConfig();

  final serverUrl = serverUrlFromEnv.isEmpty
      ? config.apiUrl ?? 'http://$localhost:8080/'
      : serverUrlFromEnv;

  final client = Client('http://10.0.2.2:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor()
    ..authSessionManager = FlutterAuthSessionManager();

  client.auth.initialize();

  appInjector.registerLazySingleton<Client>(() => client);

  appInjector.registerLazySingleton<UserProfileRepository>(
    () => UserProfileRepositoryImpl(appInjector()),
  );
  appInjector.registerLazySingleton<MatchMakingRepository>(
      () => MatchMakingRepositoryImpl(appInjector())
  );

  appInjector.registerFactory(
    () => UserProfileBloc(repository: appInjector()),
  );
  appInjector.registerFactory(
      () => MatchMakingBloc(repository: appInjector())
  );
}
