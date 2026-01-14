/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:flutter_butler_client/src/protocol/protocol.dart' as _i2;

abstract class MatchResult implements _i1.SerializableModel {
  MatchResult._({
    required this.userId,
    required this.score,
    required this.reasons,
  });

  factory MatchResult({
    required int userId,
    required double score,
    required List<String> reasons,
  }) = _MatchResultImpl;

  factory MatchResult.fromJson(Map<String, dynamic> jsonSerialization) {
    return MatchResult(
      userId: jsonSerialization['userId'] as int,
      score: (jsonSerialization['score'] as num).toDouble(),
      reasons: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['reasons'],
      ),
    );
  }

  int userId;

  double score;

  List<String> reasons;

  /// Returns a shallow copy of this [MatchResult]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MatchResult copyWith({
    int? userId,
    double? score,
    List<String>? reasons,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MatchResult',
      'userId': userId,
      'score': score,
      'reasons': reasons.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _MatchResultImpl extends MatchResult {
  _MatchResultImpl({
    required int userId,
    required double score,
    required List<String> reasons,
  }) : super._(
         userId: userId,
         score: score,
         reasons: reasons,
       );

  /// Returns a shallow copy of this [MatchResult]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MatchResult copyWith({
    int? userId,
    double? score,
    List<String>? reasons,
  }) {
    return MatchResult(
      userId: userId ?? this.userId,
      score: score ?? this.score,
      reasons: reasons ?? this.reasons.map((e0) => e0).toList(),
    );
  }
}
