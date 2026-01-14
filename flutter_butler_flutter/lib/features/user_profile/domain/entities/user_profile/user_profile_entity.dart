import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    int? id,
    required String displayName,
    required String email,
    required List<String> skills,
    required Map<String, String> skillLevels,
    required String goal,
    required String availability,
    required String timezone,
    DateTime? createdAt,
  }) = _UserProfile;
}

