// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingResponseDto {

 UserResponseDto get user; UserCharacterDto get userCharacter;
/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingResponseDtoCopyWith<OnboardingResponseDto> get copyWith => _$OnboardingResponseDtoCopyWithImpl<OnboardingResponseDto>(this as OnboardingResponseDto, _$identity);

  /// Serializes this OnboardingResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingResponseDto&&(identical(other.user, user) || other.user == user)&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,userCharacter);

@override
String toString() {
  return 'OnboardingResponseDto(user: $user, userCharacter: $userCharacter)';
}


}

/// @nodoc
abstract mixin class $OnboardingResponseDtoCopyWith<$Res>  {
  factory $OnboardingResponseDtoCopyWith(OnboardingResponseDto value, $Res Function(OnboardingResponseDto) _then) = _$OnboardingResponseDtoCopyWithImpl;
@useResult
$Res call({
 UserResponseDto user, UserCharacterDto userCharacter
});


$UserResponseDtoCopyWith<$Res> get user;$UserCharacterDtoCopyWith<$Res> get userCharacter;

}
/// @nodoc
class _$OnboardingResponseDtoCopyWithImpl<$Res>
    implements $OnboardingResponseDtoCopyWith<$Res> {
  _$OnboardingResponseDtoCopyWithImpl(this._self, this._then);

  final OnboardingResponseDto _self;
  final $Res Function(OnboardingResponseDto) _then;

/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? userCharacter = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponseDto,userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterDto,
  ));
}
/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseDtoCopyWith<$Res> get user {
  
  return $UserResponseDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterDtoCopyWith<$Res> get userCharacter {
  
  return $UserCharacterDtoCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnboardingResponseDto].
extension OnboardingResponseDtoPatterns on OnboardingResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserResponseDto user,  UserCharacterDto userCharacter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingResponseDto() when $default != null:
return $default(_that.user,_that.userCharacter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserResponseDto user,  UserCharacterDto userCharacter)  $default,) {final _that = this;
switch (_that) {
case _OnboardingResponseDto():
return $default(_that.user,_that.userCharacter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserResponseDto user,  UserCharacterDto userCharacter)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingResponseDto() when $default != null:
return $default(_that.user,_that.userCharacter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnboardingResponseDto implements OnboardingResponseDto {
  const _OnboardingResponseDto({required this.user, required this.userCharacter});
  factory _OnboardingResponseDto.fromJson(Map<String, dynamic> json) => _$OnboardingResponseDtoFromJson(json);

@override final  UserResponseDto user;
@override final  UserCharacterDto userCharacter;

/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingResponseDtoCopyWith<_OnboardingResponseDto> get copyWith => __$OnboardingResponseDtoCopyWithImpl<_OnboardingResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnboardingResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingResponseDto&&(identical(other.user, user) || other.user == user)&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,userCharacter);

@override
String toString() {
  return 'OnboardingResponseDto(user: $user, userCharacter: $userCharacter)';
}


}

/// @nodoc
abstract mixin class _$OnboardingResponseDtoCopyWith<$Res> implements $OnboardingResponseDtoCopyWith<$Res> {
  factory _$OnboardingResponseDtoCopyWith(_OnboardingResponseDto value, $Res Function(_OnboardingResponseDto) _then) = __$OnboardingResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 UserResponseDto user, UserCharacterDto userCharacter
});


@override $UserResponseDtoCopyWith<$Res> get user;@override $UserCharacterDtoCopyWith<$Res> get userCharacter;

}
/// @nodoc
class __$OnboardingResponseDtoCopyWithImpl<$Res>
    implements _$OnboardingResponseDtoCopyWith<$Res> {
  __$OnboardingResponseDtoCopyWithImpl(this._self, this._then);

  final _OnboardingResponseDto _self;
  final $Res Function(_OnboardingResponseDto) _then;

/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? userCharacter = null,}) {
  return _then(_OnboardingResponseDto(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponseDto,userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterDto,
  ));
}

/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseDtoCopyWith<$Res> get user {
  
  return $UserResponseDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of OnboardingResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterDtoCopyWith<$Res> get userCharacter {
  
  return $UserCharacterDtoCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}
}

// dart format on
