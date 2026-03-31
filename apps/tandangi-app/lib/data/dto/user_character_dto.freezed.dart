// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCharacterDto {

 int get id; int get characterId; String get name; String get description; String get imageUrl;
/// Create a copy of UserCharacterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCharacterDtoCopyWith<UserCharacterDto> get copyWith => _$UserCharacterDtoCopyWithImpl<UserCharacterDto>(this as UserCharacterDto, _$identity);

  /// Serializes this UserCharacterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCharacterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,characterId,name,description,imageUrl);

@override
String toString() {
  return 'UserCharacterDto(id: $id, characterId: $characterId, name: $name, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $UserCharacterDtoCopyWith<$Res>  {
  factory $UserCharacterDtoCopyWith(UserCharacterDto value, $Res Function(UserCharacterDto) _then) = _$UserCharacterDtoCopyWithImpl;
@useResult
$Res call({
 int id, int characterId, String name, String description, String imageUrl
});




}
/// @nodoc
class _$UserCharacterDtoCopyWithImpl<$Res>
    implements $UserCharacterDtoCopyWith<$Res> {
  _$UserCharacterDtoCopyWithImpl(this._self, this._then);

  final UserCharacterDto _self;
  final $Res Function(UserCharacterDto) _then;

/// Create a copy of UserCharacterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? characterId = null,Object? name = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCharacterDto].
extension UserCharacterDtoPatterns on UserCharacterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCharacterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCharacterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCharacterDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCharacterDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCharacterDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int characterId,  String name,  String description,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCharacterDto() when $default != null:
return $default(_that.id,_that.characterId,_that.name,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int characterId,  String name,  String description,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDto():
return $default(_that.id,_that.characterId,_that.name,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int characterId,  String name,  String description,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserCharacterDto() when $default != null:
return $default(_that.id,_that.characterId,_that.name,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCharacterDto implements UserCharacterDto {
  const _UserCharacterDto({required this.id, required this.characterId, required this.name, required this.description, required this.imageUrl});
  factory _UserCharacterDto.fromJson(Map<String, dynamic> json) => _$UserCharacterDtoFromJson(json);

@override final  int id;
@override final  int characterId;
@override final  String name;
@override final  String description;
@override final  String imageUrl;

/// Create a copy of UserCharacterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCharacterDtoCopyWith<_UserCharacterDto> get copyWith => __$UserCharacterDtoCopyWithImpl<_UserCharacterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCharacterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCharacterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,characterId,name,description,imageUrl);

@override
String toString() {
  return 'UserCharacterDto(id: $id, characterId: $characterId, name: $name, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$UserCharacterDtoCopyWith<$Res> implements $UserCharacterDtoCopyWith<$Res> {
  factory _$UserCharacterDtoCopyWith(_UserCharacterDto value, $Res Function(_UserCharacterDto) _then) = __$UserCharacterDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int characterId, String name, String description, String imageUrl
});




}
/// @nodoc
class __$UserCharacterDtoCopyWithImpl<$Res>
    implements _$UserCharacterDtoCopyWith<$Res> {
  __$UserCharacterDtoCopyWithImpl(this._self, this._then);

  final _UserCharacterDto _self;
  final $Res Function(_UserCharacterDto) _then;

/// Create a copy of UserCharacterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? characterId = null,Object? name = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(_UserCharacterDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
