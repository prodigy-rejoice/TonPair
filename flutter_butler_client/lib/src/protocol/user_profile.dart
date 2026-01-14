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

abstract class UserProfile implements _i1.SerializableModel {
  UserProfile._({
    this.id,
    required this.displayName,
    required this.email,
    required this.skills,
    required this.skillLevels,
    required this.goal,
    required this.availability,
    required this.timezone,
    this.createdAt,
  });

  factory UserProfile({
    int? id,
    required String displayName,
    required String email,
    required List<String> skills,
    required Map<String, String> skillLevels,
    required String goal,
    required String availability,
    required String timezone,
    DateTime? createdAt,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] as int?,
      displayName: jsonSerialization['displayName'] as String,
      email: jsonSerialization['email'] as String,
      skills: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['skills'],
      ),
      skillLevels: _i2.Protocol().deserialize<Map<String, String>>(
        jsonSerialization['skillLevels'],
      ),
      goal: jsonSerialization['goal'] as String,
      availability: jsonSerialization['availability'] as String,
      timezone: jsonSerialization['timezone'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String displayName;

  String email;

  List<String> skills;

  Map<String, String> skillLevels;

  String goal;

  String availability;

  String timezone;

  DateTime? createdAt;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserProfile copyWith({
    int? id,
    String? displayName,
    String? email,
    List<String>? skills,
    Map<String, String>? skillLevels,
    String? goal,
    String? availability,
    String? timezone,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserProfile',
      if (id != null) 'id': id,
      'displayName': displayName,
      'email': email,
      'skills': skills.toJson(),
      'skillLevels': skillLevels.toJson(),
      'goal': goal,
      'availability': availability,
      'timezone': timezone,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    int? id,
    required String displayName,
    required String email,
    required List<String> skills,
    required Map<String, String> skillLevels,
    required String goal,
    required String availability,
    required String timezone,
    DateTime? createdAt,
  }) : super._(
         id: id,
         displayName: displayName,
         email: email,
         skills: skills,
         skillLevels: skillLevels,
         goal: goal,
         availability: availability,
         timezone: timezone,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserProfile copyWith({
    Object? id = _Undefined,
    String? displayName,
    String? email,
    List<String>? skills,
    Map<String, String>? skillLevels,
    String? goal,
    String? availability,
    String? timezone,
    Object? createdAt = _Undefined,
  }) {
    return UserProfile(
      id: id is int? ? id : this.id,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      skills: skills ?? this.skills.map((e0) => e0).toList(),
      skillLevels:
          skillLevels ??
          this.skillLevels.map(
            (
              key0,
              value0,
            ) => MapEntry(
              key0,
              value0,
            ),
          ),
      goal: goal ?? this.goal,
      availability: availability ?? this.availability,
      timezone: timezone ?? this.timezone,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
