import '../../domain/entities/match_result_entity.dart';
import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;

class MatchMakingMapper {
  static MatchResult toEntity(sdk.MatchResult model) {
    return MatchResult(
      id: model.userId,
      score: model.score,
      reasons: model.reasons,
    );
  }

  static List<MatchResult> toEntityList(List<sdk.MatchResult> models) {
    return models.map((model) => toEntity(model)).toList();
  }
}
