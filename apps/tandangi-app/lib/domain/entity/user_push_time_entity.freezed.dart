// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_push_time_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPushTimeEntity {

 int get id; int get userId; String get pushTime; bool get isEnabled; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of UserPushTimeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPushTimeEntityCopyWith<UserPushTimeEntity> get copyWith => _$UserPushTimeEntityCopyWithImpl<UserPushTimeEntity>(this as UserPushTimeEntity, _$identity);

  /// Serializes this UserPushTimeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPushTimeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushTime, pushTime) || other.pushTime == pushTime)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,pushTime,isEnabled,createdAt,updatedAt);

@override
String toString() {
  return 'UserPushTimeEntity(id: $id, userId: $userId, pushTime: $pushTime, isEnabled: $isEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserPushTimeEntityCopyWith<$Res>  {
  factory $UserPushTimeEntityCopyWith(UserPushTimeEntity value, $Res Function(UserPushTimeEntity) _then) = _$UserPushTimeEntityCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String pushTime, bool isEnabled, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$UserPushTimeEntityCopyWithImpl<$Res>
    implements $UserPushTimeEntityCopyWith<$Res> {
  _$UserPushTimeEntityCopyWithImpl(this._self, this._then);

  final UserPushTimeEntity _self;
  final $Res Function(UserPushTimeEntity) _then;

/// Create a copy of UserPushTimeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? pushTime = null,Object? isEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pushTime: null == pushTime ? _self.pushTime : pushTime // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPushTimeEntity].
extension UserPushTimeEntityPatterns on UserPushTimeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPushTimeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPushTimeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPushTimeEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserPushTimeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPushTimeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserPushTimeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String pushTime,  bool isEnabled,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPushTimeEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String pushTime,  bool isEnabled,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserPushTimeEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String pushTime,  bool isEnabled,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserPushTimeEntity() when $default != null:
return $default(_that.id,_that.userId,_that.pushTime,_that.isEnabled,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPushTimeEntity implements UserPushTimeEntity {
  const _UserPushTimeEntity({required this.id, required this.userId, required this.pushTime, required this.isEnabled, required this.createdAt, required this.updatedAt});
  factory _UserPushTimeEntity.fromJson(Map<String, dynamic> json) => _$UserPushTimeEntityFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String pushTime;
@override final  bool isEnabled;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of UserPushTimeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPushTimeEntityCopyWith<_UserPushTimeEntity> get copyWith => __$UserPushTimeEntityCopyWithImpl<_UserPushTimeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPushTimeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPushTimeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushTime, pushTime) || other.pushTime == pushTime)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,pushTime,isEnabled,createdAt,updatedAt);

@override
String toString() {
  return 'UserPushTimeEntity(id: $id, userId: $userId, pushTime: $pushTime, isEnabled: $isEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserPushTimeEntityCopyWith<$Res> implements $UserPushTimeEntityCopyWith<$Res> {
  factory _$UserPushTimeEntityCopyWith(_UserPushTimeEntity value, $Res Function(_UserPushTimeEntity) _then) = __$UserPushTimeEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String pushTime, bool isEnabled, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$UserPushTimeEntityCopyWithImpl<$Res>
    implements _$UserPushTimeEntityCopyWith<$Res> {
  __$UserPushTimeEntityCopyWithImpl(this._self, this._then);

  final _UserPushTimeEntity _self;
  final $Res Function(_UserPushTimeEntity) _then;

/// Create a copy of UserPushTimeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? pushTime = null,Object? isEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserPushTimeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pushTime: null == pushTime ? _self.pushTime : pushTime // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
