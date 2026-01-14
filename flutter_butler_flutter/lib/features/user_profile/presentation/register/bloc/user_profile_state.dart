part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.success(UserProfile profile) = _Success;
  const factory UserProfileState.failure(String message) = _Error;
}
