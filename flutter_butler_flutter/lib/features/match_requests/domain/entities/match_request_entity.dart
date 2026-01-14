import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_request_entity.freezed.dart';

@freezed
abstract class MatchRequestEntity with _$MatchRequestEntity {
  const MatchRequestEntity._();

  const factory MatchRequestEntity({
    required int id,
    required int hackathonId,
    required int fromId,
    required int toId,
    required String status,
    required DateTime createdAt,
  }) = _MatchRequestEntity;
}
