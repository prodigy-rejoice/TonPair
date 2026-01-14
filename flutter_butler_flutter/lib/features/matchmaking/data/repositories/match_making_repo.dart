import 'package:dartz/dartz.dart';
import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;
import 'package:flutter_butler_flutter/features/match_requests/data/mappers/match_request_mapper.dart';
import 'package:flutter_butler_flutter/features/match_requests/domain/entities/match_request_entity.dart';
import 'package:flutter_butler_flutter/features/matchmaking/domain/repositories/matchmaking_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/match_result_entity.dart';
import '../mappers/matchmaking_mapper.dart';

class MatchMakingRepositoryImpl implements MatchMakingRepository {
  final sdk.Client client;

  MatchMakingRepositoryImpl(this.client);

  @override
  Future<Either<Failure, List<MatchResult>>> findMatches({
    required int userId,
    required int hackathonId,
  }) async {
    try {
      final results = await client.matchmaking.findMatches(
        userId: userId,
        hackathonId: hackathonId,
      );

      final entities = MatchMakingMapper.toEntityList(results);

      return Right(entities);
    } catch (e, stack) {
      print('Error: $e at $stack');
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MatchRequestEntity>>> getMatchRequests({
    required int userId,
    required int hackathonId,
  }) async {
    try {
      final results = await client.matchRequest.getMatchRequests(
        userId: userId,
        hackathonId: hackathonId,
      );
      final entities = MatchRequestMapper.toEntityList(results);
      return Right(entities);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> respondToMatchRequest({
    required int requestId,
    required bool accept,
  }) async {
    try {
      await client.matchRequest.respondToMatchRequest(
        requestId: requestId,
        accept: accept,
      );
      return Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> sendMatchRequest({
    required int fromId,
    required int hackathonId,
    required MatchResult matchResult,
  }) async {
    try {
      final result = await client.matchRequest.sendMatchRequest(
        fromUserId: fromId,
        toUserId: matchResult.id,
        hackathonId: 1,
      );
      return Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
