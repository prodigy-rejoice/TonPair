import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_result_entity.freezed.dart';

@freezed
abstract class MatchResult with _$MatchResult {

  const MatchResult._();

  const factory MatchResult({
    required int id,
    required double score,
    required List<String> reasons,
    // int? requestId,
  }) = _MatchResult;
}