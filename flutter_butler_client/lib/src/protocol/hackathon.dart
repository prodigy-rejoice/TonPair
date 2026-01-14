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

abstract class Hackathon implements _i1.SerializableModel {
  Hackathon._({
    this.id,
    required this.name,
    required this.code,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.ownerID,
  });

  factory Hackathon({
    int? id,
    required String name,
    required String code,
    required DateTime startDate,
    required DateTime endDate,
    required String description,
    required int ownerID,
  }) = _HackathonImpl;

  factory Hackathon.fromJson(Map<String, dynamic> jsonSerialization) {
    return Hackathon(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      startDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      endDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      description: jsonSerialization['description'] as String,
      ownerID: jsonSerialization['ownerID'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String code;

  DateTime startDate;

  DateTime endDate;

  String description;

  int ownerID;

  /// Returns a shallow copy of this [Hackathon]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Hackathon copyWith({
    int? id,
    String? name,
    String? code,
    DateTime? startDate,
    DateTime? endDate,
    String? description,
    int? ownerID,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Hackathon',
      if (id != null) 'id': id,
      'name': name,
      'code': code,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'description': description,
      'ownerID': ownerID,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _HackathonImpl extends Hackathon {
  _HackathonImpl({
    int? id,
    required String name,
    required String code,
    required DateTime startDate,
    required DateTime endDate,
    required String description,
    required int ownerID,
  }) : super._(
         id: id,
         name: name,
         code: code,
         startDate: startDate,
         endDate: endDate,
         description: description,
         ownerID: ownerID,
       );

  /// Returns a shallow copy of this [Hackathon]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Hackathon copyWith({
    Object? id = _Undefined,
    String? name,
    String? code,
    DateTime? startDate,
    DateTime? endDate,
    String? description,
    int? ownerID,
  }) {
    return Hackathon(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
      ownerID: ownerID ?? this.ownerID,
    );
  }
}
