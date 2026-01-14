import 'package:bloc/bloc.dart';
import 'package:flutter_butler_flutter/features/user_profile/domain/entities/user_profile/user_profile_entity.dart';
import 'package:flutter_butler_flutter/features/user_profile/domain/repositories/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserProfileRepository repository;

  UserProfileBloc({required this.repository})
    : super(const UserProfileState.initial()) {
    on<CreateUserProfile>((event, emit) async {
      emit(const UserProfileState.loading());
      final result = await repository.createProfile(event.profile);
      result.fold(
        (failure) => emit(UserProfileState.failure(failure.message)),

        (profile) => emit(UserProfileState.success(profile)),
      );
    });

    on<GetUserProfile>((event, emit) async {
      emit(const UserProfileState.loading());
      final result = await repository.getProfile(event.id);
      result.fold(
        (failure) => emit(UserProfileState.failure(failure.message)),
        (profile) => emit(UserProfileState.success(profile)),
      );
    });
  }
}
