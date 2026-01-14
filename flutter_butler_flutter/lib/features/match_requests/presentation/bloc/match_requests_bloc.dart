
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_butler_flutter/features/match_requests/domain/entities/match_request_entity.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/repositories/matchmaking_repository.dart';

part 'match_requests_event.dart';
part 'match_requests_state.dart';
part 'match_requests_bloc.freezed.dart';

class MatchRequestsBloc extends Bloc<MatchRequestsEvent, MatchRequestsState> {
  final MatchMakingRepository repository;

  MatchRequestsBloc({required this.repository}) : super(const MatchRequestsState.initial()) {
    on<LoadRequests>(_onLoadRequests);
    on<AcceptRequest>(_onAcceptRequest);
    on<DeclineRequest>(_onDeclineRequest);
  }

  Future<void> _onLoadRequests(LoadRequests event, Emitter<MatchRequestsState> emit) async {
    emit(const MatchRequestsState.loading());
    final result = await repository.getMatchRequests(
      userId: event.userId,
      hackathonId: event.hackathonId,
    );
    result.fold(
      (failure) => emit(MatchRequestsState.error(failure.message)),
      (requests) => emit(MatchRequestsState.loaded(requests)),
    );
  }

  Future<void> _onAcceptRequest(AcceptRequest event, Emitter<MatchRequestsState> emit) async {
    // Optimistic update or reload? Let's just respond logic for now.
    // For simplicity, we might show loading or keep state, but let's try to reload after success.
    
    // Ideally we might want a separate status for 'responding' to allow UI to show a spinner on specific item.
    // preserving current state:
    final currentState = state;
    
    final result = await repository.respondToMatchRequest(
      requestId: event.requestId,
      accept: true,
    );
    
    result.fold(
      (failure) => emit(MatchRequestsState.error(failure.message)),
      (_) {
        // Reload requests to get updated status
         if (currentState is _Loaded) {
           // We could manually update the list locally for speed
           // For now, let's just trigger a reload if we had the context, 
           // but we don't have the userId/hackathonId easily here without storing it.
           // So I'll just remove the item locally if it was accepted? 
           // Or just do nothing and let the UI refresh?
           // Best pattern: add a field to state or reload.
           // I'll emit 'loaded' with updated list (filtering out the processed one or updating status)
           
           final updatedList = currentState.requests.map((r) {
             if (r.id == event.requestId) {
               return r.copyWith(status: 'Accepted');
             }
             return r;
           }).toList();
           emit(MatchRequestsState.loaded(updatedList));
         }
      },
    );
  }

  Future<void> _onDeclineRequest(DeclineRequest event, Emitter<MatchRequestsState> emit) async {
    final currentState = state;
    final result = await repository.respondToMatchRequest(
      requestId: event.requestId,
      accept: false,
    );

    result.fold(
      (failure) => emit(MatchRequestsState.error(failure.message)),
      (_) {
         if (currentState is _Loaded) {
           final updatedList = currentState.requests.map((r) {
             if (r.id == event.requestId) {
               return r.copyWith(status: 'Rejected');
             }
             return r;
           }).toList();
           emit(MatchRequestsState.loaded(updatedList));
         }
      },
    );
  }
}
