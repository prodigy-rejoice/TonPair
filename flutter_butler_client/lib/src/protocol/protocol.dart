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
import 'chat_message.dart' as _i2;
import 'greetings/greeting.dart' as _i3;
import 'hackathon.dart' as _i4;
import 'mach_result.dart' as _i5;
import 'match_request.dart' as _i6;
import 'match_request_status.dart' as _i7;
import 'participant.dart' as _i8;
import 'participant_status.dart' as _i9;
import 'team.dart' as _i10;
import 'user_profile.dart' as _i11;
import 'package:flutter_butler_client/src/protocol/mach_result.dart' as _i12;
import 'package:flutter_butler_client/src/protocol/match_request.dart' as _i13;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i14;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i15;
export 'chat_message.dart';
export 'greetings/greeting.dart';
export 'hackathon.dart';
export 'mach_result.dart';
export 'match_request.dart';
export 'match_request_status.dart';
export 'participant.dart';
export 'participant_status.dart';
export 'team.dart';
export 'user_profile.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.ChatMessage) {
      return _i2.ChatMessage.fromJson(data) as T;
    }
    if (t == _i3.Greeting) {
      return _i3.Greeting.fromJson(data) as T;
    }
    if (t == _i4.Hackathon) {
      return _i4.Hackathon.fromJson(data) as T;
    }
    if (t == _i5.MatchResult) {
      return _i5.MatchResult.fromJson(data) as T;
    }
    if (t == _i6.MatchRequest) {
      return _i6.MatchRequest.fromJson(data) as T;
    }
    if (t == _i7.MatchStatus) {
      return _i7.MatchStatus.fromJson(data) as T;
    }
    if (t == _i8.Participant) {
      return _i8.Participant.fromJson(data) as T;
    }
    if (t == _i9.ParticipantStatus) {
      return _i9.ParticipantStatus.fromJson(data) as T;
    }
    if (t == _i10.Team) {
      return _i10.Team.fromJson(data) as T;
    }
    if (t == _i11.UserProfile) {
      return _i11.UserProfile.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.ChatMessage?>()) {
      return (data != null ? _i2.ChatMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Greeting?>()) {
      return (data != null ? _i3.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Hackathon?>()) {
      return (data != null ? _i4.Hackathon.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.MatchResult?>()) {
      return (data != null ? _i5.MatchResult.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.MatchRequest?>()) {
      return (data != null ? _i6.MatchRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.MatchStatus?>()) {
      return (data != null ? _i7.MatchStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Participant?>()) {
      return (data != null ? _i8.Participant.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.ParticipantStatus?>()) {
      return (data != null ? _i9.ParticipantStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Team?>()) {
      return (data != null ? _i10.Team.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.UserProfile?>()) {
      return (data != null ? _i11.UserProfile.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as T;
    }
    if (t == Map<String, String>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<String>(v)),
          )
          as T;
    }
    if (t == List<_i12.MatchResult>) {
      return (data as List)
              .map((e) => deserialize<_i12.MatchResult>(e))
              .toList()
          as T;
    }
    if (t == List<_i13.MatchRequest>) {
      return (data as List)
              .map((e) => deserialize<_i13.MatchRequest>(e))
              .toList()
          as T;
    }
    try {
      return _i14.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i15.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.ChatMessage => 'ChatMessage',
      _i3.Greeting => 'Greeting',
      _i4.Hackathon => 'Hackathon',
      _i5.MatchResult => 'MatchResult',
      _i6.MatchRequest => 'MatchRequest',
      _i7.MatchStatus => 'MatchStatus',
      _i8.Participant => 'Participant',
      _i9.ParticipantStatus => 'ParticipantStatus',
      _i10.Team => 'Team',
      _i11.UserProfile => 'UserProfile',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'flutter_butler.',
        '',
      );
    }

    switch (data) {
      case _i2.ChatMessage():
        return 'ChatMessage';
      case _i3.Greeting():
        return 'Greeting';
      case _i4.Hackathon():
        return 'Hackathon';
      case _i5.MatchResult():
        return 'MatchResult';
      case _i6.MatchRequest():
        return 'MatchRequest';
      case _i7.MatchStatus():
        return 'MatchStatus';
      case _i8.Participant():
        return 'Participant';
      case _i9.ParticipantStatus():
        return 'ParticipantStatus';
      case _i10.Team():
        return 'Team';
      case _i11.UserProfile():
        return 'UserProfile';
    }
    className = _i14.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i15.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'ChatMessage') {
      return deserialize<_i2.ChatMessage>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i3.Greeting>(data['data']);
    }
    if (dataClassName == 'Hackathon') {
      return deserialize<_i4.Hackathon>(data['data']);
    }
    if (dataClassName == 'MatchResult') {
      return deserialize<_i5.MatchResult>(data['data']);
    }
    if (dataClassName == 'MatchRequest') {
      return deserialize<_i6.MatchRequest>(data['data']);
    }
    if (dataClassName == 'MatchStatus') {
      return deserialize<_i7.MatchStatus>(data['data']);
    }
    if (dataClassName == 'Participant') {
      return deserialize<_i8.Participant>(data['data']);
    }
    if (dataClassName == 'ParticipantStatus') {
      return deserialize<_i9.ParticipantStatus>(data['data']);
    }
    if (dataClassName == 'Team') {
      return deserialize<_i10.Team>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i11.UserProfile>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i14.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i15.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
