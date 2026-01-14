part of 'match_making_bloc.dart';

@freezed
abstract class MatchMakingEvent with _$MatchMakingEvent {
  const factory MatchMakingEvent.findMatches({
    required int userId,
    required int hackathonId,
  }) = FindMatches;
}
