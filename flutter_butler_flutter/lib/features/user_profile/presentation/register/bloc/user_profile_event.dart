part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.createUserProfile(UserProfile profile) = CreateUserProfile;
  const factory UserProfileEvent.getUserProfile(int id) = GetUserProfile;
}
