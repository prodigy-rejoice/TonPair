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

abstract class Team implements _i1.SerializableModel {
  Team._({
    this.id,
    required this.hackathonId,
    required this.memberIds,
    required this.createdAt,
  });

  factory Team({
    int? id,
    required int hackathonId,
    required List<int> memberIds,
    required DateTime createdAt,
  }) = _TeamImpl;

  factory Team.fromJson(Map<String, dynamic> jsonSerialization) {
    return Team(
      id: jsonSerialization['id'] as int?,
      hackathonId: jsonSerialization['hackathonId'] as int,
      memberIds: _i2.Protocol().deserialize<List<int>>(
        jsonSerialization['memberIds'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int hackathonId;

  List<int> memberIds;

  DateTime createdAt;

  /// Returns a shallow copy of this [Team]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Team copyWith({
    int? id,
    int? hackathonId,
    List<int>? memberIds,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Team',
      if (id != null) 'id': id,
      'hackathonId': hackathonId,
      'memberIds': memberIds.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TeamImpl extends Team {
  _TeamImpl({
    int? id,
    required int hackathonId,
    required List<int> memberIds,
    required DateTime createdAt,
  }) : super._(
         id: id,
         hackathonId: hackathonId,
         memberIds: memberIds,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Team]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Team copyWith({
    Object? id = _Undefined,
    int? hackathonId,
    List<int>? memberIds,
    DateTime? createdAt,
  }) {
    return Team(
      id: id is int? ? id : this.id,
      hackathonId: hackathonId ?? this.hackathonId,
      memberIds: memberIds ?? this.memberIds.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
