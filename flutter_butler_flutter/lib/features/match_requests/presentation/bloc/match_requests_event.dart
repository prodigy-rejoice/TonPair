
part of 'match_requests_bloc.dart';

@freezed
abstract class MatchRequestsEvent with _$MatchRequestsEvent {
  const factory MatchRequestsEvent.loadRequests({
    required int userId,
    required int hackathonId,
  }) = LoadRequests;

  const factory MatchRequestsEvent.acceptRequest({
    required int requestId,
  }) = AcceptRequest;

  const factory MatchRequestsEvent.declineRequest({
    required int requestId,
  }) = DeclineRequest;
}
