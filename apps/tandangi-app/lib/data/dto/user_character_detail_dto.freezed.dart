// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_character_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCharacterDetailResponseDto {

 UserCharacterSectionDto get userCharacter; UserCharacterStateRowDto? get userCharacterState; List<UserCharacterSubStateRowDto> get userCharacterSubStates; String get description; String get characterImageUrl;
/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterDetailResponseDtoCopyWith<UserCharacterDetailResponseDto> get copyWith => _$UserCharacterDetailResponseDtoCopyWithImpl<UserCharacterDetailResponseDto>(this as UserCharacterDetailResponseDto, _$identity);

  /// Serializes this UserCharacterDetailResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterDetailResponseDto&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter)&&(identical(other.userCharacterState, userCharacterState) || other.userCharacterState == userCharacterState)&&const DeepCollectionEquality().equals(other.userCharacterSubStates, userCharacterSubStates)&&(identical(other.description, description) || other.description == description)&&(identical(other.characterImageUrl, characterImageUrl) || other.characterImageUrl == characterImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userCharacter,userCharacterState,const DeepCollectionEquality().hash(userCharacterSubStates),description,characterImageUrl);

@override
String toString() {
  return 'UserCharacterDetailResponseDto(userCharacter: $userCharacter, userCharacterState: $userCharacterState, userCharacterSubStates: $userCharacterSubStates, description: $description, characterImageUrl: $characterImageUrl)';
}


}

/// @nodoc
abstract mixin class $UserCharacterDetailResponseDtoCopyWith<$Res>  {
  factory $UserCharacterDetailResponseDtoCopyWith(UserCharacterDetailResponseDto value, $Res Function(UserCharacterDetailResponseDto) _then) = _$UserCharacterDetailResponseDtoCopyWithImpl;
@useResult
$Res call({
 UserCharacterSectionDto userCharacter, UserCharacterStateRowDto? userCharacterState, List<UserCharacterSubStateRowDto> userCharacterSubStates, String description, String characterImageUrl
});


$UserCharacterSectionDtoCopyWith<$Res> get userCharacter;$UserCharacterStateRowDtoCopyWith<$Res>? get userCharacterState;

}
/// @nodoc
class _$UserCharacterDetailResponseDtoCopyWithImpl<$Res>
    implements $UserCharacterDetailResponseDtoCopyWith<$Res> {
  _$UserCharacterDetailResponseDtoCopyWithImpl(this._self, this._then);

  final UserCharacterDetailResponseDto _self;
  final $Res Function(UserCharacterDetailResponseDto) _then;

/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userCharacter = null,Object? userCharacterState = freezed,Object? userCharacterSubStates = null,Object? description = null,Object? characterImageUrl = null,}) {
  return _then(_self.copyWith(
userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterSectionDto,userCharacterState: freezed == userCharacterState ? _self.userCharacterState : userCharacterState // ignore: cast_nullable_to_non_nullable
as UserCharacterStateRowDto?,userCharacterSubStates: null == userCharacterSubStates ? _self.userCharacterSubStates : userCharacterSubStates // ignore: cast_nullable_to_non_nullable
as List<UserCharacterSubStateRowDto>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,characterImageUrl: null == characterImageUrl ? _self.characterImageUrl : characterImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterSectionDtoCopyWith<$Res> get userCharacter {
  
  return $UserCharacterSectionDtoCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterStateRowDtoCopyWith<$Res>? get userCharacterState {
    if (_self.userCharacterState == null) {
    return null;
  }

  return $UserCharacterStateRowDtoCopyWith<$Res>(_self.userCharacterState!, (value) {
    return _then(_self.copyWith(userCharacterState: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserCharacterDetailResponseDto].
extension UserCharacterDetailResponseDtoPatterns on UserCharacterDetailResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterDetailResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterDetailResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterDetailResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserCharacterSectionDto userCharacter,  UserCharacterStateRowDto? userCharacterState,  List<UserCharacterSubStateRowDto> userCharacterSubStates,  String description,  String characterImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto() when $default != null:
return $default(_that.userCharacter,_that.userCharacterState,_that.userCharacterSubStates,_that.description,_that.characterImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserCharacterSectionDto userCharacter,  UserCharacterStateRowDto? userCharacterState,  List<UserCharacterSubStateRowDto> userCharacterSubStates,  String description,  String characterImageUrl)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto():
return $default(_that.userCharacter,_that.userCharacterState,_that.userCharacterSubStates,_that.description,_that.characterImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserCharacterSectionDto userCharacter,  UserCharacterStateRowDto? userCharacterState,  List<UserCharacterSubStateRowDto> userCharacterSubStates,  String description,  String characterImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDetailResponseDto() when $default != null:
return $default(_that.userCharacter,_that.userCharacterState,_that.userCharacterSubStates,_that.description,_that.characterImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCharacterDetailResponseDto implements UserCharacterDetailResponseDto {
  const _UserCharacterDetailResponseDto({required this.userCharacter, this.userCharacterState, final  List<UserCharacterSubStateRowDto> userCharacterSubStates = const <UserCharacterSubStateRowDto>[], this.description = '', required this.characterImageUrl}): _userCharacterSubStates = userCharacterSubStates;
  factory _UserCharacterDetailResponseDto.fromJson(Map<String, dynamic> json) => _$UserCharacterDetailResponseDtoFromJson(json);

@override final  UserCharacterSectionDto userCharacter;
@override final  UserCharacterStateRowDto? userCharacterState;
 final  List<UserCharacterSubStateRowDto> _userCharacterSubStates;
@override@JsonKey() List<UserCharacterSubStateRowDto> get userCharacterSubStates {
  if (_userCharacterSubStates is EqualUnmodifiableListView) return _userCharacterSubStates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userCharacterSubStates);
}

@override@JsonKey() final  String description;
@override final  String characterImageUrl;

/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterDetailResponseDtoCopyWith<_UserCharacterDetailResponseDto> get copyWith => __$UserCharacterDetailResponseDtoCopyWithImpl<_UserCharacterDetailResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCharacterDetailResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterDetailResponseDto&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter)&&(identical(other.userCharacterState, userCharacterState) || other.userCharacterState == userCharacterState)&&const DeepCollectionEquality().equals(other._userCharacterSubStates, _userCharacterSubStates)&&(identical(other.description, description) || other.description == description)&&(identical(other.characterImageUrl, characterImageUrl) || other.characterImageUrl == characterImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userCharacter,userCharacterState,const DeepCollectionEquality().hash(_userCharacterSubStates),description,characterImageUrl);

@override
String toString() {
  return 'UserCharacterDetailResponseDto(userCharacter: $userCharacter, userCharacterState: $userCharacterState, userCharacterSubStates: $userCharacterSubStates, description: $description, characterImageUrl: $characterImageUrl)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterDetailResponseDtoCopyWith<$Res> implements $UserCharacterDetailResponseDtoCopyWith<$Res> {
  factory _$UserCharacterDetailResponseDtoCopyWith(_UserCharacterDetailResponseDto value, $Res Function(_UserCharacterDetailResponseDto) _then) = __$UserCharacterDetailResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 UserCharacterSectionDto userCharacter, UserCharacterStateRowDto? userCharacterState, List<UserCharacterSubStateRowDto> userCharacterSubStates, String description, String characterImageUrl
});


@override $UserCharacterSectionDtoCopyWith<$Res> get userCharacter;@override $UserCharacterStateRowDtoCopyWith<$Res>? get userCharacterState;

}
/// @nodoc
class __$UserCharacterDetailResponseDtoCopyWithImpl<$Res>
    implements _$UserCharacterDetailResponseDtoCopyWith<$Res> {
  __$UserCharacterDetailResponseDtoCopyWithImpl(this._self, this._then);

  final _UserCharacterDetailResponseDto _self;
  final $Res Function(_UserCharacterDetailResponseDto) _then;

/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userCharacter = null,Object? userCharacterState = freezed,Object? userCharacterSubStates = null,Object? description = null,Object? characterImageUrl = null,}) {
  return _then(_UserCharacterDetailResponseDto(
userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterSectionDto,userCharacterState: freezed == userCharacterState ? _self.userCharacterState : userCharacterState // ignore: cast_nullable_to_non_nullable
as UserCharacterStateRowDto?,userCharacterSubStates: null == userCharacterSubStates ? _self._userCharacterSubStates : userCharacterSubStates // ignore: cast_nullable_to_non_nullable
as List<UserCharacterSubStateRowDto>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,characterImageUrl: null == characterImageUrl ? _self.characterImageUrl : characterImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterSectionDtoCopyWith<$Res> get userCharacter {
  
  return $UserCharacterSectionDtoCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}/// Create a copy of UserCharacterDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterStateRowDtoCopyWith<$Res>? get userCharacterState {
    if (_self.userCharacterState == null) {
    return null;
  }

  return $UserCharacterStateRowDtoCopyWith<$Res>(_self.userCharacterState!, (value) {
    return _then(_self.copyWith(userCharacterState: value));
  });
}
}


/// @nodoc
mixin _$UserCharacterSectionDto {

 int? get id; int get userId; int get characterId; String get characterName; String get characterOriginName;
/// Create a copy of UserCharacterSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterSectionDtoCopyWith<UserCharacterSectionDto> get copyWith => _$UserCharacterSectionDtoCopyWithImpl<UserCharacterSectionDto>(this as UserCharacterSectionDto, _$identity);

  /// Serializes this UserCharacterSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.characterName, characterName) || other.characterName == characterName)&&(identical(other.characterOriginName, characterOriginName) || other.characterOriginName == characterOriginName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,characterId,characterName,characterOriginName);

@override
String toString() {
  return 'UserCharacterSectionDto(id: $id, userId: $userId, characterId: $characterId, characterName: $characterName, characterOriginName: $characterOriginName)';
}


}

/// @nodoc
abstract mixin class $UserCharacterSectionDtoCopyWith<$Res>  {
  factory $UserCharacterSectionDtoCopyWith(UserCharacterSectionDto value, $Res Function(UserCharacterSectionDto) _then) = _$UserCharacterSectionDtoCopyWithImpl;
@useResult
$Res call({
 int? id, int userId, int characterId, String characterName, String characterOriginName
});




}
/// @nodoc
class _$UserCharacterSectionDtoCopyWithImpl<$Res>
    implements $UserCharacterSectionDtoCopyWith<$Res> {
  _$UserCharacterSectionDtoCopyWithImpl(this._self, this._then);

  final UserCharacterSectionDto _self;
  final $Res Function(UserCharacterSectionDto) _then;

/// Create a copy of UserCharacterSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? characterId = null,Object? characterName = null,Object? characterOriginName = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,characterOriginName: null == characterOriginName ? _self.characterOriginName : characterOriginName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterSectionDto].
extension UserCharacterSectionDtoPatterns on UserCharacterSectionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterSectionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSectionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSectionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userId,  int characterId,  String characterName,  String characterOriginName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterSectionDto() when $default != null:
return $default(_that.id,_that.userId,_that.characterId,_that.characterName,_that.characterOriginName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userId,  int characterId,  String characterName,  String characterOriginName)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSectionDto():
return $default(_that.id,_that.userId,_that.characterId,_that.characterName,_that.characterOriginName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userId,  int characterId,  String characterName,  String characterOriginName)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSectionDto() when $default != null:
return $default(_that.id,_that.userId,_that.characterId,_that.characterName,_that.characterOriginName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCharacterSectionDto implements UserCharacterSectionDto {
  const _UserCharacterSectionDto({this.id, required this.userId, required this.characterId, required this.characterName, required this.characterOriginName});
  factory _UserCharacterSectionDto.fromJson(Map<String, dynamic> json) => _$UserCharacterSectionDtoFromJson(json);

@override final  int? id;
@override final  int userId;
@override final  int characterId;
@override final  String characterName;
@override final  String characterOriginName;

/// Create a copy of UserCharacterSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterSectionDtoCopyWith<_UserCharacterSectionDto> get copyWith => __$UserCharacterSectionDtoCopyWithImpl<_UserCharacterSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCharacterSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.characterName, characterName) || other.characterName == characterName)&&(identical(other.characterOriginName, characterOriginName) || other.characterOriginName == characterOriginName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,characterId,characterName,characterOriginName);

@override
String toString() {
  return 'UserCharacterSectionDto(id: $id, userId: $userId, characterId: $characterId, characterName: $characterName, characterOriginName: $characterOriginName)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterSectionDtoCopyWith<$Res> implements $UserCharacterSectionDtoCopyWith<$Res> {
  factory _$UserCharacterSectionDtoCopyWith(_UserCharacterSectionDto value, $Res Function(_UserCharacterSectionDto) _then) = __$UserCharacterSectionDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userId, int characterId, String characterName, String characterOriginName
});




}
/// @nodoc
class __$UserCharacterSectionDtoCopyWithImpl<$Res>
    implements _$UserCharacterSectionDtoCopyWith<$Res> {
  __$UserCharacterSectionDtoCopyWithImpl(this._self, this._then);

  final _UserCharacterSectionDto _self;
  final $Res Function(_UserCharacterSectionDto) _then;

/// Create a copy of UserCharacterSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? characterId = null,Object? characterName = null,Object? characterOriginName = null,}) {
  return _then(_UserCharacterSectionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,characterOriginName: null == characterOriginName ? _self.characterOriginName : characterOriginName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserCharacterStateRowDto {

 int? get id; int get userCharacterId; int get characterStateId; String get characterStateCode; String get characterStateName; String? get createdAt;
/// Create a copy of UserCharacterStateRowDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterStateRowDtoCopyWith<UserCharacterStateRowDto> get copyWith => _$UserCharacterStateRowDtoCopyWithImpl<UserCharacterStateRowDto>(this as UserCharacterStateRowDto, _$identity);

  /// Serializes this UserCharacterStateRowDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterStateRowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterStateId, characterStateId) || other.characterStateId == characterStateId)&&(identical(other.characterStateCode, characterStateCode) || other.characterStateCode == characterStateCode)&&(identical(other.characterStateName, characterStateName) || other.characterStateName == characterStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterStateId,characterStateCode,characterStateName,createdAt);

@override
String toString() {
  return 'UserCharacterStateRowDto(id: $id, userCharacterId: $userCharacterId, characterStateId: $characterStateId, characterStateCode: $characterStateCode, characterStateName: $characterStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserCharacterStateRowDtoCopyWith<$Res>  {
  factory $UserCharacterStateRowDtoCopyWith(UserCharacterStateRowDto value, $Res Function(UserCharacterStateRowDto) _then) = _$UserCharacterStateRowDtoCopyWithImpl;
@useResult
$Res call({
 int? id, int userCharacterId, int characterStateId, String characterStateCode, String characterStateName, String? createdAt
});




}
/// @nodoc
class _$UserCharacterStateRowDtoCopyWithImpl<$Res>
    implements $UserCharacterStateRowDtoCopyWith<$Res> {
  _$UserCharacterStateRowDtoCopyWithImpl(this._self, this._then);

  final UserCharacterStateRowDto _self;
  final $Res Function(UserCharacterStateRowDto) _then;

/// Create a copy of UserCharacterStateRowDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterStateId = null,Object? characterStateCode = null,Object? characterStateName = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterStateId: null == characterStateId ? _self.characterStateId : characterStateId // ignore: cast_nullable_to_non_nullable
as int,characterStateCode: null == characterStateCode ? _self.characterStateCode : characterStateCode // ignore: cast_nullable_to_non_nullable
as String,characterStateName: null == characterStateName ? _self.characterStateName : characterStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterStateRowDto].
extension UserCharacterStateRowDtoPatterns on UserCharacterStateRowDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterStateRowDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterStateRowDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterStateRowDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterStateRowDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterStateRowDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterStateRowDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterStateRowDto() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterStateId,_that.characterStateCode,_that.characterStateName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterStateRowDto():
return $default(_that.id,_that.userCharacterId,_that.characterStateId,_that.characterStateCode,_that.characterStateName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterStateRowDto() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterStateId,_that.characterStateCode,_that.characterStateName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCharacterStateRowDto implements UserCharacterStateRowDto {
  const _UserCharacterStateRowDto({this.id, required this.userCharacterId, required this.characterStateId, required this.characterStateCode, required this.characterStateName, this.createdAt});
  factory _UserCharacterStateRowDto.fromJson(Map<String, dynamic> json) => _$UserCharacterStateRowDtoFromJson(json);

@override final  int? id;
@override final  int userCharacterId;
@override final  int characterStateId;
@override final  String characterStateCode;
@override final  String characterStateName;
@override final  String? createdAt;

/// Create a copy of UserCharacterStateRowDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterStateRowDtoCopyWith<_UserCharacterStateRowDto> get copyWith => __$UserCharacterStateRowDtoCopyWithImpl<_UserCharacterStateRowDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCharacterStateRowDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterStateRowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterStateId, characterStateId) || other.characterStateId == characterStateId)&&(identical(other.characterStateCode, characterStateCode) || other.characterStateCode == characterStateCode)&&(identical(other.characterStateName, characterStateName) || other.characterStateName == characterStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterStateId,characterStateCode,characterStateName,createdAt);

@override
String toString() {
  return 'UserCharacterStateRowDto(id: $id, userCharacterId: $userCharacterId, characterStateId: $characterStateId, characterStateCode: $characterStateCode, characterStateName: $characterStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterStateRowDtoCopyWith<$Res> implements $UserCharacterStateRowDtoCopyWith<$Res> {
  factory _$UserCharacterStateRowDtoCopyWith(_UserCharacterStateRowDto value, $Res Function(_UserCharacterStateRowDto) _then) = __$UserCharacterStateRowDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userCharacterId, int characterStateId, String characterStateCode, String characterStateName, String? createdAt
});




}
/// @nodoc
class __$UserCharacterStateRowDtoCopyWithImpl<$Res>
    implements _$UserCharacterStateRowDtoCopyWith<$Res> {
  __$UserCharacterStateRowDtoCopyWithImpl(this._self, this._then);

  final _UserCharacterStateRowDto _self;
  final $Res Function(_UserCharacterStateRowDto) _then;

/// Create a copy of UserCharacterStateRowDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterStateId = null,Object? characterStateCode = null,Object? characterStateName = null,Object? createdAt = freezed,}) {
  return _then(_UserCharacterStateRowDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterStateId: null == characterStateId ? _self.characterStateId : characterStateId // ignore: cast_nullable_to_non_nullable
as int,characterStateCode: null == characterStateCode ? _self.characterStateCode : characterStateCode // ignore: cast_nullable_to_non_nullable
as String,characterStateName: null == characterStateName ? _self.characterStateName : characterStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserCharacterSubStateRowDto {

 int? get id; int get userCharacterId; int get characterSubStateId; String get characterSubStateCode; String get characterSubStateName; String? get createdAt;
/// Create a copy of UserCharacterSubStateRowDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterSubStateRowDtoCopyWith<UserCharacterSubStateRowDto> get copyWith => _$UserCharacterSubStateRowDtoCopyWithImpl<UserCharacterSubStateRowDto>(this as UserCharacterSubStateRowDto, _$identity);

  /// Serializes this UserCharacterSubStateRowDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterSubStateRowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterSubStateId, characterSubStateId) || other.characterSubStateId == characterSubStateId)&&(identical(other.characterSubStateCode, characterSubStateCode) || other.characterSubStateCode == characterSubStateCode)&&(identical(other.characterSubStateName, characterSubStateName) || other.characterSubStateName == characterSubStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterSubStateId,characterSubStateCode,characterSubStateName,createdAt);

@override
String toString() {
  return 'UserCharacterSubStateRowDto(id: $id, userCharacterId: $userCharacterId, characterSubStateId: $characterSubStateId, characterSubStateCode: $characterSubStateCode, characterSubStateName: $characterSubStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserCharacterSubStateRowDtoCopyWith<$Res>  {
  factory $UserCharacterSubStateRowDtoCopyWith(UserCharacterSubStateRowDto value, $Res Function(UserCharacterSubStateRowDto) _then) = _$UserCharacterSubStateRowDtoCopyWithImpl;
@useResult
$Res call({
 int? id, int userCharacterId, int characterSubStateId, String characterSubStateCode, String characterSubStateName, String? createdAt
});




}
/// @nodoc
class _$UserCharacterSubStateRowDtoCopyWithImpl<$Res>
    implements $UserCharacterSubStateRowDtoCopyWith<$Res> {
  _$UserCharacterSubStateRowDtoCopyWithImpl(this._self, this._then);

  final UserCharacterSubStateRowDto _self;
  final $Res Function(UserCharacterSubStateRowDto) _then;

/// Create a copy of UserCharacterSubStateRowDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterSubStateId = null,Object? characterSubStateCode = null,Object? characterSubStateName = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateId: null == characterSubStateId ? _self.characterSubStateId : characterSubStateId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateCode: null == characterSubStateCode ? _self.characterSubStateCode : characterSubStateCode // ignore: cast_nullable_to_non_nullable
as String,characterSubStateName: null == characterSubStateName ? _self.characterSubStateName : characterSubStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterSubStateRowDto].
extension UserCharacterSubStateRowDtoPatterns on UserCharacterSubStateRowDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterSubStateRowDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterSubStateRowDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterSubStateRowDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterSubStateId,_that.characterSubStateCode,_that.characterSubStateName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto():
return $default(_that.id,_that.userCharacterId,_that.characterSubStateId,_that.characterSubStateCode,_that.characterSubStateName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowDto() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterSubStateId,_that.characterSubStateCode,_that.characterSubStateName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCharacterSubStateRowDto implements UserCharacterSubStateRowDto {
  const _UserCharacterSubStateRowDto({this.id, required this.userCharacterId, required this.characterSubStateId, required this.characterSubStateCode, required this.characterSubStateName, this.createdAt});
  factory _UserCharacterSubStateRowDto.fromJson(Map<String, dynamic> json) => _$UserCharacterSubStateRowDtoFromJson(json);

@override final  int? id;
@override final  int userCharacterId;
@override final  int characterSubStateId;
@override final  String characterSubStateCode;
@override final  String characterSubStateName;
@override final  String? createdAt;

/// Create a copy of UserCharacterSubStateRowDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterSubStateRowDtoCopyWith<_UserCharacterSubStateRowDto> get copyWith => __$UserCharacterSubStateRowDtoCopyWithImpl<_UserCharacterSubStateRowDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCharacterSubStateRowDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterSubStateRowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterSubStateId, characterSubStateId) || other.characterSubStateId == characterSubStateId)&&(identical(other.characterSubStateCode, characterSubStateCode) || other.characterSubStateCode == characterSubStateCode)&&(identical(other.characterSubStateName, characterSubStateName) || other.characterSubStateName == characterSubStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterSubStateId,characterSubStateCode,characterSubStateName,createdAt);

@override
String toString() {
  return 'UserCharacterSubStateRowDto(id: $id, userCharacterId: $userCharacterId, characterSubStateId: $characterSubStateId, characterSubStateCode: $characterSubStateCode, characterSubStateName: $characterSubStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterSubStateRowDtoCopyWith<$Res> implements $UserCharacterSubStateRowDtoCopyWith<$Res> {
  factory _$UserCharacterSubStateRowDtoCopyWith(_UserCharacterSubStateRowDto value, $Res Function(_UserCharacterSubStateRowDto) _then) = __$UserCharacterSubStateRowDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userCharacterId, int characterSubStateId, String characterSubStateCode, String characterSubStateName, String? createdAt
});




}
/// @nodoc
class __$UserCharacterSubStateRowDtoCopyWithImpl<$Res>
    implements _$UserCharacterSubStateRowDtoCopyWith<$Res> {
  __$UserCharacterSubStateRowDtoCopyWithImpl(this._self, this._then);

  final _UserCharacterSubStateRowDto _self;
  final $Res Function(_UserCharacterSubStateRowDto) _then;

/// Create a copy of UserCharacterSubStateRowDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterSubStateId = null,Object? characterSubStateCode = null,Object? characterSubStateName = null,Object? createdAt = freezed,}) {
  return _then(_UserCharacterSubStateRowDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateId: null == characterSubStateId ? _self.characterSubStateId : characterSubStateId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateCode: null == characterSubStateCode ? _self.characterSubStateCode : characterSubStateCode // ignore: cast_nullable_to_non_nullable
as String,characterSubStateName: null == characterSubStateName ? _self.characterSubStateName : characterSubStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
