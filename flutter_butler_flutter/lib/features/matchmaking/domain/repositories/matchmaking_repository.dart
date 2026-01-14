import 'package:dartz/dartz.dart';
import 'package:flutter_butler_flutter/core/errors/failures.dart';
import 'package:flutter_butler_flutter/features/match_requests/domain/entities/match_request_entity.dart';
import '../entities/match_result_entity.dart';

abstract class MatchMakingRepository {
  Future<Either<Failure, List<MatchResult>>> findMatches({
    required int userId,
    required int hackathonId,
  });

  Future<Either<Failure, bool>> sendMatchRequest({
    required int fromId,
    required int hackathonId,
    required MatchResult matchResult,
  });

  Future<Either<Failure, bool>> respondToMatchRequest({
    required int requestId,
    required bool accept,
  });

  Future<Either<Failure, List<MatchRequestEntity>>> getMatchRequests({
    required int userId,
    required int hackathonId,
  });
}
