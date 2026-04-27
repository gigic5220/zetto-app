// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_analysis_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodAnalysisResultEntity {

 int get foodAnalysisId;
/// Create a copy of FoodAnalysisResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisResultEntityCopyWith<FoodAnalysisResultEntity> get copyWith => _$FoodAnalysisResultEntityCopyWithImpl<FoodAnalysisResultEntity>(this as FoodAnalysisResultEntity, _$identity);

  /// Serializes this FoodAnalysisResultEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisResultEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId);

@override
String toString() {
  return 'FoodAnalysisResultEntity(foodAnalysisId: $foodAnalysisId)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisResultEntityCopyWith<$Res>  {
  factory $FoodAnalysisResultEntityCopyWith(FoodAnalysisResultEntity value, $Res Function(FoodAnalysisResultEntity) _then) = _$FoodAnalysisResultEntityCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId
});




}
/// @nodoc
class _$FoodAnalysisResultEntityCopyWithImpl<$Res>
    implements $FoodAnalysisResultEntityCopyWith<$Res> {
  _$FoodAnalysisResultEntityCopyWithImpl(this._self, this._then);

  final FoodAnalysisResultEntity _self;
  final $Res Function(FoodAnalysisResultEntity) _then;

/// Create a copy of FoodAnalysisResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodAnalysisResultEntity].
extension FoodAnalysisResultEntityPatterns on FoodAnalysisResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisResultEntity() when $default != null:
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
case _FoodAnalysisResultEntity() when $default != null:
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
case _FoodAnalysisResultEntity():
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
case _FoodAnalysisResultEntity() when $default != null:
return $default(_that.foodAnalysisId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisResultEntity implements FoodAnalysisResultEntity {
  const _FoodAnalysisResultEntity({required this.foodAnalysisId});
  factory _FoodAnalysisResultEntity.fromJson(Map<String, dynamic> json) => _$FoodAnalysisResultEntityFromJson(json);

@override final  int foodAnalysisId;

/// Create a copy of FoodAnalysisResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisResultEntityCopyWith<_FoodAnalysisResultEntity> get copyWith => __$FoodAnalysisResultEntityCopyWithImpl<_FoodAnalysisResultEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisResultEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisResultEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId);

@override
String toString() {
  return 'FoodAnalysisResultEntity(foodAnalysisId: $foodAnalysisId)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisResultEntityCopyWith<$Res> implements $FoodAnalysisResultEntityCopyWith<$Res> {
  factory _$FoodAnalysisResultEntityCopyWith(_FoodAnalysisResultEntity value, $Res Function(_FoodAnalysisResultEntity) _then) = __$FoodAnalysisResultEntityCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId
});




}
/// @nodoc
class __$FoodAnalysisResultEntityCopyWithImpl<$Res>
    implements _$FoodAnalysisResultEntityCopyWith<$Res> {
  __$FoodAnalysisResultEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalysisResultEntity _self;
  final $Res Function(_FoodAnalysisResultEntity) _then;

/// Create a copy of FoodAnalysisResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,}) {
  return _then(_FoodAnalysisResultEntity(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FoodAnalysisEntity {

 int get foodAnalysisId; List<FoodAnalysisFoodEntity> get mainFoodItems; List<FoodAnalysisFoodEntity> get sideFoodItems; List<FoodAnalysisFoodEntity> get otherFoodItems; List<String> get assumptions; String get foodImageUrl; DateTime? get createdAt; NutritionCompareInfoEntity? get nutritionCompareInfo;
/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisEntityCopyWith<FoodAnalysisEntity> get copyWith => _$FoodAnalysisEntityCopyWithImpl<FoodAnalysisEntity>(this as FoodAnalysisEntity, _$identity);

  /// Serializes this FoodAnalysisEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&const DeepCollectionEquality().equals(other.mainFoodItems, mainFoodItems)&&const DeepCollectionEquality().equals(other.sideFoodItems, sideFoodItems)&&const DeepCollectionEquality().equals(other.otherFoodItems, otherFoodItems)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.nutritionCompareInfo, nutritionCompareInfo) || other.nutritionCompareInfo == nutritionCompareInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,const DeepCollectionEquality().hash(mainFoodItems),const DeepCollectionEquality().hash(sideFoodItems),const DeepCollectionEquality().hash(otherFoodItems),const DeepCollectionEquality().hash(assumptions),foodImageUrl,createdAt,nutritionCompareInfo);

@override
String toString() {
  return 'FoodAnalysisEntity(foodAnalysisId: $foodAnalysisId, mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, nutritionCompareInfo: $nutritionCompareInfo)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisEntityCopyWith<$Res>  {
  factory $FoodAnalysisEntityCopyWith(FoodAnalysisEntity value, $Res Function(FoodAnalysisEntity) _then) = _$FoodAnalysisEntityCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId, List<FoodAnalysisFoodEntity> mainFoodItems, List<FoodAnalysisFoodEntity> sideFoodItems, List<FoodAnalysisFoodEntity> otherFoodItems, List<String> assumptions, String foodImageUrl, DateTime? createdAt, NutritionCompareInfoEntity? nutritionCompareInfo
});


$NutritionCompareInfoEntityCopyWith<$Res>? get nutritionCompareInfo;

}
/// @nodoc
class _$FoodAnalysisEntityCopyWithImpl<$Res>
    implements $FoodAnalysisEntityCopyWith<$Res> {
  _$FoodAnalysisEntityCopyWithImpl(this._self, this._then);

  final FoodAnalysisEntity _self;
  final $Res Function(FoodAnalysisEntity) _then;

/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,Object? mainFoodItems = null,Object? sideFoodItems = null,Object? otherFoodItems = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? nutritionCompareInfo = freezed,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,mainFoodItems: null == mainFoodItems ? _self.mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,sideFoodItems: null == sideFoodItems ? _self.sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,otherFoodItems: null == otherFoodItems ? _self.otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,assumptions: null == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nutritionCompareInfo: freezed == nutritionCompareInfo ? _self.nutritionCompareInfo : nutritionCompareInfo // ignore: cast_nullable_to_non_nullable
as NutritionCompareInfoEntity?,
  ));
}
/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCompareInfoEntityCopyWith<$Res>? get nutritionCompareInfo {
    if (_self.nutritionCompareInfo == null) {
    return null;
  }

  return $NutritionCompareInfoEntityCopyWith<$Res>(_self.nutritionCompareInfo!, (value) {
    return _then(_self.copyWith(nutritionCompareInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalysisEntity].
extension FoodAnalysisEntityPatterns on FoodAnalysisEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodAnalysisId,  List<FoodAnalysisFoodEntity> mainFoodItems,  List<FoodAnalysisFoodEntity> sideFoodItems,  List<FoodAnalysisFoodEntity> otherFoodItems,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionCompareInfoEntity? nutritionCompareInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisEntity() when $default != null:
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionCompareInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodAnalysisId,  List<FoodAnalysisFoodEntity> mainFoodItems,  List<FoodAnalysisFoodEntity> sideFoodItems,  List<FoodAnalysisFoodEntity> otherFoodItems,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionCompareInfoEntity? nutritionCompareInfo)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisEntity():
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionCompareInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodAnalysisId,  List<FoodAnalysisFoodEntity> mainFoodItems,  List<FoodAnalysisFoodEntity> sideFoodItems,  List<FoodAnalysisFoodEntity> otherFoodItems,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionCompareInfoEntity? nutritionCompareInfo)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisEntity() when $default != null:
return $default(_that.foodAnalysisId,_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionCompareInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisEntity implements FoodAnalysisEntity {
  const _FoodAnalysisEntity({required this.foodAnalysisId, final  List<FoodAnalysisFoodEntity> mainFoodItems = const <FoodAnalysisFoodEntity>[], final  List<FoodAnalysisFoodEntity> sideFoodItems = const <FoodAnalysisFoodEntity>[], final  List<FoodAnalysisFoodEntity> otherFoodItems = const <FoodAnalysisFoodEntity>[], final  List<String> assumptions = const <String>[], this.foodImageUrl = '', this.createdAt, this.nutritionCompareInfo}): _mainFoodItems = mainFoodItems,_sideFoodItems = sideFoodItems,_otherFoodItems = otherFoodItems,_assumptions = assumptions;
  factory _FoodAnalysisEntity.fromJson(Map<String, dynamic> json) => _$FoodAnalysisEntityFromJson(json);

@override final  int foodAnalysisId;
 final  List<FoodAnalysisFoodEntity> _mainFoodItems;
@override@JsonKey() List<FoodAnalysisFoodEntity> get mainFoodItems {
  if (_mainFoodItems is EqualUnmodifiableListView) return _mainFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainFoodItems);
}

 final  List<FoodAnalysisFoodEntity> _sideFoodItems;
@override@JsonKey() List<FoodAnalysisFoodEntity> get sideFoodItems {
  if (_sideFoodItems is EqualUnmodifiableListView) return _sideFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sideFoodItems);
}

 final  List<FoodAnalysisFoodEntity> _otherFoodItems;
@override@JsonKey() List<FoodAnalysisFoodEntity> get otherFoodItems {
  if (_otherFoodItems is EqualUnmodifiableListView) return _otherFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_otherFoodItems);
}

 final  List<String> _assumptions;
@override@JsonKey() List<String> get assumptions {
  if (_assumptions is EqualUnmodifiableListView) return _assumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assumptions);
}

@override@JsonKey() final  String foodImageUrl;
@override final  DateTime? createdAt;
@override final  NutritionCompareInfoEntity? nutritionCompareInfo;

/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisEntityCopyWith<_FoodAnalysisEntity> get copyWith => __$FoodAnalysisEntityCopyWithImpl<_FoodAnalysisEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&const DeepCollectionEquality().equals(other._mainFoodItems, _mainFoodItems)&&const DeepCollectionEquality().equals(other._sideFoodItems, _sideFoodItems)&&const DeepCollectionEquality().equals(other._otherFoodItems, _otherFoodItems)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.nutritionCompareInfo, nutritionCompareInfo) || other.nutritionCompareInfo == nutritionCompareInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,const DeepCollectionEquality().hash(_mainFoodItems),const DeepCollectionEquality().hash(_sideFoodItems),const DeepCollectionEquality().hash(_otherFoodItems),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,createdAt,nutritionCompareInfo);

@override
String toString() {
  return 'FoodAnalysisEntity(foodAnalysisId: $foodAnalysisId, mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, nutritionCompareInfo: $nutritionCompareInfo)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisEntityCopyWith<$Res> implements $FoodAnalysisEntityCopyWith<$Res> {
  factory _$FoodAnalysisEntityCopyWith(_FoodAnalysisEntity value, $Res Function(_FoodAnalysisEntity) _then) = __$FoodAnalysisEntityCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId, List<FoodAnalysisFoodEntity> mainFoodItems, List<FoodAnalysisFoodEntity> sideFoodItems, List<FoodAnalysisFoodEntity> otherFoodItems, List<String> assumptions, String foodImageUrl, DateTime? createdAt, NutritionCompareInfoEntity? nutritionCompareInfo
});


@override $NutritionCompareInfoEntityCopyWith<$Res>? get nutritionCompareInfo;

}
/// @nodoc
class __$FoodAnalysisEntityCopyWithImpl<$Res>
    implements _$FoodAnalysisEntityCopyWith<$Res> {
  __$FoodAnalysisEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalysisEntity _self;
  final $Res Function(_FoodAnalysisEntity) _then;

/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,Object? mainFoodItems = null,Object? sideFoodItems = null,Object? otherFoodItems = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? nutritionCompareInfo = freezed,}) {
  return _then(_FoodAnalysisEntity(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,mainFoodItems: null == mainFoodItems ? _self._mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,sideFoodItems: null == sideFoodItems ? _self._sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,otherFoodItems: null == otherFoodItems ? _self._otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<FoodAnalysisFoodEntity>,assumptions: null == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nutritionCompareInfo: freezed == nutritionCompareInfo ? _self.nutritionCompareInfo : nutritionCompareInfo // ignore: cast_nullable_to_non_nullable
as NutritionCompareInfoEntity?,
  ));
}

/// Create a copy of FoodAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionCompareInfoEntityCopyWith<$Res>? get nutritionCompareInfo {
    if (_self.nutritionCompareInfo == null) {
    return null;
  }

  return $NutritionCompareInfoEntityCopyWith<$Res>(_self.nutritionCompareInfo!, (value) {
    return _then(_self.copyWith(nutritionCompareInfo: value));
  });
}
}


/// @nodoc
mixin _$FoodAnalysisFoodEntity {

 int get id; String get name; FoodAnalysisFoodNutrientEntity? get kcal; FoodAnalysisFoodNutrientEntity? get carbohydrate; FoodAnalysisFoodNutrientEntity? get protein; FoodAnalysisFoodNutrientEntity? get fat; FoodAnalysisFoodNutrientEntity? get sugar; FoodAnalysisFoodNutrientEntity? get sodium;
/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisFoodEntityCopyWith<FoodAnalysisFoodEntity> get copyWith => _$FoodAnalysisFoodEntityCopyWithImpl<FoodAnalysisFoodEntity>(this as FoodAnalysisFoodEntity, _$identity);

  /// Serializes this FoodAnalysisFoodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisFoodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'FoodAnalysisFoodEntity(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisFoodEntityCopyWith<$Res>  {
  factory $FoodAnalysisFoodEntityCopyWith(FoodAnalysisFoodEntity value, $Res Function(FoodAnalysisFoodEntity) _then) = _$FoodAnalysisFoodEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, FoodAnalysisFoodNutrientEntity? kcal, FoodAnalysisFoodNutrientEntity? carbohydrate, FoodAnalysisFoodNutrientEntity? protein, FoodAnalysisFoodNutrientEntity? fat, FoodAnalysisFoodNutrientEntity? sugar, FoodAnalysisFoodNutrientEntity? sodium
});


$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get kcal;$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get carbohydrate;$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get protein;$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get fat;$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sugar;$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$FoodAnalysisFoodEntityCopyWithImpl<$Res>
    implements $FoodAnalysisFoodEntityCopyWith<$Res> {
  _$FoodAnalysisFoodEntityCopyWithImpl(this._self, this._then);

  final FoodAnalysisFoodEntity _self;
  final $Res Function(FoodAnalysisFoodEntity) _then;

/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,
  ));
}
/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalysisFoodEntity].
extension FoodAnalysisFoodEntityPatterns on FoodAnalysisFoodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisFoodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisFoodEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisFoodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  FoodAnalysisFoodNutrientEntity? kcal,  FoodAnalysisFoodNutrientEntity? carbohydrate,  FoodAnalysisFoodNutrientEntity? protein,  FoodAnalysisFoodNutrientEntity? fat,  FoodAnalysisFoodNutrientEntity? sugar,  FoodAnalysisFoodNutrientEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  FoodAnalysisFoodNutrientEntity? kcal,  FoodAnalysisFoodNutrientEntity? carbohydrate,  FoodAnalysisFoodNutrientEntity? protein,  FoodAnalysisFoodNutrientEntity? fat,  FoodAnalysisFoodNutrientEntity? sugar,  FoodAnalysisFoodNutrientEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  FoodAnalysisFoodNutrientEntity? kcal,  FoodAnalysisFoodNutrientEntity? carbohydrate,  FoodAnalysisFoodNutrientEntity? protein,  FoodAnalysisFoodNutrientEntity? fat,  FoodAnalysisFoodNutrientEntity? sugar,  FoodAnalysisFoodNutrientEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodEntity() when $default != null:
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisFoodEntity implements FoodAnalysisFoodEntity {
  const _FoodAnalysisFoodEntity({required this.id, this.name = '', this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _FoodAnalysisFoodEntity.fromJson(Map<String, dynamic> json) => _$FoodAnalysisFoodEntityFromJson(json);

@override final  int id;
@override@JsonKey() final  String name;
@override final  FoodAnalysisFoodNutrientEntity? kcal;
@override final  FoodAnalysisFoodNutrientEntity? carbohydrate;
@override final  FoodAnalysisFoodNutrientEntity? protein;
@override final  FoodAnalysisFoodNutrientEntity? fat;
@override final  FoodAnalysisFoodNutrientEntity? sugar;
@override final  FoodAnalysisFoodNutrientEntity? sodium;

/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisFoodEntityCopyWith<_FoodAnalysisFoodEntity> get copyWith => __$FoodAnalysisFoodEntityCopyWithImpl<_FoodAnalysisFoodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisFoodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisFoodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'FoodAnalysisFoodEntity(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisFoodEntityCopyWith<$Res> implements $FoodAnalysisFoodEntityCopyWith<$Res> {
  factory _$FoodAnalysisFoodEntityCopyWith(_FoodAnalysisFoodEntity value, $Res Function(_FoodAnalysisFoodEntity) _then) = __$FoodAnalysisFoodEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, FoodAnalysisFoodNutrientEntity? kcal, FoodAnalysisFoodNutrientEntity? carbohydrate, FoodAnalysisFoodNutrientEntity? protein, FoodAnalysisFoodNutrientEntity? fat, FoodAnalysisFoodNutrientEntity? sugar, FoodAnalysisFoodNutrientEntity? sodium
});


@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get kcal;@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get carbohydrate;@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get protein;@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get fat;@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sugar;@override $FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$FoodAnalysisFoodEntityCopyWithImpl<$Res>
    implements _$FoodAnalysisFoodEntityCopyWith<$Res> {
  __$FoodAnalysisFoodEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalysisFoodEntity _self;
  final $Res Function(_FoodAnalysisFoodEntity) _then;

/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_FoodAnalysisFoodEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodAnalysisFoodNutrientEntity?,
  ));
}

/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of FoodAnalysisFoodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodAnalysisFoodNutrientEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$FoodAnalysisFoodNutrientEntity {

 double? get value; List<double> get range; String? get unit;
/// Create a copy of FoodAnalysisFoodNutrientEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisFoodNutrientEntityCopyWith<FoodAnalysisFoodNutrientEntity> get copyWith => _$FoodAnalysisFoodNutrientEntityCopyWithImpl<FoodAnalysisFoodNutrientEntity>(this as FoodAnalysisFoodNutrientEntity, _$identity);

  /// Serializes this FoodAnalysisFoodNutrientEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisFoodNutrientEntity&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.range, range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(range),unit);

@override
String toString() {
  return 'FoodAnalysisFoodNutrientEntity(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisFoodNutrientEntityCopyWith<$Res>  {
  factory $FoodAnalysisFoodNutrientEntityCopyWith(FoodAnalysisFoodNutrientEntity value, $Res Function(FoodAnalysisFoodNutrientEntity) _then) = _$FoodAnalysisFoodNutrientEntityCopyWithImpl;
@useResult
$Res call({
 double? value, List<double> range, String? unit
});




}
/// @nodoc
class _$FoodAnalysisFoodNutrientEntityCopyWithImpl<$Res>
    implements $FoodAnalysisFoodNutrientEntityCopyWith<$Res> {
  _$FoodAnalysisFoodNutrientEntityCopyWithImpl(this._self, this._then);

  final FoodAnalysisFoodNutrientEntity _self;
  final $Res Function(FoodAnalysisFoodNutrientEntity) _then;

/// Create a copy of FoodAnalysisFoodNutrientEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? range = null,Object? unit = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as List<double>,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodAnalysisFoodNutrientEntity].
extension FoodAnalysisFoodNutrientEntityPatterns on FoodAnalysisFoodNutrientEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalysisFoodNutrientEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalysisFoodNutrientEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalysisFoodNutrientEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? value,  List<double> range,  String? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? value,  List<double> range,  String? unit)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? value,  List<double> range,  String? unit)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisFoodNutrientEntity() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisFoodNutrientEntity implements FoodAnalysisFoodNutrientEntity {
  const _FoodAnalysisFoodNutrientEntity({this.value, final  List<double> range = const <double>[], this.unit}): _range = range;
  factory _FoodAnalysisFoodNutrientEntity.fromJson(Map<String, dynamic> json) => _$FoodAnalysisFoodNutrientEntityFromJson(json);

@override final  double? value;
 final  List<double> _range;
@override@JsonKey() List<double> get range {
  if (_range is EqualUnmodifiableListView) return _range;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_range);
}

@override final  String? unit;

/// Create a copy of FoodAnalysisFoodNutrientEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalysisFoodNutrientEntityCopyWith<_FoodAnalysisFoodNutrientEntity> get copyWith => __$FoodAnalysisFoodNutrientEntityCopyWithImpl<_FoodAnalysisFoodNutrientEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalysisFoodNutrientEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisFoodNutrientEntity&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._range, _range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_range),unit);

@override
String toString() {
  return 'FoodAnalysisFoodNutrientEntity(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisFoodNutrientEntityCopyWith<$Res> implements $FoodAnalysisFoodNutrientEntityCopyWith<$Res> {
  factory _$FoodAnalysisFoodNutrientEntityCopyWith(_FoodAnalysisFoodNutrientEntity value, $Res Function(_FoodAnalysisFoodNutrientEntity) _then) = __$FoodAnalysisFoodNutrientEntityCopyWithImpl;
@override @useResult
$Res call({
 double? value, List<double> range, String? unit
});




}
/// @nodoc
class __$FoodAnalysisFoodNutrientEntityCopyWithImpl<$Res>
    implements _$FoodAnalysisFoodNutrientEntityCopyWith<$Res> {
  __$FoodAnalysisFoodNutrientEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalysisFoodNutrientEntity _self;
  final $Res Function(_FoodAnalysisFoodNutrientEntity) _then;

/// Create a copy of FoodAnalysisFoodNutrientEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? range = null,Object? unit = freezed,}) {
  return _then(_FoodAnalysisFoodNutrientEntity(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: null == range ? _self._range : range // ignore: cast_nullable_to_non_nullable
as List<double>,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NutritionCompareInfoEntity {

 NutrientCompareInfoEntity? get kcal; NutrientCompareInfoEntity? get carbohydrate; NutrientCompareInfoEntity? get protein; NutrientCompareInfoEntity? get fat; SugarCompareInfoEntity? get sugar; SodiumCompareInfoEntity? get sodium;
/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionCompareInfoEntityCopyWith<NutritionCompareInfoEntity> get copyWith => _$NutritionCompareInfoEntityCopyWithImpl<NutritionCompareInfoEntity>(this as NutritionCompareInfoEntity, _$identity);

  /// Serializes this NutritionCompareInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionCompareInfoEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionCompareInfoEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $NutritionCompareInfoEntityCopyWith<$Res>  {
  factory $NutritionCompareInfoEntityCopyWith(NutritionCompareInfoEntity value, $Res Function(NutritionCompareInfoEntity) _then) = _$NutritionCompareInfoEntityCopyWithImpl;
@useResult
$Res call({
 NutrientCompareInfoEntity? kcal, NutrientCompareInfoEntity? carbohydrate, NutrientCompareInfoEntity? protein, NutrientCompareInfoEntity? fat, SugarCompareInfoEntity? sugar, SodiumCompareInfoEntity? sodium
});


$NutrientCompareInfoEntityCopyWith<$Res>? get kcal;$NutrientCompareInfoEntityCopyWith<$Res>? get carbohydrate;$NutrientCompareInfoEntityCopyWith<$Res>? get protein;$NutrientCompareInfoEntityCopyWith<$Res>? get fat;$SugarCompareInfoEntityCopyWith<$Res>? get sugar;$SodiumCompareInfoEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$NutritionCompareInfoEntityCopyWithImpl<$Res>
    implements $NutritionCompareInfoEntityCopyWith<$Res> {
  _$NutritionCompareInfoEntityCopyWithImpl(this._self, this._then);

  final NutritionCompareInfoEntity _self;
  final $Res Function(NutritionCompareInfoEntity) _then;

/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarCompareInfoEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumCompareInfoEntity?,
  ));
}
/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarCompareInfoEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarCompareInfoEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumCompareInfoEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumCompareInfoEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionCompareInfoEntity].
extension NutritionCompareInfoEntityPatterns on NutritionCompareInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionCompareInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionCompareInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionCompareInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientCompareInfoEntity? kcal,  NutrientCompareInfoEntity? carbohydrate,  NutrientCompareInfoEntity? protein,  NutrientCompareInfoEntity? fat,  SugarCompareInfoEntity? sugar,  SodiumCompareInfoEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientCompareInfoEntity? kcal,  NutrientCompareInfoEntity? carbohydrate,  NutrientCompareInfoEntity? protein,  NutrientCompareInfoEntity? fat,  SugarCompareInfoEntity? sugar,  SodiumCompareInfoEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientCompareInfoEntity? kcal,  NutrientCompareInfoEntity? carbohydrate,  NutrientCompareInfoEntity? protein,  NutrientCompareInfoEntity? fat,  SugarCompareInfoEntity? sugar,  SodiumCompareInfoEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _NutritionCompareInfoEntity() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionCompareInfoEntity implements NutritionCompareInfoEntity {
  const _NutritionCompareInfoEntity({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _NutritionCompareInfoEntity.fromJson(Map<String, dynamic> json) => _$NutritionCompareInfoEntityFromJson(json);

@override final  NutrientCompareInfoEntity? kcal;
@override final  NutrientCompareInfoEntity? carbohydrate;
@override final  NutrientCompareInfoEntity? protein;
@override final  NutrientCompareInfoEntity? fat;
@override final  SugarCompareInfoEntity? sugar;
@override final  SodiumCompareInfoEntity? sodium;

/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionCompareInfoEntityCopyWith<_NutritionCompareInfoEntity> get copyWith => __$NutritionCompareInfoEntityCopyWithImpl<_NutritionCompareInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionCompareInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionCompareInfoEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionCompareInfoEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$NutritionCompareInfoEntityCopyWith<$Res> implements $NutritionCompareInfoEntityCopyWith<$Res> {
  factory _$NutritionCompareInfoEntityCopyWith(_NutritionCompareInfoEntity value, $Res Function(_NutritionCompareInfoEntity) _then) = __$NutritionCompareInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 NutrientCompareInfoEntity? kcal, NutrientCompareInfoEntity? carbohydrate, NutrientCompareInfoEntity? protein, NutrientCompareInfoEntity? fat, SugarCompareInfoEntity? sugar, SodiumCompareInfoEntity? sodium
});


@override $NutrientCompareInfoEntityCopyWith<$Res>? get kcal;@override $NutrientCompareInfoEntityCopyWith<$Res>? get carbohydrate;@override $NutrientCompareInfoEntityCopyWith<$Res>? get protein;@override $NutrientCompareInfoEntityCopyWith<$Res>? get fat;@override $SugarCompareInfoEntityCopyWith<$Res>? get sugar;@override $SodiumCompareInfoEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$NutritionCompareInfoEntityCopyWithImpl<$Res>
    implements _$NutritionCompareInfoEntityCopyWith<$Res> {
  __$NutritionCompareInfoEntityCopyWithImpl(this._self, this._then);

  final _NutritionCompareInfoEntity _self;
  final $Res Function(_NutritionCompareInfoEntity) _then;

/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_NutritionCompareInfoEntity(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientCompareInfoEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarCompareInfoEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumCompareInfoEntity?,
  ));
}

/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientCompareInfoEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarCompareInfoEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarCompareInfoEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumCompareInfoEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumCompareInfoEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientCompareInfoEntity {

 double? get intake; int? get target; double? get percent;
/// Create a copy of NutrientCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientCompareInfoEntityCopyWith<NutrientCompareInfoEntity> get copyWith => _$NutrientCompareInfoEntityCopyWithImpl<NutrientCompareInfoEntity>(this as NutrientCompareInfoEntity, _$identity);

  /// Serializes this NutrientCompareInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientCompareInfoEntity(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $NutrientCompareInfoEntityCopyWith<$Res>  {
  factory $NutrientCompareInfoEntityCopyWith(NutrientCompareInfoEntity value, $Res Function(NutrientCompareInfoEntity) _then) = _$NutrientCompareInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class _$NutrientCompareInfoEntityCopyWithImpl<$Res>
    implements $NutrientCompareInfoEntityCopyWith<$Res> {
  _$NutrientCompareInfoEntityCopyWithImpl(this._self, this._then);

  final NutrientCompareInfoEntity _self;
  final $Res Function(NutrientCompareInfoEntity) _then;

/// Create a copy of NutrientCompareInfoEntity
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


/// Adds pattern-matching-related methods to [NutrientCompareInfoEntity].
extension NutrientCompareInfoEntityPatterns on NutrientCompareInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientCompareInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientCompareInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutrientCompareInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientCompareInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientCompareInfoEntity() when $default != null:
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
case _NutrientCompareInfoEntity() when $default != null:
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
case _NutrientCompareInfoEntity():
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
case _NutrientCompareInfoEntity() when $default != null:
return $default(_that.intake,_that.target,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientCompareInfoEntity implements NutrientCompareInfoEntity {
  const _NutrientCompareInfoEntity({this.intake, this.target, this.percent});
  factory _NutrientCompareInfoEntity.fromJson(Map<String, dynamic> json) => _$NutrientCompareInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? target;
@override final  double? percent;

/// Create a copy of NutrientCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientCompareInfoEntityCopyWith<_NutrientCompareInfoEntity> get copyWith => __$NutrientCompareInfoEntityCopyWithImpl<_NutrientCompareInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientCompareInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientCompareInfoEntity(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$NutrientCompareInfoEntityCopyWith<$Res> implements $NutrientCompareInfoEntityCopyWith<$Res> {
  factory _$NutrientCompareInfoEntityCopyWith(_NutrientCompareInfoEntity value, $Res Function(_NutrientCompareInfoEntity) _then) = __$NutrientCompareInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class __$NutrientCompareInfoEntityCopyWithImpl<$Res>
    implements _$NutrientCompareInfoEntityCopyWith<$Res> {
  __$NutrientCompareInfoEntityCopyWithImpl(this._self, this._then);

  final _NutrientCompareInfoEntity _self;
  final $Res Function(_NutrientCompareInfoEntity) _then;

/// Create a copy of NutrientCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? target = freezed,Object? percent = freezed,}) {
  return _then(_NutrientCompareInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarCompareInfoEntity {

 double? get intake; int? get max; NutritionThresholdStatusEnum? get nutritionThresholdStatusEnum;
/// Create a copy of SugarCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarCompareInfoEntityCopyWith<SugarCompareInfoEntity> get copyWith => _$SugarCompareInfoEntityCopyWithImpl<SugarCompareInfoEntity>(this as SugarCompareInfoEntity, _$identity);

  /// Serializes this SugarCompareInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.nutritionThresholdStatusEnum, nutritionThresholdStatusEnum) || other.nutritionThresholdStatusEnum == nutritionThresholdStatusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,nutritionThresholdStatusEnum);

@override
String toString() {
  return 'SugarCompareInfoEntity(intake: $intake, max: $max, nutritionThresholdStatusEnum: $nutritionThresholdStatusEnum)';
}


}

/// @nodoc
abstract mixin class $SugarCompareInfoEntityCopyWith<$Res>  {
  factory $SugarCompareInfoEntityCopyWith(SugarCompareInfoEntity value, $Res Function(SugarCompareInfoEntity) _then) = _$SugarCompareInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? max, NutritionThresholdStatusEnum? nutritionThresholdStatusEnum
});




}
/// @nodoc
class _$SugarCompareInfoEntityCopyWithImpl<$Res>
    implements $SugarCompareInfoEntityCopyWith<$Res> {
  _$SugarCompareInfoEntityCopyWithImpl(this._self, this._then);

  final SugarCompareInfoEntity _self;
  final $Res Function(SugarCompareInfoEntity) _then;

/// Create a copy of SugarCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? max = freezed,Object? nutritionThresholdStatusEnum = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,nutritionThresholdStatusEnum: freezed == nutritionThresholdStatusEnum ? _self.nutritionThresholdStatusEnum : nutritionThresholdStatusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarCompareInfoEntity].
extension SugarCompareInfoEntityPatterns on SugarCompareInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarCompareInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarCompareInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SugarCompareInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarCompareInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SugarCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? max,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarCompareInfoEntity() when $default != null:
return $default(_that.intake,_that.max,_that.nutritionThresholdStatusEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? max,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)  $default,) {final _that = this;
switch (_that) {
case _SugarCompareInfoEntity():
return $default(_that.intake,_that.max,_that.nutritionThresholdStatusEnum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? max,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)?  $default,) {final _that = this;
switch (_that) {
case _SugarCompareInfoEntity() when $default != null:
return $default(_that.intake,_that.max,_that.nutritionThresholdStatusEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarCompareInfoEntity implements SugarCompareInfoEntity {
  const _SugarCompareInfoEntity({this.intake, this.max, this.nutritionThresholdStatusEnum});
  factory _SugarCompareInfoEntity.fromJson(Map<String, dynamic> json) => _$SugarCompareInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? max;
@override final  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum;

/// Create a copy of SugarCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarCompareInfoEntityCopyWith<_SugarCompareInfoEntity> get copyWith => __$SugarCompareInfoEntityCopyWithImpl<_SugarCompareInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarCompareInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.nutritionThresholdStatusEnum, nutritionThresholdStatusEnum) || other.nutritionThresholdStatusEnum == nutritionThresholdStatusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,nutritionThresholdStatusEnum);

@override
String toString() {
  return 'SugarCompareInfoEntity(intake: $intake, max: $max, nutritionThresholdStatusEnum: $nutritionThresholdStatusEnum)';
}


}

/// @nodoc
abstract mixin class _$SugarCompareInfoEntityCopyWith<$Res> implements $SugarCompareInfoEntityCopyWith<$Res> {
  factory _$SugarCompareInfoEntityCopyWith(_SugarCompareInfoEntity value, $Res Function(_SugarCompareInfoEntity) _then) = __$SugarCompareInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? max, NutritionThresholdStatusEnum? nutritionThresholdStatusEnum
});




}
/// @nodoc
class __$SugarCompareInfoEntityCopyWithImpl<$Res>
    implements _$SugarCompareInfoEntityCopyWith<$Res> {
  __$SugarCompareInfoEntityCopyWithImpl(this._self, this._then);

  final _SugarCompareInfoEntity _self;
  final $Res Function(_SugarCompareInfoEntity) _then;

/// Create a copy of SugarCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? max = freezed,Object? nutritionThresholdStatusEnum = freezed,}) {
  return _then(_SugarCompareInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,nutritionThresholdStatusEnum: freezed == nutritionThresholdStatusEnum ? _self.nutritionThresholdStatusEnum : nutritionThresholdStatusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}


/// @nodoc
mixin _$SodiumCompareInfoEntity {

 double? get intake; int? get adequate; int? get riskReduction; NutritionThresholdStatusEnum? get nutritionThresholdStatusEnum;
/// Create a copy of SodiumCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumCompareInfoEntityCopyWith<SodiumCompareInfoEntity> get copyWith => _$SodiumCompareInfoEntityCopyWithImpl<SodiumCompareInfoEntity>(this as SodiumCompareInfoEntity, _$identity);

  /// Serializes this SodiumCompareInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.nutritionThresholdStatusEnum, nutritionThresholdStatusEnum) || other.nutritionThresholdStatusEnum == nutritionThresholdStatusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,nutritionThresholdStatusEnum);

@override
String toString() {
  return 'SodiumCompareInfoEntity(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, nutritionThresholdStatusEnum: $nutritionThresholdStatusEnum)';
}


}

/// @nodoc
abstract mixin class $SodiumCompareInfoEntityCopyWith<$Res>  {
  factory $SodiumCompareInfoEntityCopyWith(SodiumCompareInfoEntity value, $Res Function(SodiumCompareInfoEntity) _then) = _$SodiumCompareInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, NutritionThresholdStatusEnum? nutritionThresholdStatusEnum
});




}
/// @nodoc
class _$SodiumCompareInfoEntityCopyWithImpl<$Res>
    implements $SodiumCompareInfoEntityCopyWith<$Res> {
  _$SodiumCompareInfoEntityCopyWithImpl(this._self, this._then);

  final SodiumCompareInfoEntity _self;
  final $Res Function(SodiumCompareInfoEntity) _then;

/// Create a copy of SodiumCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? nutritionThresholdStatusEnum = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,nutritionThresholdStatusEnum: freezed == nutritionThresholdStatusEnum ? _self.nutritionThresholdStatusEnum : nutritionThresholdStatusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumCompareInfoEntity].
extension SodiumCompareInfoEntityPatterns on SodiumCompareInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumCompareInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumCompareInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumCompareInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.nutritionThresholdStatusEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)  $default,) {final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity():
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.nutritionThresholdStatusEnum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum)?  $default,) {final _that = this;
switch (_that) {
case _SodiumCompareInfoEntity() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.nutritionThresholdStatusEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumCompareInfoEntity implements SodiumCompareInfoEntity {
  const _SodiumCompareInfoEntity({this.intake, this.adequate, this.riskReduction, this.nutritionThresholdStatusEnum});
  factory _SodiumCompareInfoEntity.fromJson(Map<String, dynamic> json) => _$SodiumCompareInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? adequate;
@override final  int? riskReduction;
@override final  NutritionThresholdStatusEnum? nutritionThresholdStatusEnum;

/// Create a copy of SodiumCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumCompareInfoEntityCopyWith<_SodiumCompareInfoEntity> get copyWith => __$SodiumCompareInfoEntityCopyWithImpl<_SodiumCompareInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumCompareInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumCompareInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.nutritionThresholdStatusEnum, nutritionThresholdStatusEnum) || other.nutritionThresholdStatusEnum == nutritionThresholdStatusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,nutritionThresholdStatusEnum);

@override
String toString() {
  return 'SodiumCompareInfoEntity(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, nutritionThresholdStatusEnum: $nutritionThresholdStatusEnum)';
}


}

/// @nodoc
abstract mixin class _$SodiumCompareInfoEntityCopyWith<$Res> implements $SodiumCompareInfoEntityCopyWith<$Res> {
  factory _$SodiumCompareInfoEntityCopyWith(_SodiumCompareInfoEntity value, $Res Function(_SodiumCompareInfoEntity) _then) = __$SodiumCompareInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, NutritionThresholdStatusEnum? nutritionThresholdStatusEnum
});




}
/// @nodoc
class __$SodiumCompareInfoEntityCopyWithImpl<$Res>
    implements _$SodiumCompareInfoEntityCopyWith<$Res> {
  __$SodiumCompareInfoEntityCopyWithImpl(this._self, this._then);

  final _SodiumCompareInfoEntity _self;
  final $Res Function(_SodiumCompareInfoEntity) _then;

/// Create a copy of SodiumCompareInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? nutritionThresholdStatusEnum = freezed,}) {
  return _then(_SodiumCompareInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,nutritionThresholdStatusEnum: freezed == nutritionThresholdStatusEnum ? _self.nutritionThresholdStatusEnum : nutritionThresholdStatusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}

// dart format on
