// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_character_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserCharacterDetailEntity {

 UserCharacterSectionEntity get userCharacter; UserCharacterStateRowEntity get userCharacterState; List<UserCharacterSubStateRowEntity> get userCharacterSubStates; String get description; String get characterImageUrl;
/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterDetailEntityCopyWith<UserCharacterDetailEntity> get copyWith => _$UserCharacterDetailEntityCopyWithImpl<UserCharacterDetailEntity>(this as UserCharacterDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterDetailEntity&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter)&&(identical(other.userCharacterState, userCharacterState) || other.userCharacterState == userCharacterState)&&const DeepCollectionEquality().equals(other.userCharacterSubStates, userCharacterSubStates)&&(identical(other.description, description) || other.description == description)&&(identical(other.characterImageUrl, characterImageUrl) || other.characterImageUrl == characterImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userCharacter,userCharacterState,const DeepCollectionEquality().hash(userCharacterSubStates),description,characterImageUrl);

@override
String toString() {
  return 'UserCharacterDetailEntity(userCharacter: $userCharacter, userCharacterState: $userCharacterState, userCharacterSubStates: $userCharacterSubStates, description: $description, characterImageUrl: $characterImageUrl)';
}


}

/// @nodoc
abstract mixin class $UserCharacterDetailEntityCopyWith<$Res>  {
  factory $UserCharacterDetailEntityCopyWith(UserCharacterDetailEntity value, $Res Function(UserCharacterDetailEntity) _then) = _$UserCharacterDetailEntityCopyWithImpl;
@useResult
$Res call({
 UserCharacterSectionEntity userCharacter, UserCharacterStateRowEntity userCharacterState, List<UserCharacterSubStateRowEntity> userCharacterSubStates, String description, String characterImageUrl
});


$UserCharacterSectionEntityCopyWith<$Res> get userCharacter;$UserCharacterStateRowEntityCopyWith<$Res> get userCharacterState;

}
/// @nodoc
class _$UserCharacterDetailEntityCopyWithImpl<$Res>
    implements $UserCharacterDetailEntityCopyWith<$Res> {
  _$UserCharacterDetailEntityCopyWithImpl(this._self, this._then);

  final UserCharacterDetailEntity _self;
  final $Res Function(UserCharacterDetailEntity) _then;

/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userCharacter = null,Object? userCharacterState = null,Object? userCharacterSubStates = null,Object? description = null,Object? characterImageUrl = null,}) {
  return _then(_self.copyWith(
userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterSectionEntity,userCharacterState: null == userCharacterState ? _self.userCharacterState : userCharacterState // ignore: cast_nullable_to_non_nullable
as UserCharacterStateRowEntity,userCharacterSubStates: null == userCharacterSubStates ? _self.userCharacterSubStates : userCharacterSubStates // ignore: cast_nullable_to_non_nullable
as List<UserCharacterSubStateRowEntity>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,characterImageUrl: null == characterImageUrl ? _self.characterImageUrl : characterImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterSectionEntityCopyWith<$Res> get userCharacter {
  
  return $UserCharacterSectionEntityCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterStateRowEntityCopyWith<$Res> get userCharacterState {
  
  return $UserCharacterStateRowEntityCopyWith<$Res>(_self.userCharacterState, (value) {
    return _then(_self.copyWith(userCharacterState: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserCharacterDetailEntity].
extension UserCharacterDetailEntityPatterns on UserCharacterDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserCharacterSectionEntity userCharacter,  UserCharacterStateRowEntity userCharacterState,  List<UserCharacterSubStateRowEntity> userCharacterSubStates,  String description,  String characterImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterDetailEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserCharacterSectionEntity userCharacter,  UserCharacterStateRowEntity userCharacterState,  List<UserCharacterSubStateRowEntity> userCharacterSubStates,  String description,  String characterImageUrl)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDetailEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserCharacterSectionEntity userCharacter,  UserCharacterStateRowEntity userCharacterState,  List<UserCharacterSubStateRowEntity> userCharacterSubStates,  String description,  String characterImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDetailEntity() when $default != null:
return $default(_that.userCharacter,_that.userCharacterState,_that.userCharacterSubStates,_that.description,_that.characterImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _UserCharacterDetailEntity implements UserCharacterDetailEntity {
  const _UserCharacterDetailEntity({required this.userCharacter, required this.userCharacterState, final  List<UserCharacterSubStateRowEntity> userCharacterSubStates = const <UserCharacterSubStateRowEntity>[], this.description = '', required this.characterImageUrl}): _userCharacterSubStates = userCharacterSubStates;
  

@override final  UserCharacterSectionEntity userCharacter;
@override final  UserCharacterStateRowEntity userCharacterState;
 final  List<UserCharacterSubStateRowEntity> _userCharacterSubStates;
@override@JsonKey() List<UserCharacterSubStateRowEntity> get userCharacterSubStates {
  if (_userCharacterSubStates is EqualUnmodifiableListView) return _userCharacterSubStates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userCharacterSubStates);
}

@override@JsonKey() final  String description;
@override final  String characterImageUrl;

/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterDetailEntityCopyWith<_UserCharacterDetailEntity> get copyWith => __$UserCharacterDetailEntityCopyWithImpl<_UserCharacterDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterDetailEntity&&(identical(other.userCharacter, userCharacter) || other.userCharacter == userCharacter)&&(identical(other.userCharacterState, userCharacterState) || other.userCharacterState == userCharacterState)&&const DeepCollectionEquality().equals(other._userCharacterSubStates, _userCharacterSubStates)&&(identical(other.description, description) || other.description == description)&&(identical(other.characterImageUrl, characterImageUrl) || other.characterImageUrl == characterImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userCharacter,userCharacterState,const DeepCollectionEquality().hash(_userCharacterSubStates),description,characterImageUrl);

@override
String toString() {
  return 'UserCharacterDetailEntity(userCharacter: $userCharacter, userCharacterState: $userCharacterState, userCharacterSubStates: $userCharacterSubStates, description: $description, characterImageUrl: $characterImageUrl)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterDetailEntityCopyWith<$Res> implements $UserCharacterDetailEntityCopyWith<$Res> {
  factory _$UserCharacterDetailEntityCopyWith(_UserCharacterDetailEntity value, $Res Function(_UserCharacterDetailEntity) _then) = __$UserCharacterDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 UserCharacterSectionEntity userCharacter, UserCharacterStateRowEntity userCharacterState, List<UserCharacterSubStateRowEntity> userCharacterSubStates, String description, String characterImageUrl
});


@override $UserCharacterSectionEntityCopyWith<$Res> get userCharacter;@override $UserCharacterStateRowEntityCopyWith<$Res> get userCharacterState;

}
/// @nodoc
class __$UserCharacterDetailEntityCopyWithImpl<$Res>
    implements _$UserCharacterDetailEntityCopyWith<$Res> {
  __$UserCharacterDetailEntityCopyWithImpl(this._self, this._then);

  final _UserCharacterDetailEntity _self;
  final $Res Function(_UserCharacterDetailEntity) _then;

/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userCharacter = null,Object? userCharacterState = null,Object? userCharacterSubStates = null,Object? description = null,Object? characterImageUrl = null,}) {
  return _then(_UserCharacterDetailEntity(
userCharacter: null == userCharacter ? _self.userCharacter : userCharacter // ignore: cast_nullable_to_non_nullable
as UserCharacterSectionEntity,userCharacterState: null == userCharacterState ? _self.userCharacterState : userCharacterState // ignore: cast_nullable_to_non_nullable
as UserCharacterStateRowEntity,userCharacterSubStates: null == userCharacterSubStates ? _self._userCharacterSubStates : userCharacterSubStates // ignore: cast_nullable_to_non_nullable
as List<UserCharacterSubStateRowEntity>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,characterImageUrl: null == characterImageUrl ? _self.characterImageUrl : characterImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterSectionEntityCopyWith<$Res> get userCharacter {
  
  return $UserCharacterSectionEntityCopyWith<$Res>(_self.userCharacter, (value) {
    return _then(_self.copyWith(userCharacter: value));
  });
}/// Create a copy of UserCharacterDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCharacterStateRowEntityCopyWith<$Res> get userCharacterState {
  
  return $UserCharacterStateRowEntityCopyWith<$Res>(_self.userCharacterState, (value) {
    return _then(_self.copyWith(userCharacterState: value));
  });
}
}

/// @nodoc
mixin _$UserCharacterSectionEntity {

 int? get id; int get userId; int get characterId; String get characterName;
/// Create a copy of UserCharacterSectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterSectionEntityCopyWith<UserCharacterSectionEntity> get copyWith => _$UserCharacterSectionEntityCopyWithImpl<UserCharacterSectionEntity>(this as UserCharacterSectionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.characterName, characterName) || other.characterName == characterName));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,characterId,characterName);

@override
String toString() {
  return 'UserCharacterSectionEntity(id: $id, userId: $userId, characterId: $characterId, characterName: $characterName)';
}


}

/// @nodoc
abstract mixin class $UserCharacterSectionEntityCopyWith<$Res>  {
  factory $UserCharacterSectionEntityCopyWith(UserCharacterSectionEntity value, $Res Function(UserCharacterSectionEntity) _then) = _$UserCharacterSectionEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int userId, int characterId, String characterName
});




}
/// @nodoc
class _$UserCharacterSectionEntityCopyWithImpl<$Res>
    implements $UserCharacterSectionEntityCopyWith<$Res> {
  _$UserCharacterSectionEntityCopyWithImpl(this._self, this._then);

  final UserCharacterSectionEntity _self;
  final $Res Function(UserCharacterSectionEntity) _then;

/// Create a copy of UserCharacterSectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? characterId = null,Object? characterName = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterSectionEntity].
extension UserCharacterSectionEntityPatterns on UserCharacterSectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterSectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterSectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterSectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterSectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userId,  int characterId,  String characterName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterSectionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.characterId,_that.characterName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userId,  int characterId,  String characterName)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSectionEntity():
return $default(_that.id,_that.userId,_that.characterId,_that.characterName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userId,  int characterId,  String characterName)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSectionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.characterId,_that.characterName);case _:
  return null;

}
}

}

/// @nodoc


class _UserCharacterSectionEntity implements UserCharacterSectionEntity {
  const _UserCharacterSectionEntity({this.id, required this.userId, required this.characterId, required this.characterName});
  

@override final  int? id;
@override final  int userId;
@override final  int characterId;
@override final  String characterName;

/// Create a copy of UserCharacterSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterSectionEntityCopyWith<_UserCharacterSectionEntity> get copyWith => __$UserCharacterSectionEntityCopyWithImpl<_UserCharacterSectionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.characterName, characterName) || other.characterName == characterName));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,characterId,characterName);

@override
String toString() {
  return 'UserCharacterSectionEntity(id: $id, userId: $userId, characterId: $characterId, characterName: $characterName)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterSectionEntityCopyWith<$Res> implements $UserCharacterSectionEntityCopyWith<$Res> {
  factory _$UserCharacterSectionEntityCopyWith(_UserCharacterSectionEntity value, $Res Function(_UserCharacterSectionEntity) _then) = __$UserCharacterSectionEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userId, int characterId, String characterName
});




}
/// @nodoc
class __$UserCharacterSectionEntityCopyWithImpl<$Res>
    implements _$UserCharacterSectionEntityCopyWith<$Res> {
  __$UserCharacterSectionEntityCopyWithImpl(this._self, this._then);

  final _UserCharacterSectionEntity _self;
  final $Res Function(_UserCharacterSectionEntity) _then;

/// Create a copy of UserCharacterSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? characterId = null,Object? characterName = null,}) {
  return _then(_UserCharacterSectionEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserCharacterStateRowEntity {

 int? get id; int get userCharacterId; int get characterStateId; String get characterStateCode; String get characterStateName; DateTime? get createdAt;
/// Create a copy of UserCharacterStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterStateRowEntityCopyWith<UserCharacterStateRowEntity> get copyWith => _$UserCharacterStateRowEntityCopyWithImpl<UserCharacterStateRowEntity>(this as UserCharacterStateRowEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterStateRowEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterStateId, characterStateId) || other.characterStateId == characterStateId)&&(identical(other.characterStateCode, characterStateCode) || other.characterStateCode == characterStateCode)&&(identical(other.characterStateName, characterStateName) || other.characterStateName == characterStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterStateId,characterStateCode,characterStateName,createdAt);

@override
String toString() {
  return 'UserCharacterStateRowEntity(id: $id, userCharacterId: $userCharacterId, characterStateId: $characterStateId, characterStateCode: $characterStateCode, characterStateName: $characterStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserCharacterStateRowEntityCopyWith<$Res>  {
  factory $UserCharacterStateRowEntityCopyWith(UserCharacterStateRowEntity value, $Res Function(UserCharacterStateRowEntity) _then) = _$UserCharacterStateRowEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int userCharacterId, int characterStateId, String characterStateCode, String characterStateName, DateTime? createdAt
});




}
/// @nodoc
class _$UserCharacterStateRowEntityCopyWithImpl<$Res>
    implements $UserCharacterStateRowEntityCopyWith<$Res> {
  _$UserCharacterStateRowEntityCopyWithImpl(this._self, this._then);

  final UserCharacterStateRowEntity _self;
  final $Res Function(UserCharacterStateRowEntity) _then;

/// Create a copy of UserCharacterStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterStateId = null,Object? characterStateCode = null,Object? characterStateName = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterStateId: null == characterStateId ? _self.characterStateId : characterStateId // ignore: cast_nullable_to_non_nullable
as int,characterStateCode: null == characterStateCode ? _self.characterStateCode : characterStateCode // ignore: cast_nullable_to_non_nullable
as String,characterStateName: null == characterStateName ? _self.characterStateName : characterStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterStateRowEntity].
extension UserCharacterStateRowEntityPatterns on UserCharacterStateRowEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterStateRowEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterStateRowEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterStateRowEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userCharacterId,  int characterStateId,  String characterStateCode,  String characterStateName,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterStateRowEntity() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterStateId,_that.characterStateCode,_that.characterStateName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserCharacterStateRowEntity implements UserCharacterStateRowEntity {
  const _UserCharacterStateRowEntity({this.id, required this.userCharacterId, required this.characterStateId, required this.characterStateCode, required this.characterStateName, this.createdAt});
  

@override final  int? id;
@override final  int userCharacterId;
@override final  int characterStateId;
@override final  String characterStateCode;
@override final  String characterStateName;
@override final  DateTime? createdAt;

/// Create a copy of UserCharacterStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterStateRowEntityCopyWith<_UserCharacterStateRowEntity> get copyWith => __$UserCharacterStateRowEntityCopyWithImpl<_UserCharacterStateRowEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterStateRowEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterStateId, characterStateId) || other.characterStateId == characterStateId)&&(identical(other.characterStateCode, characterStateCode) || other.characterStateCode == characterStateCode)&&(identical(other.characterStateName, characterStateName) || other.characterStateName == characterStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterStateId,characterStateCode,characterStateName,createdAt);

@override
String toString() {
  return 'UserCharacterStateRowEntity(id: $id, userCharacterId: $userCharacterId, characterStateId: $characterStateId, characterStateCode: $characterStateCode, characterStateName: $characterStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterStateRowEntityCopyWith<$Res> implements $UserCharacterStateRowEntityCopyWith<$Res> {
  factory _$UserCharacterStateRowEntityCopyWith(_UserCharacterStateRowEntity value, $Res Function(_UserCharacterStateRowEntity) _then) = __$UserCharacterStateRowEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userCharacterId, int characterStateId, String characterStateCode, String characterStateName, DateTime? createdAt
});




}
/// @nodoc
class __$UserCharacterStateRowEntityCopyWithImpl<$Res>
    implements _$UserCharacterStateRowEntityCopyWith<$Res> {
  __$UserCharacterStateRowEntityCopyWithImpl(this._self, this._then);

  final _UserCharacterStateRowEntity _self;
  final $Res Function(_UserCharacterStateRowEntity) _then;

/// Create a copy of UserCharacterStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterStateId = null,Object? characterStateCode = null,Object? characterStateName = null,Object? createdAt = freezed,}) {
  return _then(_UserCharacterStateRowEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterStateId: null == characterStateId ? _self.characterStateId : characterStateId // ignore: cast_nullable_to_non_nullable
as int,characterStateCode: null == characterStateCode ? _self.characterStateCode : characterStateCode // ignore: cast_nullable_to_non_nullable
as String,characterStateName: null == characterStateName ? _self.characterStateName : characterStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$UserCharacterSubStateRowEntity {

 int? get id; int get userCharacterId; int get characterSubStateId; String get characterSubStateCode; String get characterSubStateName; DateTime? get createdAt;
/// Create a copy of UserCharacterSubStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterSubStateRowEntityCopyWith<UserCharacterSubStateRowEntity> get copyWith => _$UserCharacterSubStateRowEntityCopyWithImpl<UserCharacterSubStateRowEntity>(this as UserCharacterSubStateRowEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterSubStateRowEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterSubStateId, characterSubStateId) || other.characterSubStateId == characterSubStateId)&&(identical(other.characterSubStateCode, characterSubStateCode) || other.characterSubStateCode == characterSubStateCode)&&(identical(other.characterSubStateName, characterSubStateName) || other.characterSubStateName == characterSubStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterSubStateId,characterSubStateCode,characterSubStateName,createdAt);

@override
String toString() {
  return 'UserCharacterSubStateRowEntity(id: $id, userCharacterId: $userCharacterId, characterSubStateId: $characterSubStateId, characterSubStateCode: $characterSubStateCode, characterSubStateName: $characterSubStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserCharacterSubStateRowEntityCopyWith<$Res>  {
  factory $UserCharacterSubStateRowEntityCopyWith(UserCharacterSubStateRowEntity value, $Res Function(UserCharacterSubStateRowEntity) _then) = _$UserCharacterSubStateRowEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int userCharacterId, int characterSubStateId, String characterSubStateCode, String characterSubStateName, DateTime? createdAt
});




}
/// @nodoc
class _$UserCharacterSubStateRowEntityCopyWithImpl<$Res>
    implements $UserCharacterSubStateRowEntityCopyWith<$Res> {
  _$UserCharacterSubStateRowEntityCopyWithImpl(this._self, this._then);

  final UserCharacterSubStateRowEntity _self;
  final $Res Function(UserCharacterSubStateRowEntity) _then;

/// Create a copy of UserCharacterSubStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterSubStateId = null,Object? characterSubStateCode = null,Object? characterSubStateName = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateId: null == characterSubStateId ? _self.characterSubStateId : characterSubStateId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateCode: null == characterSubStateCode ? _self.characterSubStateCode : characterSubStateCode // ignore: cast_nullable_to_non_nullable
as String,characterSubStateName: null == characterSubStateName ? _self.characterSubStateName : characterSubStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterSubStateRowEntity].
extension UserCharacterSubStateRowEntityPatterns on UserCharacterSubStateRowEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterSubStateRowEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterSubStateRowEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterSubStateRowEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int userCharacterId,  int characterSubStateId,  String characterSubStateCode,  String characterSubStateName,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterSubStateRowEntity() when $default != null:
return $default(_that.id,_that.userCharacterId,_that.characterSubStateId,_that.characterSubStateCode,_that.characterSubStateName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserCharacterSubStateRowEntity implements UserCharacterSubStateRowEntity {
  const _UserCharacterSubStateRowEntity({this.id, required this.userCharacterId, required this.characterSubStateId, required this.characterSubStateCode, required this.characterSubStateName, this.createdAt});
  

@override final  int? id;
@override final  int userCharacterId;
@override final  int characterSubStateId;
@override final  String characterSubStateCode;
@override final  String characterSubStateName;
@override final  DateTime? createdAt;

/// Create a copy of UserCharacterSubStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterSubStateRowEntityCopyWith<_UserCharacterSubStateRowEntity> get copyWith => __$UserCharacterSubStateRowEntityCopyWithImpl<_UserCharacterSubStateRowEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterSubStateRowEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userCharacterId, userCharacterId) || other.userCharacterId == userCharacterId)&&(identical(other.characterSubStateId, characterSubStateId) || other.characterSubStateId == characterSubStateId)&&(identical(other.characterSubStateCode, characterSubStateCode) || other.characterSubStateCode == characterSubStateCode)&&(identical(other.characterSubStateName, characterSubStateName) || other.characterSubStateName == characterSubStateName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userCharacterId,characterSubStateId,characterSubStateCode,characterSubStateName,createdAt);

@override
String toString() {
  return 'UserCharacterSubStateRowEntity(id: $id, userCharacterId: $userCharacterId, characterSubStateId: $characterSubStateId, characterSubStateCode: $characterSubStateCode, characterSubStateName: $characterSubStateName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterSubStateRowEntityCopyWith<$Res> implements $UserCharacterSubStateRowEntityCopyWith<$Res> {
  factory _$UserCharacterSubStateRowEntityCopyWith(_UserCharacterSubStateRowEntity value, $Res Function(_UserCharacterSubStateRowEntity) _then) = __$UserCharacterSubStateRowEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int userCharacterId, int characterSubStateId, String characterSubStateCode, String characterSubStateName, DateTime? createdAt
});




}
/// @nodoc
class __$UserCharacterSubStateRowEntityCopyWithImpl<$Res>
    implements _$UserCharacterSubStateRowEntityCopyWith<$Res> {
  __$UserCharacterSubStateRowEntityCopyWithImpl(this._self, this._then);

  final _UserCharacterSubStateRowEntity _self;
  final $Res Function(_UserCharacterSubStateRowEntity) _then;

/// Create a copy of UserCharacterSubStateRowEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userCharacterId = null,Object? characterSubStateId = null,Object? characterSubStateCode = null,Object? characterSubStateName = null,Object? createdAt = freezed,}) {
  return _then(_UserCharacterSubStateRowEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userCharacterId: null == userCharacterId ? _self.userCharacterId : userCharacterId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateId: null == characterSubStateId ? _self.characterSubStateId : characterSubStateId // ignore: cast_nullable_to_non_nullable
as int,characterSubStateCode: null == characterSubStateCode ? _self.characterSubStateCode : characterSubStateCode // ignore: cast_nullable_to_non_nullable
as String,characterSubStateName: null == characterSubStateName ? _self.characterSubStateName : characterSubStateName // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
