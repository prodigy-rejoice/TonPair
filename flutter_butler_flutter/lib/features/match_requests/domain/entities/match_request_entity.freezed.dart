// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchRequestEntity {

 int get id; int get hackathonId; int get fromId; int get toId; String get status; DateTime get createdAt;
/// Create a copy of MatchRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRequestEntityCopyWith<MatchRequestEntity> get copyWith => _$MatchRequestEntityCopyWithImpl<MatchRequestEntity>(this as MatchRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRequestEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.hackathonId, hackathonId) || other.hackathonId == hackathonId)&&(identical(other.fromId, fromId) || other.fromId == fromId)&&(identical(other.toId, toId) || other.toId == toId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,hackathonId,fromId,toId,status,createdAt);

@override
String toString() {
  return 'MatchRequestEntity(id: $id, hackathonId: $hackathonId, fromId: $fromId, toId: $toId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MatchRequestEntityCopyWith<$Res>  {
  factory $MatchRequestEntityCopyWith(MatchRequestEntity value, $Res Function(MatchRequestEntity) _then) = _$MatchRequestEntityCopyWithImpl;
@useResult
$Res call({
 int id, int hackathonId, int fromId, int toId, String status, DateTime createdAt
});




}
/// @nodoc
class _$MatchRequestEntityCopyWithImpl<$Res>
    implements $MatchRequestEntityCopyWith<$Res> {
  _$MatchRequestEntityCopyWithImpl(this._self, this._then);

  final MatchRequestEntity _self;
  final $Res Function(MatchRequestEntity) _then;

/// Create a copy of MatchRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? hackathonId = null,Object? fromId = null,Object? toId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hackathonId: null == hackathonId ? _self.hackathonId : hackathonId // ignore: cast_nullable_to_non_nullable
as int,fromId: null == fromId ? _self.fromId : fromId // ignore: cast_nullable_to_non_nullable
as int,toId: null == toId ? _self.toId : toId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchRequestEntity].
extension MatchRequestEntityPatterns on MatchRequestEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRequestEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _MatchRequestEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRequestEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int hackathonId,  int fromId,  int toId,  String status,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRequestEntity() when $default != null:
return $default(_that.id,_that.hackathonId,_that.fromId,_that.toId,_that.status,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int hackathonId,  int fromId,  int toId,  String status,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MatchRequestEntity():
return $default(_that.id,_that.hackathonId,_that.fromId,_that.toId,_that.status,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int hackathonId,  int fromId,  int toId,  String status,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchRequestEntity() when $default != null:
return $default(_that.id,_that.hackathonId,_that.fromId,_that.toId,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MatchRequestEntity extends MatchRequestEntity {
  const _MatchRequestEntity({required this.id, required this.hackathonId, required this.fromId, required this.toId, required this.status, required this.createdAt}): super._();
  

@override final  int id;
@override final  int hackathonId;
@override final  int fromId;
@override final  int toId;
@override final  String status;
@override final  DateTime createdAt;

/// Create a copy of MatchRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRequestEntityCopyWith<_MatchRequestEntity> get copyWith => __$MatchRequestEntityCopyWithImpl<_MatchRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRequestEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.hackathonId, hackathonId) || other.hackathonId == hackathonId)&&(identical(other.fromId, fromId) || other.fromId == fromId)&&(identical(other.toId, toId) || other.toId == toId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,hackathonId,fromId,toId,status,createdAt);

@override
String toString() {
  return 'MatchRequestEntity(id: $id, hackathonId: $hackathonId, fromId: $fromId, toId: $toId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MatchRequestEntityCopyWith<$Res> implements $MatchRequestEntityCopyWith<$Res> {
  factory _$MatchRequestEntityCopyWith(_MatchRequestEntity value, $Res Function(_MatchRequestEntity) _then) = __$MatchRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int hackathonId, int fromId, int toId, String status, DateTime createdAt
});




}
/// @nodoc
class __$MatchRequestEntityCopyWithImpl<$Res>
    implements _$MatchRequestEntityCopyWith<$Res> {
  __$MatchRequestEntityCopyWithImpl(this._self, this._then);

  final _MatchRequestEntity _self;
  final $Res Function(_MatchRequestEntity) _then;

/// Create a copy of MatchRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? hackathonId = null,Object? fromId = null,Object? toId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_MatchRequestEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hackathonId: null == hackathonId ? _self.hackathonId : hackathonId // ignore: cast_nullable_to_non_nullable
as int,fromId: null == fromId ? _self.fromId : fromId // ignore: cast_nullable_to_non_nullable
as int,toId: null == toId ? _self.toId : toId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
