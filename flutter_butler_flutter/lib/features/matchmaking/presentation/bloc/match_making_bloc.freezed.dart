// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_making_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchMakingEvent {

 int get userId; int get hackathonId;
/// Create a copy of MatchMakingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchMakingEventCopyWith<MatchMakingEvent> get copyWith => _$MatchMakingEventCopyWithImpl<MatchMakingEvent>(this as MatchMakingEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchMakingEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.hackathonId, hackathonId) || other.hackathonId == hackathonId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,hackathonId);

@override
String toString() {
  return 'MatchMakingEvent(userId: $userId, hackathonId: $hackathonId)';
}


}

/// @nodoc
abstract mixin class $MatchMakingEventCopyWith<$Res>  {
  factory $MatchMakingEventCopyWith(MatchMakingEvent value, $Res Function(MatchMakingEvent) _then) = _$MatchMakingEventCopyWithImpl;
@useResult
$Res call({
 int userId, int hackathonId
});




}
/// @nodoc
class _$MatchMakingEventCopyWithImpl<$Res>
    implements $MatchMakingEventCopyWith<$Res> {
  _$MatchMakingEventCopyWithImpl(this._self, this._then);

  final MatchMakingEvent _self;
  final $Res Function(MatchMakingEvent) _then;

/// Create a copy of MatchMakingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? hackathonId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,hackathonId: null == hackathonId ? _self.hackathonId : hackathonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchMakingEvent].
extension MatchMakingEventPatterns on MatchMakingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FindMatches value)?  findMatches,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FindMatches() when findMatches != null:
return findMatches(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FindMatches value)  findMatches,}){
final _that = this;
switch (_that) {
case FindMatches():
return findMatches(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FindMatches value)?  findMatches,}){
final _that = this;
switch (_that) {
case FindMatches() when findMatches != null:
return findMatches(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int userId,  int hackathonId)?  findMatches,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FindMatches() when findMatches != null:
return findMatches(_that.userId,_that.hackathonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int userId,  int hackathonId)  findMatches,}) {final _that = this;
switch (_that) {
case FindMatches():
return findMatches(_that.userId,_that.hackathonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int userId,  int hackathonId)?  findMatches,}) {final _that = this;
switch (_that) {
case FindMatches() when findMatches != null:
return findMatches(_that.userId,_that.hackathonId);case _:
  return null;

}
}

}

/// @nodoc


class FindMatches implements MatchMakingEvent {
  const FindMatches({required this.userId, required this.hackathonId});
  

@override final  int userId;
@override final  int hackathonId;

/// Create a copy of MatchMakingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindMatchesCopyWith<FindMatches> get copyWith => _$FindMatchesCopyWithImpl<FindMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindMatches&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.hackathonId, hackathonId) || other.hackathonId == hackathonId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,hackathonId);

@override
String toString() {
  return 'MatchMakingEvent.findMatches(userId: $userId, hackathonId: $hackathonId)';
}


}

/// @nodoc
abstract mixin class $FindMatchesCopyWith<$Res> implements $MatchMakingEventCopyWith<$Res> {
  factory $FindMatchesCopyWith(FindMatches value, $Res Function(FindMatches) _then) = _$FindMatchesCopyWithImpl;
@override @useResult
$Res call({
 int userId, int hackathonId
});




}
/// @nodoc
class _$FindMatchesCopyWithImpl<$Res>
    implements $FindMatchesCopyWith<$Res> {
  _$FindMatchesCopyWithImpl(this._self, this._then);

  final FindMatches _self;
  final $Res Function(FindMatches) _then;

/// Create a copy of MatchMakingEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? hackathonId = null,}) {
  return _then(FindMatches(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,hackathonId: null == hackathonId ? _self.hackathonId : hackathonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MatchMakingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchMakingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchMakingState()';
}


}

/// @nodoc
class $MatchMakingStateCopyWith<$Res>  {
$MatchMakingStateCopyWith(MatchMakingState _, $Res Function(MatchMakingState) __);
}


/// Adds pattern-matching-related methods to [MatchMakingState].
extension MatchMakingStatePatterns on MatchMakingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MatchResult> matchResults)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.matchResults);case _Failure() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MatchResult> matchResults)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.matchResults);case _Failure():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MatchResult> matchResults)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.matchResults);case _Failure() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MatchMakingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchMakingState.initial()';
}


}




/// @nodoc


class _Loading implements MatchMakingState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchMakingState.loading()';
}


}




/// @nodoc


class _Success implements MatchMakingState {
  const _Success(final  List<MatchResult> matchResults): _matchResults = matchResults;
  

 final  List<MatchResult> _matchResults;
 List<MatchResult> get matchResults {
  if (_matchResults is EqualUnmodifiableListView) return _matchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matchResults);
}


/// Create a copy of MatchMakingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._matchResults, _matchResults));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matchResults));

@override
String toString() {
  return 'MatchMakingState.success(matchResults: $matchResults)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $MatchMakingStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<MatchResult> matchResults
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of MatchMakingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchResults = null,}) {
  return _then(_Success(
null == matchResults ? _self._matchResults : matchResults // ignore: cast_nullable_to_non_nullable
as List<MatchResult>,
  ));
}


}

/// @nodoc


class _Failure implements MatchMakingState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of MatchMakingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatchMakingState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $MatchMakingStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of MatchMakingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
