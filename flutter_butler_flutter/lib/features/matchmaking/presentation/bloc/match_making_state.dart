part of 'match_making_bloc.dart';

@freezed
class MatchMakingState with _$MatchMakingState {
  const factory MatchMakingState.initial() = _Initial;
  const factory MatchMakingState.loading() = _Loading;
  const factory MatchMakingState.success(List<MatchResult> matchResults) = _Success;
  const factory MatchMakingState.error(String message) = _Failure;
}
