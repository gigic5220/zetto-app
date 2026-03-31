// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingResultEntity {

 UserEntity get user; CharacterEntity get character;
/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingResultEntityCopyWith<OnboardingResultEntity> get copyWith => _$OnboardingResultEntityCopyWithImpl<OnboardingResultEntity>(this as OnboardingResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingResultEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.character, character) || other.character == character));
}


@override
int get hashCode => Object.hash(runtimeType,user,character);

@override
String toString() {
  return 'OnboardingResultEntity(user: $user, character: $character)';
}


}

/// @nodoc
abstract mixin class $OnboardingResultEntityCopyWith<$Res>  {
  factory $OnboardingResultEntityCopyWith(OnboardingResultEntity value, $Res Function(OnboardingResultEntity) _then) = _$OnboardingResultEntityCopyWithImpl;
@useResult
$Res call({
 UserEntity user, CharacterEntity character
});


$UserEntityCopyWith<$Res> get user;$CharacterEntityCopyWith<$Res> get character;

}
/// @nodoc
class _$OnboardingResultEntityCopyWithImpl<$Res>
    implements $OnboardingResultEntityCopyWith<$Res> {
  _$OnboardingResultEntityCopyWithImpl(this._self, this._then);

  final OnboardingResultEntity _self;
  final $Res Function(OnboardingResultEntity) _then;

/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? character = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as CharacterEntity,
  ));
}
/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterEntityCopyWith<$Res> get character {
  
  return $CharacterEntityCopyWith<$Res>(_self.character, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnboardingResultEntity].
extension OnboardingResultEntityPatterns on OnboardingResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity user,  CharacterEntity character)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingResultEntity() when $default != null:
return $default(_that.user,_that.character);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity user,  CharacterEntity character)  $default,) {final _that = this;
switch (_that) {
case _OnboardingResultEntity():
return $default(_that.user,_that.character);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity user,  CharacterEntity character)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingResultEntity() when $default != null:
return $default(_that.user,_that.character);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingResultEntity implements OnboardingResultEntity {
  const _OnboardingResultEntity({required this.user, required this.character});
  

@override final  UserEntity user;
@override final  CharacterEntity character;

/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingResultEntityCopyWith<_OnboardingResultEntity> get copyWith => __$OnboardingResultEntityCopyWithImpl<_OnboardingResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingResultEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.character, character) || other.character == character));
}


@override
int get hashCode => Object.hash(runtimeType,user,character);

@override
String toString() {
  return 'OnboardingResultEntity(user: $user, character: $character)';
}


}

/// @nodoc
abstract mixin class _$OnboardingResultEntityCopyWith<$Res> implements $OnboardingResultEntityCopyWith<$Res> {
  factory _$OnboardingResultEntityCopyWith(_OnboardingResultEntity value, $Res Function(_OnboardingResultEntity) _then) = __$OnboardingResultEntityCopyWithImpl;
@override @useResult
$Res call({
 UserEntity user, CharacterEntity character
});


@override $UserEntityCopyWith<$Res> get user;@override $CharacterEntityCopyWith<$Res> get character;

}
/// @nodoc
class __$OnboardingResultEntityCopyWithImpl<$Res>
    implements _$OnboardingResultEntityCopyWith<$Res> {
  __$OnboardingResultEntityCopyWithImpl(this._self, this._then);

  final _OnboardingResultEntity _self;
  final $Res Function(_OnboardingResultEntity) _then;

/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? character = null,}) {
  return _then(_OnboardingResultEntity(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as CharacterEntity,
  ));
}

/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of OnboardingResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterEntityCopyWith<$Res> get character {
  
  return $CharacterEntityCopyWith<$Res>(_self.character, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}

// dart format on
