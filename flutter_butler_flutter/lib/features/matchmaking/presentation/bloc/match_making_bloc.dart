import 'package:bloc/bloc.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/entities/match_result_entity.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/repositories/matchmaking_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_making_event.dart';
part 'match_making_state.dart';
part 'match_making_bloc.freezed.dart';

class MatchMakingBloc extends Bloc<MatchMakingEvent, MatchMakingState> {
  final MatchMakingRepository repository;
  MatchMakingBloc({required this.repository})
    : super(const MatchMakingState.initial()) {
    on<FindMatches>((event, emit) async {
      final result = await repository.findMatches(
        userId: event.userId,
        hackathonId: event.hackathonId,
      );
      result.fold(
        (failure) => emit(MatchMakingState.error(failure.message)),
        (matchResults) => emit(MatchMakingState.success(matchResults)),
      );
    });
  }
}
