import 'package:flutter_butler_client/flutter_butler_client.dart' as sdk;
import 'package:flutter_butler_flutter/features/match_requests/domain/entities/match_request_entity.dart';

class MatchRequestMapper {
  static MatchRequestEntity toEntity(sdk.MatchRequest model) {
    return MatchRequestEntity(
      id: model.id!,
      hackathonId: model.hackathonId,
      fromId: model.fromUserId,
      toId: model.toUserId,
      status: model.status.name,
      createdAt: model.createdAt,
    );
  }

  static List<MatchRequestEntity> toEntityList(List<sdk.MatchRequest> models) {
    return models.map((model) => toEntity(model)).toList();
  }
}
