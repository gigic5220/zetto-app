// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponseDto {

 int get id; String get firebaseUid; String get status; int? get age; String? get gender; double? get height; double? get weight; bool get onboardingCompleted;
/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseDtoCopyWith<UserResponseDto> get copyWith => _$UserResponseDtoCopyWithImpl<UserResponseDto>(this as UserResponseDto, _$identity);

  /// Serializes this UserResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.status, status) || other.status == status)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firebaseUid,status,age,gender,height,weight,onboardingCompleted);

@override
String toString() {
  return 'UserResponseDto(id: $id, firebaseUid: $firebaseUid, status: $status, age: $age, gender: $gender, height: $height, weight: $weight, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class $UserResponseDtoCopyWith<$Res>  {
  factory $UserResponseDtoCopyWith(UserResponseDto value, $Res Function(UserResponseDto) _then) = _$UserResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String firebaseUid, String status, int? age, String? gender, double? height, double? weight, bool onboardingCompleted
});




}
/// @nodoc
class _$UserResponseDtoCopyWithImpl<$Res>
    implements $UserResponseDtoCopyWith<$Res> {
  _$UserResponseDtoCopyWithImpl(this._self, this._then);

  final UserResponseDto _self;
  final $Res Function(UserResponseDto) _then;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firebaseUid = null,Object? status = null,Object? age = freezed,Object? gender = freezed,Object? height = freezed,Object? weight = freezed,Object? onboardingCompleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firebaseUid: null == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponseDto].
extension UserResponseDtoPatterns on UserResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firebaseUid,  String status,  int? age,  String? gender,  double? height,  double? weight,  bool onboardingCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
return $default(_that.id,_that.firebaseUid,_that.status,_that.age,_that.gender,_that.height,_that.weight,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firebaseUid,  String status,  int? age,  String? gender,  double? height,  double? weight,  bool onboardingCompleted)  $default,) {final _that = this;
switch (_that) {
case _UserResponseDto():
return $default(_that.id,_that.firebaseUid,_that.status,_that.age,_that.gender,_that.height,_that.weight,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firebaseUid,  String status,  int? age,  String? gender,  double? height,  double? weight,  bool onboardingCompleted)?  $default,) {final _that = this;
switch (_that) {
case _UserResponseDto() when $default != null:
return $default(_that.id,_that.firebaseUid,_that.status,_that.age,_that.gender,_that.height,_that.weight,_that.onboardingCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponseDto implements UserResponseDto {
  const _UserResponseDto({required this.id, required this.firebaseUid, required this.status, this.age, this.gender, this.height, this.weight, required this.onboardingCompleted});
  factory _UserResponseDto.fromJson(Map<String, dynamic> json) => _$UserResponseDtoFromJson(json);

@override final  int id;
@override final  String firebaseUid;
@override final  String status;
@override final  int? age;
@override final  String? gender;
@override final  double? height;
@override final  double? weight;
@override final  bool onboardingCompleted;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseDtoCopyWith<_UserResponseDto> get copyWith => __$UserResponseDtoCopyWithImpl<_UserResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.status, status) || other.status == status)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firebaseUid,status,age,gender,height,weight,onboardingCompleted);

@override
String toString() {
  return 'UserResponseDto(id: $id, firebaseUid: $firebaseUid, status: $status, age: $age, gender: $gender, height: $height, weight: $weight, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class _$UserResponseDtoCopyWith<$Res> implements $UserResponseDtoCopyWith<$Res> {
  factory _$UserResponseDtoCopyWith(_UserResponseDto value, $Res Function(_UserResponseDto) _then) = __$UserResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String firebaseUid, String status, int? age, String? gender, double? height, double? weight, bool onboardingCompleted
});




}
/// @nodoc
class __$UserResponseDtoCopyWithImpl<$Res>
    implements _$UserResponseDtoCopyWith<$Res> {
  __$UserResponseDtoCopyWithImpl(this._self, this._then);

  final _UserResponseDto _self;
  final $Res Function(_UserResponseDto) _then;

/// Create a copy of UserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firebaseUid = null,Object? status = null,Object? age = freezed,Object? gender = freezed,Object? height = freezed,Object? weight = freezed,Object? onboardingCompleted = null,}) {
  return _then(_UserResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firebaseUid: null == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
