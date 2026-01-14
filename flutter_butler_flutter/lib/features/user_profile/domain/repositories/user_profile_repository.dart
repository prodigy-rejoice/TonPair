import 'package:dartz/dartz.dart';
import 'package:flutter_butler_flutter/core/errors/failures.dart';
import 'package:flutter_butler_flutter/features/user_profile/domain/entities/user_profile/user_profile_entity.dart';

abstract class UserProfileRepository {
  Future<Either<Failure, UserProfile>> createProfile(UserProfile profile);
  Future<Either<Failure, UserProfile>> getProfile(int id);
}
