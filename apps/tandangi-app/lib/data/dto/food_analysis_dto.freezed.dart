// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodAnalysisResultDto {

 int get foodAnalysisId;
/// Create a copy of FoodAnalysisResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisResultDtoCopyWith<FoodAnalysisResultDto> get copyWith => _$FoodAnalysisResultDtoCopyWithImpl<FoodAnalysisResultDto>(this as FoodAnalysisResultDto, _$identity);

  /// Serializes this FoodAnalysisResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisResultDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId);

@override
String toString() {
  return 'FoodAnalysisResultDto(foodAnalysisId: $foodAnalysisId)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisResultDtoCopyWith<$Res>  {
  factory $FoodAnalysisResultDtoCopyWith(FoodAnalysisResultDto value, $Res Function(FoodAnalysisResultDto) _then) = _$FoodAnalysisResultDtoCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId
});




}
/// @nodoc
class _$FoodAnalysisResultDtoCopyWithImpl<$Res>
    implements $FoodAnalysisResultDtoCopyWith<$Res> {
  _$FoodAnalysisResultDtoCopyWithImpl(this._self, this._then);

  final FoodAnalysisResultDto _self;
  final $Res Function(FoodAnalysisResultDto) _then;

/// Create a copy of FoodAnalysisResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodAnalysisResultDto].
extension FoodAnalysisResultDtoPatterns on FoodAnalysisResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisResultDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodAnalysisId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisResultDto() when $default != null:
return $default(_that.foodAnalysisId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodAnalysisId)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisResultDto():
return $default(_that.foodAnalysisId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodAnalysisId)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisResultDto() when $default != null:
return $default(_that.foodAnalysisId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisResultDto implements FoodAnalysisResultDto {
  const _FoodAnalysisResultDto({required this.foodAnalysisId});
  factory _FoodAnalysisResultDto.fromJson(Map<String, dynamic> json) => _$FoodAnalysisResultDtoFromJson(json);

@override final  int foodAnalysisId;

/// Create a copy of FoodAnalysisResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisResultDtoCopyWith<_FoodAnalysisResultDto> get copyWith => __$FoodAnalysisResultDtoCopyWithImpl<_FoodAnalysisResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisResultDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId);

@override
String toString() {
  return 'FoodAnalysisResultDto(foodAnalysisId: $foodAnalysisId)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisResultDtoCopyWith<$Res> implements $FoodAnalysisResultDtoCopyWith<$Res> {
  factory _$FoodAnalysisResultDtoCopyWith(_FoodAnalysisResultDto value, $Res Function(_FoodAnalysisResultDto) _then) = __$FoodAnalysisResultDtoCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId
});




}
/// @nodoc
class __$FoodAnalysisResultDtoCopyWithImpl<$Res>
    implements _$FoodAnalysisResultDtoCopyWith<$Res> {
  __$FoodAnalysisResultDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalysisResultDto _self;
  final $Res Function(_FoodAnalysisResultDto) _then;

/// Create a copy of FoodAnalysisResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,}) {
  return _then(_FoodAnalysisResultDto(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FoodAnalysisDto {

 int get foodAnalysisId; List<FoodAnalysisFoodDto>? get mainFoodItems; List<FoodAnalysisFoodDto>? get sideFoodItems; List<FoodAnalysisFoodDto>? get otherFoodItems; List<String>? get assumptions; String? get foodImageUrl; NutritionCompareInfoDto? get nutritionCompareInfo; DateTime? get createdAt;
/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisDtoCopyWith<FoodAnalysisDto> get copyWith => _$FoodAnalysisDtoCopyWithImpl<FoodAnalysisDto>(this as FoodAnalysisDto, _$identity);

  /// Serializes this FoodAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&const DeepCollectionEquality().equals(other.mainFoodItems, mainFoodItems)&&const DeepCollectionEquality().equals(other.sideFoodItems, sideFoodItems)&&const DeepCollectionEquality().equals(other.otherFoodItems, otherFoodItems)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.nutritionCompareInfo, nutritionCompareInfo) || other.nutritionCompareInfo == nutritionCompareInfo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,const DeepCollectionEquality().hash(mainFoodItems),const DeepCollectionEquality().hash(sideFoodItems),const DeepCollectionEquality().hash(otherFoodItems),const DeepCollectionEquality().hash(assumptions),foodImageUrl,nutritionCompareInfo,createdAt);

@override
String toString() {
  return 'FoodAnalysisDto(foodAnalysisId: $foodAnalysisId, mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, nutritionCompareInfo: $nutritionCompareInfo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisDtoCopyWith<$Res>  {
  factory $FoodAnalysisDtoCopyWith(FoodAnalysisDto value, $Res Function(FoodAnalysisDto) _then) = _$FoodAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId, List<FoodAnalysisFoodDto>? mainFoodItems, List<FoodAnalysisFoodDto>? sideFoodItems, List<FoodAnalysisFoodDto>? otherFoodItems, List<String>? assumptions, String? foodImageUrl, NutritionCompareInfoDto? nutritionCompareInfo, DateTime? createdAt
});


$NutritionCompareInfoDtoCopyWith<$Res>? get nutritionCompareInfo;

}
/// @nodoc
class _$FoodAnalysisDtoCopyWithImpl<$Res>
    implements $FoodAnalysisDtoCopyWith<$Res> {
  _$FoodAnalysisDtoCopyWithImpl(this._self, this._then);

  final FoodAnalysisDto _self;
  final $Res Function(FoodAnalysisDto) _then;

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,Object? mainFoodItems = freezed,Object? sideFoodItems = freezed,Object? otherFoodItems = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? nutritionCompareInfo = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,mainFoodItems: freezed == mainFoodItems ? _self.mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,sideFoodItems: freezed == sideFoodItems ? _self.sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,otherFoodItems: freezed == otherFoodItems ? _self.otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,assumptions: freezed == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nutritionCompareInfo: freezed == nutritionCompareInfo ? _self.nutritionCompareInfo : nutritionCompareInfo // ignore: cast_nullable_to_non_nullable
as NutritionCompareInfoDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCompareInfoDtoCopyWith<$Res>? get nutritionCompareInfo {
    if (_self.nutritionCompareInfo == null) {
    return null;
  }

  return $NutritionCompareInfoDtoCopyWith<$Res>(_self.nutritionCompareInfo!, (value) {
    return _then(_self.copyWith(nutritionCompareInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalysisDto].
extension FoodAnalysisDtoPatterns on FoodAnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodAnalysisId,  List<FoodAnalysisFoodDto>? mainFoodItems,  List<FoodAnalysisFoodDto>? sideFoodItems,  List<FoodAnalysisFoodDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  NutritionCompareInfoDto? nutritionCompareInfo,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.nutritionCompareInfo,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodAnalysisId,  List<FoodAnalysisFoodDto>? mainFoodItems,  List<FoodAnalysisFoodDto>? sideFoodItems,  List<FoodAnalysisFoodDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  NutritionCompareInfoDto? nutritionCompareInfo,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisDto():
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.nutritionCompareInfo,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodAnalysisId,  List<FoodAnalysisFoodDto>? mainFoodItems,  List<FoodAnalysisFoodDto>? sideFoodItems,  List<FoodAnalysisFoodDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  NutritionCompareInfoDto? nutritionCompareInfo,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.nutritionCompareInfo,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisDto implements FoodAnalysisDto {
  const _FoodAnalysisDto({required this.foodAnalysisId, final  List<FoodAnalysisFoodDto>? mainFoodItems, final  List<FoodAnalysisFoodDto>? sideFoodItems, final  List<FoodAnalysisFoodDto>? otherFoodItems, final  List<String>? assumptions, this.foodImageUrl, this.nutritionCompareInfo, this.createdAt}): _mainFoodItems = mainFoodItems,_sideFoodItems = sideFoodItems,_otherFoodItems = otherFoodItems,_assumptions = assumptions;
  factory _FoodAnalysisDto.fromJson(Map<String, dynamic> json) => _$FoodAnalysisDtoFromJson(json);

@override final  int foodAnalysisId;
 final  List<FoodAnalysisFoodDto>? _mainFoodItems;
@override List<FoodAnalysisFoodDto>? get mainFoodItems {
  final value = _mainFoodItems;
  if (value == null) return null;
  if (_mainFoodItems is EqualUnmodifiableListView) return _mainFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FoodAnalysisFoodDto>? _sideFoodItems;
@override List<FoodAnalysisFoodDto>? get sideFoodItems {
  final value = _sideFoodItems;
  if (value == null) return null;
  if (_sideFoodItems is EqualUnmodifiableListView) return _sideFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FoodAnalysisFoodDto>? _otherFoodItems;
@override List<FoodAnalysisFoodDto>? get otherFoodItems {
  final value = _otherFoodItems;
  if (value == null) return null;
  if (_otherFoodItems is EqualUnmodifiableListView) return _otherFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _assumptions;
@override List<String>? get assumptions {
  final value = _assumptions;
  if (value == null) return null;
  if (_assumptions is EqualUnmodifiableListView) return _assumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? foodImageUrl;
@override final  NutritionCompareInfoDto? nutritionCompareInfo;
@override final  DateTime? createdAt;

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisDtoCopyWith<_FoodAnalysisDto> get copyWith => __$FoodAnalysisDtoCopyWithImpl<_FoodAnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&const DeepCollectionEquality().equals(other._mainFoodItems, _mainFoodItems)&&const DeepCollectionEquality().equals(other._sideFoodItems, _sideFoodItems)&&const DeepCollectionEquality().equals(other._otherFoodItems, _otherFoodItems)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.nutritionCompareInfo, nutritionCompareInfo) || other.nutritionCompareInfo == nutritionCompareInfo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,const DeepCollectionEquality().hash(_mainFoodItems),const DeepCollectionEquality().hash(_sideFoodItems),const DeepCollectionEquality().hash(_otherFoodItems),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,nutritionCompareInfo,createdAt);

@override
String toString() {
  return 'FoodAnalysisDto(foodAnalysisId: $foodAnalysisId, mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, nutritionCompareInfo: $nutritionCompareInfo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisDtoCopyWith<$Res> implements $FoodAnalysisDtoCopyWith<$Res> {
  factory _$FoodAnalysisDtoCopyWith(_FoodAnalysisDto value, $Res Function(_FoodAnalysisDto) _then) = __$FoodAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId, List<FoodAnalysisFoodDto>? mainFoodItems, List<FoodAnalysisFoodDto>? sideFoodItems, List<FoodAnalysisFoodDto>? otherFoodItems, List<String>? assumptions, String? foodImageUrl, NutritionCompareInfoDto? nutritionCompareInfo, DateTime? createdAt
});


@override $NutritionCompareInfoDtoCopyWith<$Res>? get nutritionCompareInfo;

}
/// @nodoc
class __$FoodAnalysisDtoCopyWithImpl<$Res>
    implements _$FoodAnalysisDtoCopyWith<$Res> {
  __$FoodAnalysisDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalysisDto _self;
  final $Res Function(_FoodAnalysisDto) _then;

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,Object? mainFoodItems = freezed,Object? sideFoodItems = freezed,Object? otherFoodItems = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? nutritionCompareInfo = freezed,Object? createdAt = freezed,}) {
  return _then(_FoodAnalysisDto(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,mainFoodItems: freezed == mainFoodItems ? _self._mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,sideFoodItems: freezed == sideFoodItems ? _self._sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,otherFoodItems: freezed == otherFoodItems ? _self._otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodDto>?,assumptions: freezed == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nutritionCompareInfo: freezed == nutritionCompareInfo ? _self.nutritionCompareInfo : nutritionCompareInfo // ignore: cast_nullable_to_non_nullable
as NutritionCompareInfoDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCompareInfoDtoCopyWith<$Res>? get nutritionCompareInfo {
    if (_self.nutritionCompareInfo == null) {
    return null;
  }

  return $NutritionCompareInfoDtoCopyWith<$Res>(_self.nutritionCompareInfo!, (value) {
    return _then(_self.copyWith(nutritionCompareInfo: value));
  });
}
}


/// @nodoc
mixin _$FoodAnalysisFoodDto {

 int get id; String? get name; FoodAnalysisFoodNutrientDto? get kcal; FoodAnalysisFoodNutrientDto? get carbohydrate; FoodAnalysisFoodNutrientDto? get protein; FoodAnalysisFoodNutrientDto? get fat; FoodAnalysisFoodNutrientDto? get sugar; FoodAnalysisFoodNutrientDto? get sodium;
/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisFoodDtoCopyWith<FoodAnalysisFoodDto> get copyWith => _$FoodAnalysisFoodDtoCopyWithImpl<FoodAnalysisFoodDto>(this as FoodAnalysisFoodDto, _$identity);

  /// Serializes this FoodAnalysisFoodDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisFoodDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'FoodAnalysisFoodDto(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisFoodDtoCopyWith<$Res>  {
  factory $FoodAnalysisFoodDtoCopyWith(FoodAnalysisFoodDto value, $Res Function(FoodAnalysisFoodDto) _then) = _$FoodAnalysisFoodDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? name, FoodAnalysisFoodNutrientDto? kcal, FoodAnalysisFoodNutrientDto? carbohydrate, FoodAnalysisFoodNutrientDto? protein, FoodAnalysisFoodNutrientDto? fat, FoodAnalysisFoodNutrientDto? sugar, FoodAnalysisFoodNutrientDto? sodium
});


$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get kcal;$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get carbohydrate;$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get protein;$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get fat;$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sugar;$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$FoodAnalysisFoodDtoCopyWithImpl<$Res>
    implements $FoodAnalysisFoodDtoCopyWith<$Res> {
  _$FoodAnalysisFoodDtoCopyWithImpl(this._self, this._then);

  final FoodAnalysisFoodDto _self;
  final $Res Function(FoodAnalysisFoodDto) _then;

/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,
  ));
}
/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalysisFoodDto].
extension FoodAnalysisFoodDtoPatterns on FoodAnalysisFoodDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisFoodDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisFoodDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisFoodDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  FoodAnalysisFoodNutrientDto? kcal,  FoodAnalysisFoodNutrientDto? carbohydrate,  FoodAnalysisFoodNutrientDto? protein,  FoodAnalysisFoodNutrientDto? fat,  FoodAnalysisFoodNutrientDto? sugar,  FoodAnalysisFoodNutrientDto? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto() when $default != null:
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  FoodAnalysisFoodNutrientDto? kcal,  FoodAnalysisFoodNutrientDto? carbohydrate,  FoodAnalysisFoodNutrientDto? protein,  FoodAnalysisFoodNutrientDto? fat,  FoodAnalysisFoodNutrientDto? sugar,  FoodAnalysisFoodNutrientDto? sodium)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto():
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  FoodAnalysisFoodNutrientDto? kcal,  FoodAnalysisFoodNutrientDto? carbohydrate,  FoodAnalysisFoodNutrientDto? protein,  FoodAnalysisFoodNutrientDto? fat,  FoodAnalysisFoodNutrientDto? sugar,  FoodAnalysisFoodNutrientDto? sodium)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodDto() when $default != null:
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisFoodDto implements FoodAnalysisFoodDto {
  const _FoodAnalysisFoodDto({required this.id, this.name, this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _FoodAnalysisFoodDto.fromJson(Map<String, dynamic> json) => _$FoodAnalysisFoodDtoFromJson(json);

@override final  int id;
@override final  String? name;
@override final  FoodAnalysisFoodNutrientDto? kcal;
@override final  FoodAnalysisFoodNutrientDto? carbohydrate;
@override final  FoodAnalysisFoodNutrientDto? protein;
@override final  FoodAnalysisFoodNutrientDto? fat;
@override final  FoodAnalysisFoodNutrientDto? sugar;
@override final  FoodAnalysisFoodNutrientDto? sodium;

/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisFoodDtoCopyWith<_FoodAnalysisFoodDto> get copyWith => __$FoodAnalysisFoodDtoCopyWithImpl<_FoodAnalysisFoodDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisFoodDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisFoodDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'FoodAnalysisFoodDto(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisFoodDtoCopyWith<$Res> implements $FoodAnalysisFoodDtoCopyWith<$Res> {
  factory _$FoodAnalysisFoodDtoCopyWith(_FoodAnalysisFoodDto value, $Res Function(_FoodAnalysisFoodDto) _then) = __$FoodAnalysisFoodDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, FoodAnalysisFoodNutrientDto? kcal, FoodAnalysisFoodNutrientDto? carbohydrate, FoodAnalysisFoodNutrientDto? protein, FoodAnalysisFoodNutrientDto? fat, FoodAnalysisFoodNutrientDto? sugar, FoodAnalysisFoodNutrientDto? sodium
});


@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get kcal;@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get carbohydrate;@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get protein;@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get fat;@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sugar;@override $FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$FoodAnalysisFoodDtoCopyWithImpl<$Res>
    implements _$FoodAnalysisFoodDtoCopyWith<$Res> {
  __$FoodAnalysisFoodDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalysisFoodDto _self;
  final $Res Function(_FoodAnalysisFoodDto) _then;

/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_FoodAnalysisFoodDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientDto?,
  ));
}

/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of FoodAnalysisFoodDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$FoodAnalysisFoodNutrientDto {

 double? get value; List<double>? get range; String? get unit;
/// Create a copy of FoodAnalysisFoodNutrientDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientDtoCopyWith<FoodAnalysisFoodNutrientDto> get copyWith => _$FoodAnalysisFoodNutrientDtoCopyWithImpl<FoodAnalysisFoodNutrientDto>(this as FoodAnalysisFoodNutrientDto, _$identity);

  /// Serializes this FoodAnalysisFoodNutrientDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisFoodNutrientDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.range, range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(range),unit);

@override
String toString() {
  return 'FoodAnalysisFoodNutrientDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisFoodNutrientDtoCopyWith<$Res>  {
  factory $FoodAnalysisFoodNutrientDtoCopyWith(FoodAnalysisFoodNutrientDto value, $Res Function(FoodAnalysisFoodNutrientDto) _then) = _$FoodAnalysisFoodNutrientDtoCopyWithImpl;
@useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class _$FoodAnalysisFoodNutrientDtoCopyWithImpl<$Res>
    implements $FoodAnalysisFoodNutrientDtoCopyWith<$Res> {
  _$FoodAnalysisFoodNutrientDtoCopyWithImpl(this._self, this._then);

  final FoodAnalysisFoodNutrientDto _self;
  final $Res Function(FoodAnalysisFoodNutrientDto) _then;

/// Create a copy of FoodAnalysisFoodNutrientDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? range = freezed,Object? unit = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: freezed == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodAnalysisFoodNutrientDto].
extension FoodAnalysisFoodNutrientDtoPatterns on FoodAnalysisFoodNutrientDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisFoodNutrientDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisFoodNutrientDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisFoodNutrientDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? value,  List<double>? range,  String? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? value,  List<double>? range,  String? unit)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto():
return $default(_that.value,_that.range,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? value,  List<double>? range,  String? unit)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientDto() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisFoodNutrientDto implements FoodAnalysisFoodNutrientDto {
  const _FoodAnalysisFoodNutrientDto({this.value, final  List<double>? range, this.unit}): _range = range;
  factory _FoodAnalysisFoodNutrientDto.fromJson(Map<String, dynamic> json) => _$FoodAnalysisFoodNutrientDtoFromJson(json);

@override final  double? value;
 final  List<double>? _range;
@override List<double>? get range {
  final value = _range;
  if (value == null) return null;
  if (_range is EqualUnmodifiableListView) return _range;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? unit;

/// Create a copy of FoodAnalysisFoodNutrientDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisFoodNutrientDtoCopyWith<_FoodAnalysisFoodNutrientDto> get copyWith => __$FoodAnalysisFoodNutrientDtoCopyWithImpl<_FoodAnalysisFoodNutrientDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisFoodNutrientDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisFoodNutrientDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._range, _range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_range),unit);

@override
String toString() {
  return 'FoodAnalysisFoodNutrientDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisFoodNutrientDtoCopyWith<$Res> implements $FoodAnalysisFoodNutrientDtoCopyWith<$Res> {
  factory _$FoodAnalysisFoodNutrientDtoCopyWith(_FoodAnalysisFoodNutrientDto value, $Res Function(_FoodAnalysisFoodNutrientDto) _then) = __$FoodAnalysisFoodNutrientDtoCopyWithImpl;
@override @useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class __$FoodAnalysisFoodNutrientDtoCopyWithImpl<$Res>
    implements _$FoodAnalysisFoodNutrientDtoCopyWith<$Res> {
  __$FoodAnalysisFoodNutrientDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalysisFoodNutrientDto _self;
  final $Res Function(_FoodAnalysisFoodNutrientDto) _then;

/// Create a copy of FoodAnalysisFoodNutrientDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? range = freezed,Object? unit = freezed,}) {
  return _then(_FoodAnalysisFoodNutrientDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: freezed == range ? _self._range : range // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NutritionCompareInfoDto {

 NutrientCompareInfoDto? get kcal; NutrientCompareInfoDto? get carbohydrate; NutrientCompareInfoDto? get protein; NutrientCompareInfoDto? get fat; SugarCompareInfoDto? get sugar; SodiumCompareInfoDto? get sodium;
/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionCompareInfoDtoCopyWith<NutritionCompareInfoDto> get copyWith => _$NutritionCompareInfoDtoCopyWithImpl<NutritionCompareInfoDto>(this as NutritionCompareInfoDto, _$identity);

  /// Serializes this NutritionCompareInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionCompareInfoDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionCompareInfoDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $NutritionCompareInfoDtoCopyWith<$Res>  {
  factory $NutritionCompareInfoDtoCopyWith(NutritionCompareInfoDto value, $Res Function(NutritionCompareInfoDto) _then) = _$NutritionCompareInfoDtoCopyWithImpl;
@useResult
$Res call({
 NutrientCompareInfoDto? kcal, NutrientCompareInfoDto? carbohydrate, NutrientCompareInfoDto? protein, NutrientCompareInfoDto? fat, SugarCompareInfoDto? sugar, SodiumCompareInfoDto? sodium
});


$NutrientCompareInfoDtoCopyWith<$Res>? get kcal;$NutrientCompareInfoDtoCopyWith<$Res>? get carbohydrate;$NutrientCompareInfoDtoCopyWith<$Res>? get protein;$NutrientCompareInfoDtoCopyWith<$Res>? get fat;$SugarCompareInfoDtoCopyWith<$Res>? get sugar;$SodiumCompareInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$NutritionCompareInfoDtoCopyWithImpl<$Res>
    implements $NutritionCompareInfoDtoCopyWith<$Res> {
  _$NutritionCompareInfoDtoCopyWithImpl(this._self, this._then);

  final NutritionCompareInfoDto _self;
  final $Res Function(NutritionCompareInfoDto) _then;

/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarCompareInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumCompareInfoDto?,
  ));
}
/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarCompareInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarCompareInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumCompareInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumCompareInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionCompareInfoDto].
extension NutritionCompareInfoDtoPatterns on NutritionCompareInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionCompareInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionCompareInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _NutritionCompareInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionCompareInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientCompareInfoDto? kcal,  NutrientCompareInfoDto? carbohydrate,  NutrientCompareInfoDto? protein,  NutrientCompareInfoDto? fat,  SugarCompareInfoDto? sugar,  SodiumCompareInfoDto? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionCompareInfoDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientCompareInfoDto? kcal,  NutrientCompareInfoDto? carbohydrate,  NutrientCompareInfoDto? protein,  NutrientCompareInfoDto? fat,  SugarCompareInfoDto? sugar,  SodiumCompareInfoDto? sodium)  $default,) {final _that = this;
switch (_that) {
case _NutritionCompareInfoDto():
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientCompareInfoDto? kcal,  NutrientCompareInfoDto? carbohydrate,  NutrientCompareInfoDto? protein,  NutrientCompareInfoDto? fat,  SugarCompareInfoDto? sugar,  SodiumCompareInfoDto? sodium)?  $default,) {final _that = this;
switch (_that) {
case _NutritionCompareInfoDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionCompareInfoDto implements NutritionCompareInfoDto {
  const _NutritionCompareInfoDto({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _NutritionCompareInfoDto.fromJson(Map<String, dynamic> json) => _$NutritionCompareInfoDtoFromJson(json);

@override final  NutrientCompareInfoDto? kcal;
@override final  NutrientCompareInfoDto? carbohydrate;
@override final  NutrientCompareInfoDto? protein;
@override final  NutrientCompareInfoDto? fat;
@override final  SugarCompareInfoDto? sugar;
@override final  SodiumCompareInfoDto? sodium;

/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionCompareInfoDtoCopyWith<_NutritionCompareInfoDto> get copyWith => __$NutritionCompareInfoDtoCopyWithImpl<_NutritionCompareInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionCompareInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionCompareInfoDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionCompareInfoDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$NutritionCompareInfoDtoCopyWith<$Res> implements $NutritionCompareInfoDtoCopyWith<$Res> {
  factory _$NutritionCompareInfoDtoCopyWith(_NutritionCompareInfoDto value, $Res Function(_NutritionCompareInfoDto) _then) = __$NutritionCompareInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 NutrientCompareInfoDto? kcal, NutrientCompareInfoDto? carbohydrate, NutrientCompareInfoDto? protein, NutrientCompareInfoDto? fat, SugarCompareInfoDto? sugar, SodiumCompareInfoDto? sodium
});


@override $NutrientCompareInfoDtoCopyWith<$Res>? get kcal;@override $NutrientCompareInfoDtoCopyWith<$Res>? get carbohydrate;@override $NutrientCompareInfoDtoCopyWith<$Res>? get protein;@override $NutrientCompareInfoDtoCopyWith<$Res>? get fat;@override $SugarCompareInfoDtoCopyWith<$Res>? get sugar;@override $SodiumCompareInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$NutritionCompareInfoDtoCopyWithImpl<$Res>
    implements _$NutritionCompareInfoDtoCopyWith<$Res> {
  __$NutritionCompareInfoDtoCopyWithImpl(this._self, this._then);

  final _NutritionCompareInfoDto _self;
  final $Res Function(_NutritionCompareInfoDto) _then;

/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_NutritionCompareInfoDto(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarCompareInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumCompareInfoDto?,
  ));
}

/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientCompareInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarCompareInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarCompareInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumCompareInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumCompareInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientCompareInfoDto {

 double? get intake; int? get target; double? get percent;
/// Create a copy of NutrientCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientCompareInfoDtoCopyWith<NutrientCompareInfoDto> get copyWith => _$NutrientCompareInfoDtoCopyWithImpl<NutrientCompareInfoDto>(this as NutrientCompareInfoDto, _$identity);

  /// Serializes this NutrientCompareInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientCompareInfoDto(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $NutrientCompareInfoDtoCopyWith<$Res>  {
  factory $NutrientCompareInfoDtoCopyWith(NutrientCompareInfoDto value, $Res Function(NutrientCompareInfoDto) _then) = _$NutrientCompareInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class _$NutrientCompareInfoDtoCopyWithImpl<$Res>
    implements $NutrientCompareInfoDtoCopyWith<$Res> {
  _$NutrientCompareInfoDtoCopyWithImpl(this._self, this._then);

  final NutrientCompareInfoDto _self;
  final $Res Function(NutrientCompareInfoDto) _then;

/// Create a copy of NutrientCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? target = freezed,Object? percent = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientCompareInfoDto].
extension NutrientCompareInfoDtoPatterns on NutrientCompareInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientCompareInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientCompareInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _NutrientCompareInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientCompareInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? target,  double? percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientCompareInfoDto() when $default != null:
return $default(_that.intake,_that.target,_that.percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? target,  double? percent)  $default,) {final _that = this;
switch (_that) {
case _NutrientCompareInfoDto():
return $default(_that.intake,_that.target,_that.percent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? target,  double? percent)?  $default,) {final _that = this;
switch (_that) {
case _NutrientCompareInfoDto() when $default != null:
return $default(_that.intake,_that.target,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientCompareInfoDto implements NutrientCompareInfoDto {
  const _NutrientCompareInfoDto({this.intake, this.target, this.percent});
  factory _NutrientCompareInfoDto.fromJson(Map<String, dynamic> json) => _$NutrientCompareInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? target;
@override final  double? percent;

/// Create a copy of NutrientCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientCompareInfoDtoCopyWith<_NutrientCompareInfoDto> get copyWith => __$NutrientCompareInfoDtoCopyWithImpl<_NutrientCompareInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientCompareInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientCompareInfoDto(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$NutrientCompareInfoDtoCopyWith<$Res> implements $NutrientCompareInfoDtoCopyWith<$Res> {
  factory _$NutrientCompareInfoDtoCopyWith(_NutrientCompareInfoDto value, $Res Function(_NutrientCompareInfoDto) _then) = __$NutrientCompareInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class __$NutrientCompareInfoDtoCopyWithImpl<$Res>
    implements _$NutrientCompareInfoDtoCopyWith<$Res> {
  __$NutrientCompareInfoDtoCopyWithImpl(this._self, this._then);

  final _NutrientCompareInfoDto _self;
  final $Res Function(_NutrientCompareInfoDto) _then;

/// Create a copy of NutrientCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? target = freezed,Object? percent = freezed,}) {
  return _then(_NutrientCompareInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarCompareInfoDto {

 double? get intake; int? get max; String? get statusCode;
/// Create a copy of SugarCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarCompareInfoDtoCopyWith<SugarCompareInfoDto> get copyWith => _$SugarCompareInfoDtoCopyWithImpl<SugarCompareInfoDto>(this as SugarCompareInfoDto, _$identity);

  /// Serializes this SugarCompareInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,statusCode);

@override
String toString() {
  return 'SugarCompareInfoDto(intake: $intake, max: $max, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SugarCompareInfoDtoCopyWith<$Res>  {
  factory $SugarCompareInfoDtoCopyWith(SugarCompareInfoDto value, $Res Function(SugarCompareInfoDto) _then) = _$SugarCompareInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? max, String? statusCode
});




}
/// @nodoc
class _$SugarCompareInfoDtoCopyWithImpl<$Res>
    implements $SugarCompareInfoDtoCopyWith<$Res> {
  _$SugarCompareInfoDtoCopyWithImpl(this._self, this._then);

  final SugarCompareInfoDto _self;
  final $Res Function(SugarCompareInfoDto) _then;

/// Create a copy of SugarCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? max = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarCompareInfoDto].
extension SugarCompareInfoDtoPatterns on SugarCompareInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarCompareInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarCompareInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SugarCompareInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarCompareInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SugarCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? max,  String? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarCompareInfoDto() when $default != null:
return $default(_that.intake,_that.max,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? max,  String? statusCode)  $default,) {final _that = this;
switch (_that) {
case _SugarCompareInfoDto():
return $default(_that.intake,_that.max,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? max,  String? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _SugarCompareInfoDto() when $default != null:
return $default(_that.intake,_that.max,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarCompareInfoDto implements SugarCompareInfoDto {
  const _SugarCompareInfoDto({this.intake, this.max, this.statusCode});
  factory _SugarCompareInfoDto.fromJson(Map<String, dynamic> json) => _$SugarCompareInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? max;
@override final  String? statusCode;

/// Create a copy of SugarCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarCompareInfoDtoCopyWith<_SugarCompareInfoDto> get copyWith => __$SugarCompareInfoDtoCopyWithImpl<_SugarCompareInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarCompareInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,statusCode);

@override
String toString() {
  return 'SugarCompareInfoDto(intake: $intake, max: $max, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SugarCompareInfoDtoCopyWith<$Res> implements $SugarCompareInfoDtoCopyWith<$Res> {
  factory _$SugarCompareInfoDtoCopyWith(_SugarCompareInfoDto value, $Res Function(_SugarCompareInfoDto) _then) = __$SugarCompareInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? max, String? statusCode
});




}
/// @nodoc
class __$SugarCompareInfoDtoCopyWithImpl<$Res>
    implements _$SugarCompareInfoDtoCopyWith<$Res> {
  __$SugarCompareInfoDtoCopyWithImpl(this._self, this._then);

  final _SugarCompareInfoDto _self;
  final $Res Function(_SugarCompareInfoDto) _then;

/// Create a copy of SugarCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? max = freezed,Object? statusCode = freezed,}) {
  return _then(_SugarCompareInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SodiumCompareInfoDto {

 double? get intake; int? get adequate; int? get riskReduction; String? get statusCode;
/// Create a copy of SodiumCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumCompareInfoDtoCopyWith<SodiumCompareInfoDto> get copyWith => _$SodiumCompareInfoDtoCopyWithImpl<SodiumCompareInfoDto>(this as SodiumCompareInfoDto, _$identity);

  /// Serializes this SodiumCompareInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,statusCode);

@override
String toString() {
  return 'SodiumCompareInfoDto(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SodiumCompareInfoDtoCopyWith<$Res>  {
  factory $SodiumCompareInfoDtoCopyWith(SodiumCompareInfoDto value, $Res Function(SodiumCompareInfoDto) _then) = _$SodiumCompareInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, String? statusCode
});




}
/// @nodoc
class _$SodiumCompareInfoDtoCopyWithImpl<$Res>
    implements $SodiumCompareInfoDtoCopyWith<$Res> {
  _$SodiumCompareInfoDtoCopyWithImpl(this._self, this._then);

  final SodiumCompareInfoDto _self;
  final $Res Function(SodiumCompareInfoDto) _then;

/// Create a copy of SodiumCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumCompareInfoDto].
extension SodiumCompareInfoDtoPatterns on SodiumCompareInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumCompareInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumCompareInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SodiumCompareInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumCompareInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumCompareInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  String? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumCompareInfoDto() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  String? statusCode)  $default,) {final _that = this;
switch (_that) {
case _SodiumCompareInfoDto():
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? adequate,  int? riskReduction,  String? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _SodiumCompareInfoDto() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumCompareInfoDto implements SodiumCompareInfoDto {
  const _SodiumCompareInfoDto({this.intake, this.adequate, this.riskReduction, this.statusCode});
  factory _SodiumCompareInfoDto.fromJson(Map<String, dynamic> json) => _$SodiumCompareInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? adequate;
@override final  int? riskReduction;
@override final  String? statusCode;

/// Create a copy of SodiumCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumCompareInfoDtoCopyWith<_SodiumCompareInfoDto> get copyWith => __$SodiumCompareInfoDtoCopyWithImpl<_SodiumCompareInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumCompareInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumCompareInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,statusCode);

@override
String toString() {
  return 'SodiumCompareInfoDto(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SodiumCompareInfoDtoCopyWith<$Res> implements $SodiumCompareInfoDtoCopyWith<$Res> {
  factory _$SodiumCompareInfoDtoCopyWith(_SodiumCompareInfoDto value, $Res Function(_SodiumCompareInfoDto) _then) = __$SodiumCompareInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, String? statusCode
});




}
/// @nodoc
class __$SodiumCompareInfoDtoCopyWithImpl<$Res>
    implements _$SodiumCompareInfoDtoCopyWith<$Res> {
  __$SodiumCompareInfoDtoCopyWithImpl(this._self, this._then);

  final _SodiumCompareInfoDto _self;
  final $Res Function(_SodiumCompareInfoDto) _then;

/// Create a copy of SodiumCompareInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? statusCode = freezed,}) {
  return _then(_SodiumCompareInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
