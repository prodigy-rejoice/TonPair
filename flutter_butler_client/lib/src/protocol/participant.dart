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
import 'participant_status.dart' as _i2;

abstract class Participant implements _i1.SerializableModel {
  Participant._({
    this.id,
    required this.userId,
    required this.hackathonId,
    required this.status,
  });

  factory Participant({
    int? id,
    required int userId,
    required int hackathonId,
    required _i2.ParticipantStatus status,
  }) = _ParticipantImpl;

  factory Participant.fromJson(Map<String, dynamic> jsonSerialization) {
    return Participant(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      hackathonId: jsonSerialization['hackathonId'] as int,
      status: _i2.ParticipantStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int hackathonId;

  _i2.ParticipantStatus status;

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Participant copyWith({
    int? id,
    int? userId,
    int? hackathonId,
    _i2.ParticipantStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Participant',
      if (id != null) 'id': id,
      'userId': userId,
      'hackathonId': hackathonId,
      'status': status.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ParticipantImpl extends Participant {
  _ParticipantImpl({
    int? id,
    required int userId,
    required int hackathonId,
    required _i2.ParticipantStatus status,
  }) : super._(
         id: id,
         userId: userId,
         hackathonId: hackathonId,
         status: status,
       );

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Participant copyWith({
    Object? id = _Undefined,
    int? userId,
    int? hackathonId,
    _i2.ParticipantStatus? status,
  }) {
    return Participant(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      hackathonId: hackathonId ?? this.hackathonId,
      status: status ?? this.status,
    );
  }
}
