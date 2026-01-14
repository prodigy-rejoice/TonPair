
part of 'match_requests_bloc.dart';

@freezed
abstract class MatchRequestsState with _$MatchRequestsState {
  const factory MatchRequestsState.initial() = _Initial;
  const factory MatchRequestsState.loading() = _Loading;
  const factory MatchRequestsState.loaded(List<MatchRequestEntity> requests) = _Loaded;
  const factory MatchRequestsState.maxrequestsLoaded(List<MatchRequestEntity> requests) = _RequestsLoaded;
  const factory MatchRequestsState.error(String message) = _Error;
}
