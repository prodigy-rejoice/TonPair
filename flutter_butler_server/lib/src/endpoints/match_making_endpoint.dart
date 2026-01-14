import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class MatchmakingEndpoint extends Endpoint {
  /// Find a match for a user in a hackathon
  Future<List<MatchResult>> findMatches(
    Session session, {
    required int userId,
    required int hackathonId,
  }) async {
    final user = await UserProfile.db.findById(session, userId);
    if (user == null) return [];

    final participants = await Participant.db.find(
      session,
      where: (p) =>
          p.hackathonId.equals(hackathonId) &
          p.status.equals(ParticipantStatus.searching),
    );

    final results = <MatchResult>[];

    for (final participant in participants) {
      if (participant.userId == userId) continue;

      final candidate = await UserProfile.db.findById(
        session,
        participant.userId,
      );
      if (candidate == null) continue;

      final scoreData = _scoreMatch(user, candidate);

      if (scoreData.score > 0) {
        results.add(
          MatchResult(
            userId: candidate.id!,
            score: scoreData.score,
            reasons: scoreData.reasons,
          ),
        );
      }
    }

    results.sort((a, b) => b.score.compareTo(a.score));
    return results;
  }

  /// Score a match between two users
  _MatchScore _scoreMatch(UserProfile a, UserProfile b) {
    double score = 0;
    final reasons = <String>[];

    for (final skill in a.skills) {
      if (!b.skills.contains(skill)) {
        score += 10;
        reasons.add('Complements your $skill skill');
      }
    }

    if (a.goal == b.goal) {
      score += 5;
      reasons.add('Shares the same goal');
    }
    return _MatchScore(score, reasons);
  }
}

/// Internal class to hold the score and reasons for a match
class _MatchScore {
  final double score;
  final List<String> reasons;

  _MatchScore(this.score, this.reasons);
}
