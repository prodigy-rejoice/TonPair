import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class MatchRequestEndpoint extends Endpoint {
  /// Send a match request from one user to another
  Future<MatchRequest> sendMatchRequest(
    Session session, {
    required int fromUserId,
    required int toUserId,
    required int hackathonId,
  }) async {
    if (fromUserId == toUserId) {
      throw Exception('You cannot send a match request to yourself.');
    }

    //Ensure users exist
    final fromUser = await UserProfile.db.findById(session, fromUserId);
    final toUser = await UserProfile.db.findById(session, toUserId);

    if (fromUser == null || toUser == null) {
      throw Exception('One or both users do not exist.');
    }

    //Prevent duplicate pending requests
    final existingRequest = await MatchRequest.db.findFirstRow(
      session,
      where: (r) =>
          r.fromUserId.equals(fromUserId) &
          r.toUserId.equals(toUserId) &
          r.hackathonId.equals(hackathonId) &
          r.status.equals(MatchStatus.pending),
    );

    if (existingRequest != null) {
      throw Exception('A pending match request already exists.');
    }

    final request = MatchRequest(
      fromUserId: fromUserId,
      toUserId: toUserId,
      hackathonId: hackathonId,
      status: MatchStatus.pending,
      createdAt: DateTime.now(),
    );

    await MatchRequest.db.insertRow(session, request);

    return request;
  }

  /// Respond to a match request from one user to another
  Future<MatchRequest> respondToMatchRequest(
    Session session, {
    required int requestId,
    required bool accept,
  }) async {
    final request = await MatchRequest.db.findById(session, requestId);

    if (request == null) {
      throw Exception('Match request not found.');
    }

    if (request.status != MatchStatus.pending) {
      throw Exception('Match request has already been handled.');
    }

    request.status = accept ? MatchStatus.accepted : MatchStatus.rejected;

    await MatchRequest.db.updateRow(session, request);

    if (accept) {
      final participants = await Participant.db.find(
        session,
        where: (p) =>
            p.hackathonId.equals(request.hackathonId) &
            p.userId.inSet({
              request.fromUserId,
              request.toUserId,
            }),
      );

      for (final participant in participants) {
        participant.status = ParticipantStatus.inTeam;
        await Participant.db.updateRow(session, participant);
      }
    }

    return request;
  }

  Future<List<MatchRequest>> getMatchRequests(
    Session session, {
    required int userId,
    required int hackathonId,
  }) async {
    return await MatchRequest.db.find(
      session,
      where: (request) =>
          (request.toUserId.equals(userId) |
              request.fromUserId.equals(userId)) &
          request.hackathonId.equals(hackathonId),
      orderBy: (request) => request.createdAt,
      orderDescending: true,
    );
  }
}
