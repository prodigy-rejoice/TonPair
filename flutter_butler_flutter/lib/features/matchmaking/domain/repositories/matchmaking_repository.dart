import 'package:dartz/dartz.dart';
import 'package:flutter_butler_flutter/core/errors/failures.dart';
import '../entities/match_result_entity.dart';

abstract class MatchMakingRepository {
  Future<Either<Failure, List<MatchResult>>> findMatches({
    required int userId,
    required int hackathonId,
  });
}
