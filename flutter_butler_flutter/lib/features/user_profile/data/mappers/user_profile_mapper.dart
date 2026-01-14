import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;
import 'package:flutter_butler_flutter/features/user_profile/domain/entities/user_profile/user_profile_entity.dart';

class UserProfileMapper {
  /// Converts a [sdk.UserProfile] to a [UserProfile].
  static UserProfile toEntity(sdk.UserProfile model) {
    return UserProfile(
      id: model.id,
      displayName: model.displayName,
      email: model.email,
      skills: model.skills,
      skillLevels: model.skillLevels,
      goal: model.goal,
      availability: model.availability,
      timezone: model.timezone,
      createdAt: model.createdAt,
    );
  }

  /// Converts a Domain Entity (from the UI) back to a Serverpod SDK model (to send to the backend)
  static sdk.UserProfile toModel(UserProfile entity) {
    return sdk.UserProfile(
      id: entity.id,
      displayName: entity.displayName,
      email: entity.email,
      skills: entity.skills,
      skillLevels: entity.skillLevels,
      goal: entity.goal,
      availability: entity.availability,
      timezone: entity.timezone,
      createdAt: entity.createdAt,
    );
  }
}
