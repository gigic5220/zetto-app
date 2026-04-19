// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_push_time_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPushTimeResponseDto {

 int get id; int get userId; String get pushTime; bool get isEnabled; String get createdAt; String get updatedAt;
/// Create a copy of UserPushTimeResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPushTimeResponseDtoCopyWith<UserPushTimeResponseDto> get copyWith => _$UserPushTimeResponseDtoCopyWithImpl<UserPushTimeResponseDto>(this as UserPushTimeResponseDto, _$identity);

  /// Serializes this UserPushTimeResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPushTimeResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushTime, pushTime) || other.pushTime == pushTime)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,pushTime,isEnabled,createdAt,updatedAt);

@override
String toString() {
  return 'UserPushTimeResponseDto(id: $id, userId: $userId, pushTime: $pushTime, isEnabled: $isEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserPushTimeResponseDtoCopyWith<$Res>  {
  factory $UserPushTimeResponseDtoCopyWith(UserPushTimeResponseDto value, $Res Function(UserPushTimeResponseDto) _then) = _$UserPushTimeResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String pushTime, bool isEnabled, String createdAt, String updatedAt
});




}
/// @nodoc
class _$UserPushTimeResponseDtoCopyWithImpl<$Res>
    implements $UserPushTimeResponseDtoCopyWith<$Res> {
  _$UserPushTimeResponseDtoCopyWithImpl(this._self, this._then);

  final UserPushTimeResponseDto _self;
  final $Res Function(UserPushTimeResponseDto) _then;

/// Create a copy of UserPushTimeResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? pushTime = null,Object? isEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pushTime: null == pushTime ? _self.pushTime : pushTime // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPushTimeResponseDto].
extension UserPushTimeResponseDtoPatterns on UserPushTimeResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPushTimeResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPushTimeResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPushTimeResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserPushTimeResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPushTimeResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserPushTimeResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String pushTime,  bool isEnabled,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPushTimeResponseDto() when $default != null:
return $default(_that.id,_that.userId,_that.pushTime,_that.isEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String pushTime,  bool isEnabled,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserPushTimeResponseDto():
return $default(_that.id,_that.userId,_that.pushTime,_that.isEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String pushTime,  bool isEnabled,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserPushTimeResponseDto() when $default != null:
return $default(_that.id,_that.userId,_that.pushTime,_that.isEnabled,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPushTimeResponseDto implements UserPushTimeResponseDto {
  const _UserPushTimeResponseDto({required this.id, required this.userId, required this.pushTime, required this.isEnabled, required this.createdAt, required this.updatedAt});
  factory _UserPushTimeResponseDto.fromJson(Map<String, dynamic> json) => _$UserPushTimeResponseDtoFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String pushTime;
@override final  bool isEnabled;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of UserPushTimeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPushTimeResponseDtoCopyWith<_UserPushTimeResponseDto> get copyWith => __$UserPushTimeResponseDtoCopyWithImpl<_UserPushTimeResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPushTimeResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPushTimeResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushTime, pushTime) || other.pushTime == pushTime)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,pushTime,isEnabled,createdAt,updatedAt);

@override
String toString() {
  return 'UserPushTimeResponseDto(id: $id, userId: $userId, pushTime: $pushTime, isEnabled: $isEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserPushTimeResponseDtoCopyWith<$Res> implements $UserPushTimeResponseDtoCopyWith<$Res> {
  factory _$UserPushTimeResponseDtoCopyWith(_UserPushTimeResponseDto value, $Res Function(_UserPushTimeResponseDto) _then) = __$UserPushTimeResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String pushTime, bool isEnabled, String createdAt, String updatedAt
});




}
/// @nodoc
class __$UserPushTimeResponseDtoCopyWithImpl<$Res>
    implements _$UserPushTimeResponseDtoCopyWith<$Res> {
  __$UserPushTimeResponseDtoCopyWithImpl(this._self, this._then);

  final _UserPushTimeResponseDto _self;
  final $Res Function(_UserPushTimeResponseDto) _then;

/// Create a copy of UserPushTimeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? pushTime = null,Object? isEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserPushTimeResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pushTime: null == pushTime ? _self.pushTime : pushTime // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
