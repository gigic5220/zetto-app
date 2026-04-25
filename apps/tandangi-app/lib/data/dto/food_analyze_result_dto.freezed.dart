// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_analyze_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodAnalysisDto {

 List<AnalysisFoodItemDto>? get mainFoodItems; List<AnalysisFoodItemDto>? get sideFoodItems; List<AnalysisFoodItemDto>? get otherFoodItems; List<String>? get assumptions; String? get foodImageUrl; AnalysisNutritionInfoDto? get analysisNutritionInfo; DateTime? get createdAt;
/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalysisDtoCopyWith<FoodAnalysisDto> get copyWith => _$FoodAnalysisDtoCopyWithImpl<FoodAnalysisDto>(this as FoodAnalysisDto, _$identity);

  /// Serializes this FoodAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalysisDto&&const DeepCollectionEquality().equals(other.mainFoodItems, mainFoodItems)&&const DeepCollectionEquality().equals(other.sideFoodItems, sideFoodItems)&&const DeepCollectionEquality().equals(other.otherFoodItems, otherFoodItems)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.analysisNutritionInfo, analysisNutritionInfo) || other.analysisNutritionInfo == analysisNutritionInfo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(mainFoodItems),const DeepCollectionEquality().hash(sideFoodItems),const DeepCollectionEquality().hash(otherFoodItems),const DeepCollectionEquality().hash(assumptions),foodImageUrl,analysisNutritionInfo,createdAt);

@override
String toString() {
  return 'FoodAnalysisDto(mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, analysisNutritionInfo: $analysisNutritionInfo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FoodAnalysisDtoCopyWith<$Res>  {
  factory $FoodAnalysisDtoCopyWith(FoodAnalysisDto value, $Res Function(FoodAnalysisDto) _then) = _$FoodAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 List<AnalysisFoodItemDto>? mainFoodItems, List<AnalysisFoodItemDto>? sideFoodItems, List<AnalysisFoodItemDto>? otherFoodItems, List<String>? assumptions, String? foodImageUrl, AnalysisNutritionInfoDto? analysisNutritionInfo, DateTime? createdAt
});


$AnalysisNutritionInfoDtoCopyWith<$Res>? get analysisNutritionInfo;

}
/// @nodoc
class _$FoodAnalysisDtoCopyWithImpl<$Res>
    implements $FoodAnalysisDtoCopyWith<$Res> {
  _$FoodAnalysisDtoCopyWithImpl(this._self, this._then);

  final FoodAnalysisDto _self;
  final $Res Function(FoodAnalysisDto) _then;

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainFoodItems = freezed,Object? sideFoodItems = freezed,Object? otherFoodItems = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? analysisNutritionInfo = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
mainFoodItems: freezed == mainFoodItems ? _self.mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,sideFoodItems: freezed == sideFoodItems ? _self.sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,otherFoodItems: freezed == otherFoodItems ? _self.otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,assumptions: freezed == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,analysisNutritionInfo: freezed == analysisNutritionInfo ? _self.analysisNutritionInfo : analysisNutritionInfo // ignore: cast_nullable_to_non_nullable
as AnalysisNutritionInfoDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoDtoCopyWith<$Res>? get analysisNutritionInfo {
    if (_self.analysisNutritionInfo == null) {
    return null;
  }

  return $AnalysisNutritionInfoDtoCopyWith<$Res>(_self.analysisNutritionInfo!, (value) {
    return _then(_self.copyWith(analysisNutritionInfo: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalysisFoodItemDto>? mainFoodItems,  List<AnalysisFoodItemDto>? sideFoodItems,  List<AnalysisFoodItemDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  AnalysisNutritionInfoDto? analysisNutritionInfo,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
return $default(_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.analysisNutritionInfo,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalysisFoodItemDto>? mainFoodItems,  List<AnalysisFoodItemDto>? sideFoodItems,  List<AnalysisFoodItemDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  AnalysisNutritionInfoDto? analysisNutritionInfo,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisDto():
return $default(_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.analysisNutritionInfo,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalysisFoodItemDto>? mainFoodItems,  List<AnalysisFoodItemDto>? sideFoodItems,  List<AnalysisFoodItemDto>? otherFoodItems,  List<String>? assumptions,  String? foodImageUrl,  AnalysisNutritionInfoDto? analysisNutritionInfo,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalysisDto() when $default != null:
return $default(_that.mainFoodItems,_that.sideFoodItems,_that.otherFoodItems,_that.assumptions,_that.foodImageUrl,_that.analysisNutritionInfo,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalysisDto implements FoodAnalysisDto {
  const _FoodAnalysisDto({final  List<AnalysisFoodItemDto>? mainFoodItems, final  List<AnalysisFoodItemDto>? sideFoodItems, final  List<AnalysisFoodItemDto>? otherFoodItems, final  List<String>? assumptions, this.foodImageUrl, this.analysisNutritionInfo, this.createdAt}): _mainFoodItems = mainFoodItems,_sideFoodItems = sideFoodItems,_otherFoodItems = otherFoodItems,_assumptions = assumptions;
  factory _FoodAnalysisDto.fromJson(Map<String, dynamic> json) => _$FoodAnalysisDtoFromJson(json);

 final  List<AnalysisFoodItemDto>? _mainFoodItems;
@override List<AnalysisFoodItemDto>? get mainFoodItems {
  final value = _mainFoodItems;
  if (value == null) return null;
  if (_mainFoodItems is EqualUnmodifiableListView) return _mainFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AnalysisFoodItemDto>? _sideFoodItems;
@override List<AnalysisFoodItemDto>? get sideFoodItems {
  final value = _sideFoodItems;
  if (value == null) return null;
  if (_sideFoodItems is EqualUnmodifiableListView) return _sideFoodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AnalysisFoodItemDto>? _otherFoodItems;
@override List<AnalysisFoodItemDto>? get otherFoodItems {
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
@override final  AnalysisNutritionInfoDto? analysisNutritionInfo;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalysisDto&&const DeepCollectionEquality().equals(other._mainFoodItems, _mainFoodItems)&&const DeepCollectionEquality().equals(other._sideFoodItems, _sideFoodItems)&&const DeepCollectionEquality().equals(other._otherFoodItems, _otherFoodItems)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.analysisNutritionInfo, analysisNutritionInfo) || other.analysisNutritionInfo == analysisNutritionInfo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mainFoodItems),const DeepCollectionEquality().hash(_sideFoodItems),const DeepCollectionEquality().hash(_otherFoodItems),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,analysisNutritionInfo,createdAt);

@override
String toString() {
  return 'FoodAnalysisDto(mainFoodItems: $mainFoodItems, sideFoodItems: $sideFoodItems, otherFoodItems: $otherFoodItems, assumptions: $assumptions, foodImageUrl: $foodImageUrl, analysisNutritionInfo: $analysisNutritionInfo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalysisDtoCopyWith<$Res> implements $FoodAnalysisDtoCopyWith<$Res> {
  factory _$FoodAnalysisDtoCopyWith(_FoodAnalysisDto value, $Res Function(_FoodAnalysisDto) _then) = __$FoodAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 List<AnalysisFoodItemDto>? mainFoodItems, List<AnalysisFoodItemDto>? sideFoodItems, List<AnalysisFoodItemDto>? otherFoodItems, List<String>? assumptions, String? foodImageUrl, AnalysisNutritionInfoDto? analysisNutritionInfo, DateTime? createdAt
});


@override $AnalysisNutritionInfoDtoCopyWith<$Res>? get analysisNutritionInfo;

}
/// @nodoc
class __$FoodAnalysisDtoCopyWithImpl<$Res>
    implements _$FoodAnalysisDtoCopyWith<$Res> {
  __$FoodAnalysisDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalysisDto _self;
  final $Res Function(_FoodAnalysisDto) _then;

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainFoodItems = freezed,Object? sideFoodItems = freezed,Object? otherFoodItems = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? analysisNutritionInfo = freezed,Object? createdAt = freezed,}) {
  return _then(_FoodAnalysisDto(
mainFoodItems: freezed == mainFoodItems ? _self._mainFoodItems : mainFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,sideFoodItems: freezed == sideFoodItems ? _self._sideFoodItems : sideFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,otherFoodItems: freezed == otherFoodItems ? _self._otherFoodItems : otherFoodItems // ignore: cast_nullable_to_non_nullable
as List<AnalysisFoodItemDto>?,assumptions: freezed == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,analysisNutritionInfo: freezed == analysisNutritionInfo ? _self.analysisNutritionInfo : analysisNutritionInfo // ignore: cast_nullable_to_non_nullable
as AnalysisNutritionInfoDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of FoodAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoDtoCopyWith<$Res>? get analysisNutritionInfo {
    if (_self.analysisNutritionInfo == null) {
    return null;
  }

  return $AnalysisNutritionInfoDtoCopyWith<$Res>(_self.analysisNutritionInfo!, (value) {
    return _then(_self.copyWith(analysisNutritionInfo: value));
  });
}
}


/// @nodoc
mixin _$AnalysisFoodItemDto {

 int get id; String? get name; FoodNutritionInfoDto? get kcal; FoodNutritionInfoDto? get carbohydrate; FoodNutritionInfoDto? get protein; FoodNutritionInfoDto? get fat; FoodNutritionInfoDto? get sugar; FoodNutritionInfoDto? get sodium;
/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisFoodItemDtoCopyWith<AnalysisFoodItemDto> get copyWith => _$AnalysisFoodItemDtoCopyWithImpl<AnalysisFoodItemDto>(this as AnalysisFoodItemDto, _$identity);

  /// Serializes this AnalysisFoodItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisFoodItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisFoodItemDto(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $AnalysisFoodItemDtoCopyWith<$Res>  {
  factory $AnalysisFoodItemDtoCopyWith(AnalysisFoodItemDto value, $Res Function(AnalysisFoodItemDto) _then) = _$AnalysisFoodItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? name, FoodNutritionInfoDto? kcal, FoodNutritionInfoDto? carbohydrate, FoodNutritionInfoDto? protein, FoodNutritionInfoDto? fat, FoodNutritionInfoDto? sugar, FoodNutritionInfoDto? sodium
});


$FoodNutritionInfoDtoCopyWith<$Res>? get kcal;$FoodNutritionInfoDtoCopyWith<$Res>? get carbohydrate;$FoodNutritionInfoDtoCopyWith<$Res>? get protein;$FoodNutritionInfoDtoCopyWith<$Res>? get fat;$FoodNutritionInfoDtoCopyWith<$Res>? get sugar;$FoodNutritionInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$AnalysisFoodItemDtoCopyWithImpl<$Res>
    implements $AnalysisFoodItemDtoCopyWith<$Res> {
  _$AnalysisFoodItemDtoCopyWithImpl(this._self, this._then);

  final AnalysisFoodItemDto _self;
  final $Res Function(AnalysisFoodItemDto) _then;

/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,
  ));
}
/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisFoodItemDto].
extension AnalysisFoodItemDtoPatterns on AnalysisFoodItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisFoodItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisFoodItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisFoodItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisFoodItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  FoodNutritionInfoDto? kcal,  FoodNutritionInfoDto? carbohydrate,  FoodNutritionInfoDto? protein,  FoodNutritionInfoDto? fat,  FoodNutritionInfoDto? sugar,  FoodNutritionInfoDto? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  FoodNutritionInfoDto? kcal,  FoodNutritionInfoDto? carbohydrate,  FoodNutritionInfoDto? protein,  FoodNutritionInfoDto? fat,  FoodNutritionInfoDto? sugar,  FoodNutritionInfoDto? sodium)  $default,) {final _that = this;
switch (_that) {
case _AnalysisFoodItemDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  FoodNutritionInfoDto? kcal,  FoodNutritionInfoDto? carbohydrate,  FoodNutritionInfoDto? protein,  FoodNutritionInfoDto? fat,  FoodNutritionInfoDto? sugar,  FoodNutritionInfoDto? sodium)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisFoodItemDto() when $default != null:
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisFoodItemDto implements AnalysisFoodItemDto {
  const _AnalysisFoodItemDto({required this.id, this.name, this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _AnalysisFoodItemDto.fromJson(Map<String, dynamic> json) => _$AnalysisFoodItemDtoFromJson(json);

@override final  int id;
@override final  String? name;
@override final  FoodNutritionInfoDto? kcal;
@override final  FoodNutritionInfoDto? carbohydrate;
@override final  FoodNutritionInfoDto? protein;
@override final  FoodNutritionInfoDto? fat;
@override final  FoodNutritionInfoDto? sugar;
@override final  FoodNutritionInfoDto? sodium;

/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisFoodItemDtoCopyWith<_AnalysisFoodItemDto> get copyWith => __$AnalysisFoodItemDtoCopyWithImpl<_AnalysisFoodItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisFoodItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisFoodItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisFoodItemDto(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$AnalysisFoodItemDtoCopyWith<$Res> implements $AnalysisFoodItemDtoCopyWith<$Res> {
  factory _$AnalysisFoodItemDtoCopyWith(_AnalysisFoodItemDto value, $Res Function(_AnalysisFoodItemDto) _then) = __$AnalysisFoodItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, FoodNutritionInfoDto? kcal, FoodNutritionInfoDto? carbohydrate, FoodNutritionInfoDto? protein, FoodNutritionInfoDto? fat, FoodNutritionInfoDto? sugar, FoodNutritionInfoDto? sodium
});


@override $FoodNutritionInfoDtoCopyWith<$Res>? get kcal;@override $FoodNutritionInfoDtoCopyWith<$Res>? get carbohydrate;@override $FoodNutritionInfoDtoCopyWith<$Res>? get protein;@override $FoodNutritionInfoDtoCopyWith<$Res>? get fat;@override $FoodNutritionInfoDtoCopyWith<$Res>? get sugar;@override $FoodNutritionInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$AnalysisFoodItemDtoCopyWithImpl<$Res>
    implements _$AnalysisFoodItemDtoCopyWith<$Res> {
  __$AnalysisFoodItemDtoCopyWithImpl(this._self, this._then);

  final _AnalysisFoodItemDto _self;
  final $Res Function(_AnalysisFoodItemDto) _then;

/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_AnalysisFoodItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as FoodNutritionInfoDto?,
  ));
}

/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $FoodNutritionInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$FoodNutritionInfoDto {

 double? get value; List<double>? get range; String? get unit;
/// Create a copy of FoodNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodNutritionInfoDtoCopyWith<FoodNutritionInfoDto> get copyWith => _$FoodNutritionInfoDtoCopyWithImpl<FoodNutritionInfoDto>(this as FoodNutritionInfoDto, _$identity);

  /// Serializes this FoodNutritionInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodNutritionInfoDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.range, range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(range),unit);

@override
String toString() {
  return 'FoodNutritionInfoDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $FoodNutritionInfoDtoCopyWith<$Res>  {
  factory $FoodNutritionInfoDtoCopyWith(FoodNutritionInfoDto value, $Res Function(FoodNutritionInfoDto) _then) = _$FoodNutritionInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class _$FoodNutritionInfoDtoCopyWithImpl<$Res>
    implements $FoodNutritionInfoDtoCopyWith<$Res> {
  _$FoodNutritionInfoDtoCopyWithImpl(this._self, this._then);

  final FoodNutritionInfoDto _self;
  final $Res Function(FoodNutritionInfoDto) _then;

/// Create a copy of FoodNutritionInfoDto
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


/// Adds pattern-matching-related methods to [FoodNutritionInfoDto].
extension FoodNutritionInfoDtoPatterns on FoodNutritionInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodNutritionInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodNutritionInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodNutritionInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodNutritionInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodNutritionInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodNutritionInfoDto() when $default != null:
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
case _FoodNutritionInfoDto() when $default != null:
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
case _FoodNutritionInfoDto():
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
case _FoodNutritionInfoDto() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodNutritionInfoDto implements FoodNutritionInfoDto {
  const _FoodNutritionInfoDto({this.value, final  List<double>? range, this.unit}): _range = range;
  factory _FoodNutritionInfoDto.fromJson(Map<String, dynamic> json) => _$FoodNutritionInfoDtoFromJson(json);

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

/// Create a copy of FoodNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodNutritionInfoDtoCopyWith<_FoodNutritionInfoDto> get copyWith => __$FoodNutritionInfoDtoCopyWithImpl<_FoodNutritionInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodNutritionInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodNutritionInfoDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._range, _range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_range),unit);

@override
String toString() {
  return 'FoodNutritionInfoDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$FoodNutritionInfoDtoCopyWith<$Res> implements $FoodNutritionInfoDtoCopyWith<$Res> {
  factory _$FoodNutritionInfoDtoCopyWith(_FoodNutritionInfoDto value, $Res Function(_FoodNutritionInfoDto) _then) = __$FoodNutritionInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class __$FoodNutritionInfoDtoCopyWithImpl<$Res>
    implements _$FoodNutritionInfoDtoCopyWith<$Res> {
  __$FoodNutritionInfoDtoCopyWithImpl(this._self, this._then);

  final _FoodNutritionInfoDto _self;
  final $Res Function(_FoodNutritionInfoDto) _then;

/// Create a copy of FoodNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? range = freezed,Object? unit = freezed,}) {
  return _then(_FoodNutritionInfoDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: freezed == range ? _self._range : range // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AnalysisNutritionInfoDto {

 NutrientInfoDto? get kcal; NutrientInfoDto? get carbohydrate; NutrientInfoDto? get protein; NutrientInfoDto? get fat; SugarInfoDto? get sugar; SodiumInfoDto? get sodium;
/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoDtoCopyWith<AnalysisNutritionInfoDto> get copyWith => _$AnalysisNutritionInfoDtoCopyWithImpl<AnalysisNutritionInfoDto>(this as AnalysisNutritionInfoDto, _$identity);

  /// Serializes this AnalysisNutritionInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisNutritionInfoDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisNutritionInfoDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $AnalysisNutritionInfoDtoCopyWith<$Res>  {
  factory $AnalysisNutritionInfoDtoCopyWith(AnalysisNutritionInfoDto value, $Res Function(AnalysisNutritionInfoDto) _then) = _$AnalysisNutritionInfoDtoCopyWithImpl;
@useResult
$Res call({
 NutrientInfoDto? kcal, NutrientInfoDto? carbohydrate, NutrientInfoDto? protein, NutrientInfoDto? fat, SugarInfoDto? sugar, SodiumInfoDto? sodium
});


$NutrientInfoDtoCopyWith<$Res>? get kcal;$NutrientInfoDtoCopyWith<$Res>? get carbohydrate;$NutrientInfoDtoCopyWith<$Res>? get protein;$NutrientInfoDtoCopyWith<$Res>? get fat;$SugarInfoDtoCopyWith<$Res>? get sugar;$SodiumInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$AnalysisNutritionInfoDtoCopyWithImpl<$Res>
    implements $AnalysisNutritionInfoDtoCopyWith<$Res> {
  _$AnalysisNutritionInfoDtoCopyWithImpl(this._self, this._then);

  final AnalysisNutritionInfoDto _self;
  final $Res Function(AnalysisNutritionInfoDto) _then;

/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumInfoDto?,
  ));
}
/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisNutritionInfoDto].
extension AnalysisNutritionInfoDtoPatterns on AnalysisNutritionInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisNutritionInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisNutritionInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisNutritionInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientInfoDto? kcal,  NutrientInfoDto? carbohydrate,  NutrientInfoDto? protein,  NutrientInfoDto? fat,  SugarInfoDto? sugar,  SodiumInfoDto? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientInfoDto? kcal,  NutrientInfoDto? carbohydrate,  NutrientInfoDto? protein,  NutrientInfoDto? fat,  SugarInfoDto? sugar,  SodiumInfoDto? sodium)  $default,) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientInfoDto? kcal,  NutrientInfoDto? carbohydrate,  NutrientInfoDto? protein,  NutrientInfoDto? fat,  SugarInfoDto? sugar,  SodiumInfoDto? sodium)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisNutritionInfoDto implements AnalysisNutritionInfoDto {
  const _AnalysisNutritionInfoDto({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _AnalysisNutritionInfoDto.fromJson(Map<String, dynamic> json) => _$AnalysisNutritionInfoDtoFromJson(json);

@override final  NutrientInfoDto? kcal;
@override final  NutrientInfoDto? carbohydrate;
@override final  NutrientInfoDto? protein;
@override final  NutrientInfoDto? fat;
@override final  SugarInfoDto? sugar;
@override final  SodiumInfoDto? sodium;

/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisNutritionInfoDtoCopyWith<_AnalysisNutritionInfoDto> get copyWith => __$AnalysisNutritionInfoDtoCopyWithImpl<_AnalysisNutritionInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisNutritionInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisNutritionInfoDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisNutritionInfoDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$AnalysisNutritionInfoDtoCopyWith<$Res> implements $AnalysisNutritionInfoDtoCopyWith<$Res> {
  factory _$AnalysisNutritionInfoDtoCopyWith(_AnalysisNutritionInfoDto value, $Res Function(_AnalysisNutritionInfoDto) _then) = __$AnalysisNutritionInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 NutrientInfoDto? kcal, NutrientInfoDto? carbohydrate, NutrientInfoDto? protein, NutrientInfoDto? fat, SugarInfoDto? sugar, SodiumInfoDto? sodium
});


@override $NutrientInfoDtoCopyWith<$Res>? get kcal;@override $NutrientInfoDtoCopyWith<$Res>? get carbohydrate;@override $NutrientInfoDtoCopyWith<$Res>? get protein;@override $NutrientInfoDtoCopyWith<$Res>? get fat;@override $SugarInfoDtoCopyWith<$Res>? get sugar;@override $SodiumInfoDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$AnalysisNutritionInfoDtoCopyWithImpl<$Res>
    implements _$AnalysisNutritionInfoDtoCopyWith<$Res> {
  __$AnalysisNutritionInfoDtoCopyWithImpl(this._self, this._then);

  final _AnalysisNutritionInfoDto _self;
  final $Res Function(_AnalysisNutritionInfoDto) _then;

/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_AnalysisNutritionInfoDto(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientInfoDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarInfoDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumInfoDto?,
  ));
}

/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientInfoDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarInfoDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarInfoDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisNutritionInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumInfoDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumInfoDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientInfoDto {

 double? get intake; int? get target; double? get percent;
/// Create a copy of NutrientInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientInfoDtoCopyWith<NutrientInfoDto> get copyWith => _$NutrientInfoDtoCopyWithImpl<NutrientInfoDto>(this as NutrientInfoDto, _$identity);

  /// Serializes this NutrientInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientInfoDto(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $NutrientInfoDtoCopyWith<$Res>  {
  factory $NutrientInfoDtoCopyWith(NutrientInfoDto value, $Res Function(NutrientInfoDto) _then) = _$NutrientInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class _$NutrientInfoDtoCopyWithImpl<$Res>
    implements $NutrientInfoDtoCopyWith<$Res> {
  _$NutrientInfoDtoCopyWithImpl(this._self, this._then);

  final NutrientInfoDto _self;
  final $Res Function(NutrientInfoDto) _then;

/// Create a copy of NutrientInfoDto
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


/// Adds pattern-matching-related methods to [NutrientInfoDto].
extension NutrientInfoDtoPatterns on NutrientInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _NutrientInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientInfoDto() when $default != null:
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
case _NutrientInfoDto() when $default != null:
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
case _NutrientInfoDto():
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
case _NutrientInfoDto() when $default != null:
return $default(_that.intake,_that.target,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientInfoDto implements NutrientInfoDto {
  const _NutrientInfoDto({this.intake, this.target, this.percent});
  factory _NutrientInfoDto.fromJson(Map<String, dynamic> json) => _$NutrientInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? target;
@override final  double? percent;

/// Create a copy of NutrientInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientInfoDtoCopyWith<_NutrientInfoDto> get copyWith => __$NutrientInfoDtoCopyWithImpl<_NutrientInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientInfoDto(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$NutrientInfoDtoCopyWith<$Res> implements $NutrientInfoDtoCopyWith<$Res> {
  factory _$NutrientInfoDtoCopyWith(_NutrientInfoDto value, $Res Function(_NutrientInfoDto) _then) = __$NutrientInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class __$NutrientInfoDtoCopyWithImpl<$Res>
    implements _$NutrientInfoDtoCopyWith<$Res> {
  __$NutrientInfoDtoCopyWithImpl(this._self, this._then);

  final _NutrientInfoDto _self;
  final $Res Function(_NutrientInfoDto) _then;

/// Create a copy of NutrientInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? target = freezed,Object? percent = freezed,}) {
  return _then(_NutrientInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarInfoDto {

 double? get intake; int? get max; String? get statusCode;
/// Create a copy of SugarInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarInfoDtoCopyWith<SugarInfoDto> get copyWith => _$SugarInfoDtoCopyWithImpl<SugarInfoDto>(this as SugarInfoDto, _$identity);

  /// Serializes this SugarInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,statusCode);

@override
String toString() {
  return 'SugarInfoDto(intake: $intake, max: $max, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SugarInfoDtoCopyWith<$Res>  {
  factory $SugarInfoDtoCopyWith(SugarInfoDto value, $Res Function(SugarInfoDto) _then) = _$SugarInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? max, String? statusCode
});




}
/// @nodoc
class _$SugarInfoDtoCopyWithImpl<$Res>
    implements $SugarInfoDtoCopyWith<$Res> {
  _$SugarInfoDtoCopyWithImpl(this._self, this._then);

  final SugarInfoDto _self;
  final $Res Function(SugarInfoDto) _then;

/// Create a copy of SugarInfoDto
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


/// Adds pattern-matching-related methods to [SugarInfoDto].
extension SugarInfoDtoPatterns on SugarInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SugarInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SugarInfoDto() when $default != null:
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
case _SugarInfoDto() when $default != null:
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
case _SugarInfoDto():
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
case _SugarInfoDto() when $default != null:
return $default(_that.intake,_that.max,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarInfoDto implements SugarInfoDto {
  const _SugarInfoDto({this.intake, this.max, this.statusCode});
  factory _SugarInfoDto.fromJson(Map<String, dynamic> json) => _$SugarInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? max;
@override final  String? statusCode;

/// Create a copy of SugarInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarInfoDtoCopyWith<_SugarInfoDto> get copyWith => __$SugarInfoDtoCopyWithImpl<_SugarInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,statusCode);

@override
String toString() {
  return 'SugarInfoDto(intake: $intake, max: $max, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SugarInfoDtoCopyWith<$Res> implements $SugarInfoDtoCopyWith<$Res> {
  factory _$SugarInfoDtoCopyWith(_SugarInfoDto value, $Res Function(_SugarInfoDto) _then) = __$SugarInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? max, String? statusCode
});




}
/// @nodoc
class __$SugarInfoDtoCopyWithImpl<$Res>
    implements _$SugarInfoDtoCopyWith<$Res> {
  __$SugarInfoDtoCopyWithImpl(this._self, this._then);

  final _SugarInfoDto _self;
  final $Res Function(_SugarInfoDto) _then;

/// Create a copy of SugarInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? max = freezed,Object? statusCode = freezed,}) {
  return _then(_SugarInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SodiumInfoDto {

 double? get intake; int? get adequate; int? get riskReduction; String? get statusCode;
/// Create a copy of SodiumInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumInfoDtoCopyWith<SodiumInfoDto> get copyWith => _$SodiumInfoDtoCopyWithImpl<SodiumInfoDto>(this as SodiumInfoDto, _$identity);

  /// Serializes this SodiumInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,statusCode);

@override
String toString() {
  return 'SodiumInfoDto(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SodiumInfoDtoCopyWith<$Res>  {
  factory $SodiumInfoDtoCopyWith(SodiumInfoDto value, $Res Function(SodiumInfoDto) _then) = _$SodiumInfoDtoCopyWithImpl;
@useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, String? statusCode
});




}
/// @nodoc
class _$SodiumInfoDtoCopyWithImpl<$Res>
    implements $SodiumInfoDtoCopyWith<$Res> {
  _$SodiumInfoDtoCopyWithImpl(this._self, this._then);

  final SodiumInfoDto _self;
  final $Res Function(SodiumInfoDto) _then;

/// Create a copy of SodiumInfoDto
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


/// Adds pattern-matching-related methods to [SodiumInfoDto].
extension SodiumInfoDtoPatterns on SodiumInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SodiumInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumInfoDto() when $default != null:
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
case _SodiumInfoDto() when $default != null:
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
case _SodiumInfoDto():
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
case _SodiumInfoDto() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumInfoDto implements SodiumInfoDto {
  const _SodiumInfoDto({this.intake, this.adequate, this.riskReduction, this.statusCode});
  factory _SodiumInfoDto.fromJson(Map<String, dynamic> json) => _$SodiumInfoDtoFromJson(json);

@override final  double? intake;
@override final  int? adequate;
@override final  int? riskReduction;
@override final  String? statusCode;

/// Create a copy of SodiumInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumInfoDtoCopyWith<_SodiumInfoDto> get copyWith => __$SodiumInfoDtoCopyWithImpl<_SodiumInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumInfoDto&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,statusCode);

@override
String toString() {
  return 'SodiumInfoDto(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SodiumInfoDtoCopyWith<$Res> implements $SodiumInfoDtoCopyWith<$Res> {
  factory _$SodiumInfoDtoCopyWith(_SodiumInfoDto value, $Res Function(_SodiumInfoDto) _then) = __$SodiumInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, String? statusCode
});




}
/// @nodoc
class __$SodiumInfoDtoCopyWithImpl<$Res>
    implements _$SodiumInfoDtoCopyWith<$Res> {
  __$SodiumInfoDtoCopyWithImpl(this._self, this._then);

  final _SodiumInfoDto _self;
  final $Res Function(_SodiumInfoDto) _then;

/// Create a copy of SodiumInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? statusCode = freezed,}) {
  return _then(_SodiumInfoDto(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
