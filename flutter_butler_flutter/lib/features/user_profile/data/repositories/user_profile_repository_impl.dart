import 'package:dartz/dartz.dart';
import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;
import '../../../../core/errors/failures.dart';
import '../../domain/entities/user_profile/user_profile_entity.dart';
import '../../domain/repositories/user_profile_repository.dart';
import '../mappers/user_profile_mapper.dart';

class UserProfileRepositoryImpl implements UserProfileRepository {
  final sdk.Client client;

  UserProfileRepositoryImpl(this.client);

  @override
  Future<Either<Failure, UserProfile>> createProfile(
    UserProfile profile,
  ) async {
    try {
      final sdkModel = UserProfileMapper.toModel(profile);

      final result = await client.userProfile.createProfile(sdkModel);

      return Right(UserProfileMapper.toEntity(result));
    } catch (e, stackrace) {
      print('Error: $e at $stackrace');
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> getProfile(int id) async {
    try {
      final result = await client.userProfile.getProfile(id);
      if (result == null) {
        return Left(ServerFailure('Profile not found for user: $id'));
      }
      final entity = UserProfileMapper.toEntity(result);
      return Right(entity);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
