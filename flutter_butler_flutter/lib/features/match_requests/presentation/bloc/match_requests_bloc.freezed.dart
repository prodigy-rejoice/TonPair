// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_requests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchRequestsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRequestsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchRequestsEvent()';
}


}

/// @nodoc
class $MatchRequestsEventCopyWith<$Res>  {
$MatchRequestsEventCopyWith(MatchRequestsEvent _, $Res Function(MatchRequestsEvent) __);
}


/// Adds pattern-matching-related methods to [MatchRequestsEvent].
extension MatchRequestsEventPatterns on MatchRequestsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadRequests value)?  loadRequests,TResult Function( AcceptRequest value)?  acceptRequest,TResult Function( DeclineRequest value)?  declineRequest,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadRequests() when loadRequests != null:
return loadRequests(_that);case AcceptRequest() when acceptRequest != null:
return acceptRequest(_that);case DeclineRequest() when declineRequest != null:
return declineRequest(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadRequests value)  loadRequests,required TResult Function( AcceptRequest value)  acceptRequest,required TResult Function( DeclineRequest value)  declineRequest,}){
final _that = this;
switch (_that) {
case LoadRequests():
return loadRequests(_that);case AcceptRequest():
return acceptRequest(_that);case DeclineRequest():
return declineRequest(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadRequests value)?  loadRequests,TResult? Function( AcceptRequest value)?  acceptRequest,TResult? Function( DeclineRequest value)?  declineRequest,}){
final _that = this;
switch (_that) {
case LoadRequests() when loadRequests != null:
return loadRequests(_that);case AcceptRequest() when acceptRequest != null:
return acceptRequest(_that);case DeclineRequest() when declineRequest != null:
return declineRequest(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int userId,  int hackathonId)?  loadRequests,TResult Function( int requestId)?  acceptRequest,TResult Function( int requestId)?  declineRequest,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadRequests() when loadRequests != null:
return loadRequests(_that.userId,_that.hackathonId);case AcceptRequest() when acceptRequest != null:
return acceptRequest(_that.requestId);case DeclineRequest() when declineRequest != null:
return declineRequest(_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int userId,  int hackathonId)  loadRequests,required TResult Function( int requestId)  acceptRequest,required TResult Function( int requestId)  declineRequest,}) {final _that = this;
switch (_that) {
case LoadRequests():
return loadRequests(_that.userId,_that.hackathonId);case AcceptRequest():
return acceptRequest(_that.requestId);case DeclineRequest():
return declineRequest(_that.requestId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int userId,  int hackathonId)?  loadRequests,TResult? Function( int requestId)?  acceptRequest,TResult? Function( int requestId)?  declineRequest,}) {final _that = this;
switch (_that) {
case LoadRequests() when loadRequests != null:
return loadRequests(_that.userId,_that.hackathonId);case AcceptRequest() when acceptRequest != null:
return acceptRequest(_that.requestId);case DeclineRequest() when declineRequest != null:
return declineRequest(_that.requestId);case _:
  return null;

}
}

}

/// @nodoc


class LoadRequests implements MatchRequestsEvent {
  const LoadRequests({required this.userId, required this.hackathonId});
  

 final  int userId;
 final  int hackathonId;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRequestsCopyWith<LoadRequests> get copyWith => _$LoadRequestsCopyWithImpl<LoadRequests>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRequests&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.hackathonId, hackathonId) || other.hackathonId == hackathonId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,hackathonId);

@override
String toString() {
  return 'MatchRequestsEvent.loadRequests(userId: $userId, hackathonId: $hackathonId)';
}


}

/// @nodoc
abstract mixin class $LoadRequestsCopyWith<$Res> implements $MatchRequestsEventCopyWith<$Res> {
  factory $LoadRequestsCopyWith(LoadRequests value, $Res Function(LoadRequests) _then) = _$LoadRequestsCopyWithImpl;
@useResult
$Res call({
 int userId, int hackathonId
});




}
/// @nodoc
class _$LoadRequestsCopyWithImpl<$Res>
    implements $LoadRequestsCopyWith<$Res> {
  _$LoadRequestsCopyWithImpl(this._self, this._then);

  final LoadRequests _self;
  final $Res Function(LoadRequests) _then;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? hackathonId = null,}) {
  return _then(LoadRequests(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,hackathonId: null == hackathonId ? _self.hackathonId : hackathonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AcceptRequest implements MatchRequestsEvent {
  const AcceptRequest({required this.requestId});
  

 final  int requestId;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptRequestCopyWith<AcceptRequest> get copyWith => _$AcceptRequestCopyWithImpl<AcceptRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptRequest&&(identical(other.requestId, requestId) || other.requestId == requestId));
}


@override
int get hashCode => Object.hash(runtimeType,requestId);

@override
String toString() {
  return 'MatchRequestsEvent.acceptRequest(requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $AcceptRequestCopyWith<$Res> implements $MatchRequestsEventCopyWith<$Res> {
  factory $AcceptRequestCopyWith(AcceptRequest value, $Res Function(AcceptRequest) _then) = _$AcceptRequestCopyWithImpl;
@useResult
$Res call({
 int requestId
});




}
/// @nodoc
class _$AcceptRequestCopyWithImpl<$Res>
    implements $AcceptRequestCopyWith<$Res> {
  _$AcceptRequestCopyWithImpl(this._self, this._then);

  final AcceptRequest _self;
  final $Res Function(AcceptRequest) _then;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestId = null,}) {
  return _then(AcceptRequest(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DeclineRequest implements MatchRequestsEvent {
  const DeclineRequest({required this.requestId});
  

 final  int requestId;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeclineRequestCopyWith<DeclineRequest> get copyWith => _$DeclineRequestCopyWithImpl<DeclineRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeclineRequest&&(identical(other.requestId, requestId) || other.requestId == requestId));
}


@override
int get hashCode => Object.hash(runtimeType,requestId);

@override
String toString() {
  return 'MatchRequestsEvent.declineRequest(requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $DeclineRequestCopyWith<$Res> implements $MatchRequestsEventCopyWith<$Res> {
  factory $DeclineRequestCopyWith(DeclineRequest value, $Res Function(DeclineRequest) _then) = _$DeclineRequestCopyWithImpl;
@useResult
$Res call({
 int requestId
});




}
/// @nodoc
class _$DeclineRequestCopyWithImpl<$Res>
    implements $DeclineRequestCopyWith<$Res> {
  _$DeclineRequestCopyWithImpl(this._self, this._then);

  final DeclineRequest _self;
  final $Res Function(DeclineRequest) _then;

/// Create a copy of MatchRequestsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestId = null,}) {
  return _then(DeclineRequest(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MatchRequestsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRequestsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchRequestsState()';
}


}

/// @nodoc
class $MatchRequestsStateCopyWith<$Res>  {
$MatchRequestsStateCopyWith(MatchRequestsState _, $Res Function(MatchRequestsState) __);
}


/// Adds pattern-matching-related methods to [MatchRequestsState].
extension MatchRequestsStatePatterns on MatchRequestsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _RequestsLoaded value)?  maxrequestsLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _RequestsLoaded() when maxrequestsLoaded != null:
return maxrequestsLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _RequestsLoaded value)  maxrequestsLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _RequestsLoaded():
return maxrequestsLoaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _RequestsLoaded value)?  maxrequestsLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _RequestsLoaded() when maxrequestsLoaded != null:
return maxrequestsLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MatchRequestEntity> requests)?  loaded,TResult Function( List<MatchRequestEntity> requests)?  maxrequestsLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.requests);case _RequestsLoaded() when maxrequestsLoaded != null:
return maxrequestsLoaded(_that.requests);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MatchRequestEntity> requests)  loaded,required TResult Function( List<MatchRequestEntity> requests)  maxrequestsLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.requests);case _RequestsLoaded():
return maxrequestsLoaded(_that.requests);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MatchRequestEntity> requests)?  loaded,TResult? Function( List<MatchRequestEntity> requests)?  maxrequestsLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.requests);case _RequestsLoaded() when maxrequestsLoaded != null:
return maxrequestsLoaded(_that.requests);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MatchRequestsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchRequestsState.initial()';
}


}




/// @nodoc


class _Loading implements MatchRequestsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchRequestsState.loading()';
}


}




/// @nodoc


class _Loaded implements MatchRequestsState {
  const _Loaded(final  List<MatchRequestEntity> requests): _requests = requests;
  

 final  List<MatchRequestEntity> _requests;
 List<MatchRequestEntity> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'MatchRequestsState.loaded(requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MatchRequestsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<MatchRequestEntity> requests
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requests = null,}) {
  return _then(_Loaded(
null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<MatchRequestEntity>,
  ));
}


}

/// @nodoc


class _RequestsLoaded implements MatchRequestsState {
  const _RequestsLoaded(final  List<MatchRequestEntity> requests): _requests = requests;
  

 final  List<MatchRequestEntity> _requests;
 List<MatchRequestEntity> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestsLoadedCopyWith<_RequestsLoaded> get copyWith => __$RequestsLoadedCopyWithImpl<_RequestsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestsLoaded&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'MatchRequestsState.maxrequestsLoaded(requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$RequestsLoadedCopyWith<$Res> implements $MatchRequestsStateCopyWith<$Res> {
  factory _$RequestsLoadedCopyWith(_RequestsLoaded value, $Res Function(_RequestsLoaded) _then) = __$RequestsLoadedCopyWithImpl;
@useResult
$Res call({
 List<MatchRequestEntity> requests
});




}
/// @nodoc
class __$RequestsLoadedCopyWithImpl<$Res>
    implements _$RequestsLoadedCopyWith<$Res> {
  __$RequestsLoadedCopyWithImpl(this._self, this._then);

  final _RequestsLoaded _self;
  final $Res Function(_RequestsLoaded) _then;

/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requests = null,}) {
  return _then(_RequestsLoaded(
null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<MatchRequestEntity>,
  ));
}


}

/// @nodoc


class _Error implements MatchRequestsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatchRequestsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MatchRequestsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of MatchRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
