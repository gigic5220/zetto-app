// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersionDto {

 String get latestVersion; int get latestVersionCode; String get minimumVersion; int get minimumVersionCode;
/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<AppVersionDto> get copyWith => _$AppVersionDtoCopyWithImpl<AppVersionDto>(this as AppVersionDto, _$identity);

  /// Serializes this AppVersionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionDto&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.latestVersionCode, latestVersionCode) || other.latestVersionCode == latestVersionCode)&&(identical(other.minimumVersion, minimumVersion) || other.minimumVersion == minimumVersion)&&(identical(other.minimumVersionCode, minimumVersionCode) || other.minimumVersionCode == minimumVersionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersion,latestVersionCode,minimumVersion,minimumVersionCode);

@override
String toString() {
  return 'AppVersionDto(latestVersion: $latestVersion, latestVersionCode: $latestVersionCode, minimumVersion: $minimumVersion, minimumVersionCode: $minimumVersionCode)';
}


}

/// @nodoc
abstract mixin class $AppVersionDtoCopyWith<$Res>  {
  factory $AppVersionDtoCopyWith(AppVersionDto value, $Res Function(AppVersionDto) _then) = _$AppVersionDtoCopyWithImpl;
@useResult
$Res call({
 String latestVersion, int latestVersionCode, String minimumVersion, int minimumVersionCode
});




}
/// @nodoc
class _$AppVersionDtoCopyWithImpl<$Res>
    implements $AppVersionDtoCopyWith<$Res> {
  _$AppVersionDtoCopyWithImpl(this._self, this._then);

  final AppVersionDto _self;
  final $Res Function(AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latestVersion = null,Object? latestVersionCode = null,Object? minimumVersion = null,Object? minimumVersionCode = null,}) {
  return _then(_self.copyWith(
latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersionCode: null == latestVersionCode ? _self.latestVersionCode : latestVersionCode // ignore: cast_nullable_to_non_nullable
as int,minimumVersion: null == minimumVersion ? _self.minimumVersion : minimumVersion // ignore: cast_nullable_to_non_nullable
as String,minimumVersionCode: null == minimumVersionCode ? _self.minimumVersionCode : minimumVersionCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionDto].
extension AppVersionDtoPatterns on AppVersionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionDto value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String latestVersion,  int latestVersionCode,  String minimumVersion,  int minimumVersionCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.latestVersion,_that.latestVersionCode,_that.minimumVersion,_that.minimumVersionCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String latestVersion,  int latestVersionCode,  String minimumVersion,  int minimumVersionCode)  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto():
return $default(_that.latestVersion,_that.latestVersionCode,_that.minimumVersion,_that.minimumVersionCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String latestVersion,  int latestVersionCode,  String minimumVersion,  int minimumVersionCode)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.latestVersion,_that.latestVersionCode,_that.minimumVersion,_that.minimumVersionCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionDto implements AppVersionDto {
  const _AppVersionDto({required this.latestVersion, required this.latestVersionCode, required this.minimumVersion, required this.minimumVersionCode});
  factory _AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);

@override final  String latestVersion;
@override final  int latestVersionCode;
@override final  String minimumVersion;
@override final  int minimumVersionCode;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionDtoCopyWith<_AppVersionDto> get copyWith => __$AppVersionDtoCopyWithImpl<_AppVersionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionDto&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.latestVersionCode, latestVersionCode) || other.latestVersionCode == latestVersionCode)&&(identical(other.minimumVersion, minimumVersion) || other.minimumVersion == minimumVersion)&&(identical(other.minimumVersionCode, minimumVersionCode) || other.minimumVersionCode == minimumVersionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersion,latestVersionCode,minimumVersion,minimumVersionCode);

@override
String toString() {
  return 'AppVersionDto(latestVersion: $latestVersion, latestVersionCode: $latestVersionCode, minimumVersion: $minimumVersion, minimumVersionCode: $minimumVersionCode)';
}


}

/// @nodoc
abstract mixin class _$AppVersionDtoCopyWith<$Res> implements $AppVersionDtoCopyWith<$Res> {
  factory _$AppVersionDtoCopyWith(_AppVersionDto value, $Res Function(_AppVersionDto) _then) = __$AppVersionDtoCopyWithImpl;
@override @useResult
$Res call({
 String latestVersion, int latestVersionCode, String minimumVersion, int minimumVersionCode
});




}
/// @nodoc
class __$AppVersionDtoCopyWithImpl<$Res>
    implements _$AppVersionDtoCopyWith<$Res> {
  __$AppVersionDtoCopyWithImpl(this._self, this._then);

  final _AppVersionDto _self;
  final $Res Function(_AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latestVersion = null,Object? latestVersionCode = null,Object? minimumVersion = null,Object? minimumVersionCode = null,}) {
  return _then(_AppVersionDto(
latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersionCode: null == latestVersionCode ? _self.latestVersionCode : latestVersionCode // ignore: cast_nullable_to_non_nullable
as int,minimumVersion: null == minimumVersion ? _self.minimumVersion : minimumVersion // ignore: cast_nullable_to_non_nullable
as String,minimumVersionCode: null == minimumVersionCode ? _self.minimumVersionCode : minimumVersionCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
