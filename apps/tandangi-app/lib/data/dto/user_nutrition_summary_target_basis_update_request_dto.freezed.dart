// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_nutrition_summary_target_basis_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserNutritionSummaryTargetBasisUpdateRequestDto {

 String get summaryTargetBasis;
/// Create a copy of UserNutritionSummaryTargetBasisUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<UserNutritionSummaryTargetBasisUpdateRequestDto> get copyWith => _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl<UserNutritionSummaryTargetBasisUpdateRequestDto>(this as UserNutritionSummaryTargetBasisUpdateRequestDto, _$identity);

  /// Serializes this UserNutritionSummaryTargetBasisUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNutritionSummaryTargetBasisUpdateRequestDto&&(identical(other.summaryTargetBasis, summaryTargetBasis) || other.summaryTargetBasis == summaryTargetBasis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summaryTargetBasis);

@override
String toString() {
  return 'UserNutritionSummaryTargetBasisUpdateRequestDto(summaryTargetBasis: $summaryTargetBasis)';
}


}

/// @nodoc
abstract mixin class $UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<$Res>  {
  factory $UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith(UserNutritionSummaryTargetBasisUpdateRequestDto value, $Res Function(UserNutritionSummaryTargetBasisUpdateRequestDto) _then) = _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String summaryTargetBasis
});




}
/// @nodoc
class _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl<$Res>
    implements $UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<$Res> {
  _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final UserNutritionSummaryTargetBasisUpdateRequestDto _self;
  final $Res Function(UserNutritionSummaryTargetBasisUpdateRequestDto) _then;

/// Create a copy of UserNutritionSummaryTargetBasisUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summaryTargetBasis = null,}) {
  return _then(_self.copyWith(
summaryTargetBasis: null == summaryTargetBasis ? _self.summaryTargetBasis : summaryTargetBasis // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserNutritionSummaryTargetBasisUpdateRequestDto].
extension UserNutritionSummaryTargetBasisUpdateRequestDtoPatterns on UserNutritionSummaryTargetBasisUpdateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserNutritionSummaryTargetBasisUpdateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserNutritionSummaryTargetBasisUpdateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserNutritionSummaryTargetBasisUpdateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String summaryTargetBasis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto() when $default != null:
return $default(_that.summaryTargetBasis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String summaryTargetBasis)  $default,) {final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto():
return $default(_that.summaryTargetBasis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String summaryTargetBasis)?  $default,) {final _that = this;
switch (_that) {
case _UserNutritionSummaryTargetBasisUpdateRequestDto() when $default != null:
return $default(_that.summaryTargetBasis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserNutritionSummaryTargetBasisUpdateRequestDto implements UserNutritionSummaryTargetBasisUpdateRequestDto {
  const _UserNutritionSummaryTargetBasisUpdateRequestDto({required this.summaryTargetBasis});
  factory _UserNutritionSummaryTargetBasisUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$UserNutritionSummaryTargetBasisUpdateRequestDtoFromJson(json);

@override final  String summaryTargetBasis;

/// Create a copy of UserNutritionSummaryTargetBasisUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<_UserNutritionSummaryTargetBasisUpdateRequestDto> get copyWith => __$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl<_UserNutritionSummaryTargetBasisUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserNutritionSummaryTargetBasisUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserNutritionSummaryTargetBasisUpdateRequestDto&&(identical(other.summaryTargetBasis, summaryTargetBasis) || other.summaryTargetBasis == summaryTargetBasis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summaryTargetBasis);

@override
String toString() {
  return 'UserNutritionSummaryTargetBasisUpdateRequestDto(summaryTargetBasis: $summaryTargetBasis)';
}


}

/// @nodoc
abstract mixin class _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<$Res> implements $UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<$Res> {
  factory _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith(_UserNutritionSummaryTargetBasisUpdateRequestDto value, $Res Function(_UserNutritionSummaryTargetBasisUpdateRequestDto) _then) = __$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String summaryTargetBasis
});




}
/// @nodoc
class __$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl<$Res>
    implements _$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWith<$Res> {
  __$UserNutritionSummaryTargetBasisUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _UserNutritionSummaryTargetBasisUpdateRequestDto _self;
  final $Res Function(_UserNutritionSummaryTargetBasisUpdateRequestDto) _then;

/// Create a copy of UserNutritionSummaryTargetBasisUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summaryTargetBasis = null,}) {
  return _then(_UserNutritionSummaryTargetBasisUpdateRequestDto(
summaryTargetBasis: null == summaryTargetBasis ? _self.summaryTargetBasis : summaryTargetBasis // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
