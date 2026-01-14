import 'package:dartz/dartz.dart';
import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;
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
}
