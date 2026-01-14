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
import 'match_request_status.dart' as _i2;

abstract class MatchRequest implements _i1.SerializableModel {
  MatchRequest._({
    this.id,
    required this.fromUserId,
    required this.toUserId,
    required this.status,
    required this.createdAt,
  });

  factory MatchRequest({
    int? id,
    required int fromUserId,
    required int toUserId,
    required _i2.MatchStatus status,
    required DateTime createdAt,
  }) = _MatchRequestImpl;

  factory MatchRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return MatchRequest(
      id: jsonSerialization['id'] as int?,
      fromUserId: jsonSerialization['fromUserId'] as int,
      toUserId: jsonSerialization['toUserId'] as int,
      status: _i2.MatchStatus.fromJson((jsonSerialization['status'] as String)),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int fromUserId;

  int toUserId;

  _i2.MatchStatus status;

  DateTime createdAt;

  /// Returns a shallow copy of this [MatchRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MatchRequest copyWith({
    int? id,
    int? fromUserId,
    int? toUserId,
    _i2.MatchStatus? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MatchRequest',
      if (id != null) 'id': id,
      'fromUserId': fromUserId,
      'toUserId': toUserId,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MatchRequestImpl extends MatchRequest {
  _MatchRequestImpl({
    int? id,
    required int fromUserId,
    required int toUserId,
    required _i2.MatchStatus status,
    required DateTime createdAt,
  }) : super._(
         id: id,
         fromUserId: fromUserId,
         toUserId: toUserId,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [MatchRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MatchRequest copyWith({
    Object? id = _Undefined,
    int? fromUserId,
    int? toUserId,
    _i2.MatchStatus? status,
    DateTime? createdAt,
  }) {
    return MatchRequest(
      id: id is int? ? id : this.id,
      fromUserId: fromUserId ?? this.fromUserId,
      toUserId: toUserId ?? this.toUserId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
