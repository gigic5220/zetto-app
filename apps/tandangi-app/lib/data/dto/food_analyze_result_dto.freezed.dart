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
mixin _$FoodAnalyzeResultDto {

 List<AnalyzedFoodItemDto>? get main; List<AnalyzedFoodItemDto>? get sides; List<AnalyzedFoodItemDto>? get others; List<String>? get assumptions; String? get foodImageUrl; NutritionComparisonDto? get nutritionComparison; DateTime? get createdAt;
/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalyzeResultDtoCopyWith<FoodAnalyzeResultDto> get copyWith => _$FoodAnalyzeResultDtoCopyWithImpl<FoodAnalyzeResultDto>(this as FoodAnalyzeResultDto, _$identity);

  /// Serializes this FoodAnalyzeResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalyzeResultDto&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.others, others)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.nutritionComparison, nutritionComparison) || other.nutritionComparison == nutritionComparison)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(others),const DeepCollectionEquality().hash(assumptions),foodImageUrl,nutritionComparison,createdAt);

@override
String toString() {
  return 'FoodAnalyzeResultDto(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, nutritionComparison: $nutritionComparison, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FoodAnalyzeResultDtoCopyWith<$Res>  {
  factory $FoodAnalyzeResultDtoCopyWith(FoodAnalyzeResultDto value, $Res Function(FoodAnalyzeResultDto) _then) = _$FoodAnalyzeResultDtoCopyWithImpl;
@useResult
$Res call({
 List<AnalyzedFoodItemDto>? main, List<AnalyzedFoodItemDto>? sides, List<AnalyzedFoodItemDto>? others, List<String>? assumptions, String? foodImageUrl, NutritionComparisonDto? nutritionComparison, DateTime? createdAt
});


$NutritionComparisonDtoCopyWith<$Res>? get nutritionComparison;

}
/// @nodoc
class _$FoodAnalyzeResultDtoCopyWithImpl<$Res>
    implements $FoodAnalyzeResultDtoCopyWith<$Res> {
  _$FoodAnalyzeResultDtoCopyWithImpl(this._self, this._then);

  final FoodAnalyzeResultDto _self;
  final $Res Function(FoodAnalyzeResultDto) _then;

/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = freezed,Object? sides = freezed,Object? others = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? nutritionComparison = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,sides: freezed == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,others: freezed == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,assumptions: freezed == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nutritionComparison: freezed == nutritionComparison ? _self.nutritionComparison : nutritionComparison // ignore: cast_nullable_to_non_nullable
as NutritionComparisonDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionComparisonDtoCopyWith<$Res>? get nutritionComparison {
    if (_self.nutritionComparison == null) {
    return null;
  }

  return $NutritionComparisonDtoCopyWith<$Res>(_self.nutritionComparison!, (value) {
    return _then(_self.copyWith(nutritionComparison: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalyzeResultDto].
extension FoodAnalyzeResultDtoPatterns on FoodAnalyzeResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalyzeResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalyzeResultDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalyzeResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  List<String>? assumptions,  String? foodImageUrl,  NutritionComparisonDto? nutritionComparison,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.nutritionComparison,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  List<String>? assumptions,  String? foodImageUrl,  NutritionComparisonDto? nutritionComparison,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto():
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.nutritionComparison,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  List<String>? assumptions,  String? foodImageUrl,  NutritionComparisonDto? nutritionComparison,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultDto() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.nutritionComparison,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalyzeResultDto implements FoodAnalyzeResultDto {
  const _FoodAnalyzeResultDto({final  List<AnalyzedFoodItemDto>? main, final  List<AnalyzedFoodItemDto>? sides, final  List<AnalyzedFoodItemDto>? others, final  List<String>? assumptions, this.foodImageUrl, this.nutritionComparison, this.createdAt}): _main = main,_sides = sides,_others = others,_assumptions = assumptions;
  factory _FoodAnalyzeResultDto.fromJson(Map<String, dynamic> json) => _$FoodAnalyzeResultDtoFromJson(json);

 final  List<AnalyzedFoodItemDto>? _main;
@override List<AnalyzedFoodItemDto>? get main {
  final value = _main;
  if (value == null) return null;
  if (_main is EqualUnmodifiableListView) return _main;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AnalyzedFoodItemDto>? _sides;
@override List<AnalyzedFoodItemDto>? get sides {
  final value = _sides;
  if (value == null) return null;
  if (_sides is EqualUnmodifiableListView) return _sides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AnalyzedFoodItemDto>? _others;
@override List<AnalyzedFoodItemDto>? get others {
  final value = _others;
  if (value == null) return null;
  if (_others is EqualUnmodifiableListView) return _others;
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
@override final  NutritionComparisonDto? nutritionComparison;
@override final  DateTime? createdAt;

/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalyzeResultDtoCopyWith<_FoodAnalyzeResultDto> get copyWith => __$FoodAnalyzeResultDtoCopyWithImpl<_FoodAnalyzeResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalyzeResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalyzeResultDto&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._others, _others)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.nutritionComparison, nutritionComparison) || other.nutritionComparison == nutritionComparison)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_others),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,nutritionComparison,createdAt);

@override
String toString() {
  return 'FoodAnalyzeResultDto(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, nutritionComparison: $nutritionComparison, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalyzeResultDtoCopyWith<$Res> implements $FoodAnalyzeResultDtoCopyWith<$Res> {
  factory _$FoodAnalyzeResultDtoCopyWith(_FoodAnalyzeResultDto value, $Res Function(_FoodAnalyzeResultDto) _then) = __$FoodAnalyzeResultDtoCopyWithImpl;
@override @useResult
$Res call({
 List<AnalyzedFoodItemDto>? main, List<AnalyzedFoodItemDto>? sides, List<AnalyzedFoodItemDto>? others, List<String>? assumptions, String? foodImageUrl, NutritionComparisonDto? nutritionComparison, DateTime? createdAt
});


@override $NutritionComparisonDtoCopyWith<$Res>? get nutritionComparison;

}
/// @nodoc
class __$FoodAnalyzeResultDtoCopyWithImpl<$Res>
    implements _$FoodAnalyzeResultDtoCopyWith<$Res> {
  __$FoodAnalyzeResultDtoCopyWithImpl(this._self, this._then);

  final _FoodAnalyzeResultDto _self;
  final $Res Function(_FoodAnalyzeResultDto) _then;

/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = freezed,Object? sides = freezed,Object? others = freezed,Object? assumptions = freezed,Object? foodImageUrl = freezed,Object? nutritionComparison = freezed,Object? createdAt = freezed,}) {
  return _then(_FoodAnalyzeResultDto(
main: freezed == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,sides: freezed == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,others: freezed == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,assumptions: freezed == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,foodImageUrl: freezed == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nutritionComparison: freezed == nutritionComparison ? _self.nutritionComparison : nutritionComparison // ignore: cast_nullable_to_non_nullable
as NutritionComparisonDto?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of FoodAnalyzeResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionComparisonDtoCopyWith<$Res>? get nutritionComparison {
    if (_self.nutritionComparison == null) {
    return null;
  }

  return $NutritionComparisonDtoCopyWith<$Res>(_self.nutritionComparison!, (value) {
    return _then(_self.copyWith(nutritionComparison: value));
  });
}
}


/// @nodoc
mixin _$AnalyzedFoodItemDto {

 int get id; String? get name; DishNutrientsDto? get nutrients;
/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzedFoodItemDtoCopyWith<AnalyzedFoodItemDto> get copyWith => _$AnalyzedFoodItemDtoCopyWithImpl<AnalyzedFoodItemDto>(this as AnalyzedFoodItemDto, _$identity);

  /// Serializes this AnalyzedFoodItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzedFoodItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nutrients);

@override
String toString() {
  return 'AnalyzedFoodItemDto(id: $id, name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $AnalyzedFoodItemDtoCopyWith<$Res>  {
  factory $AnalyzedFoodItemDtoCopyWith(AnalyzedFoodItemDto value, $Res Function(AnalyzedFoodItemDto) _then) = _$AnalyzedFoodItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? name, DishNutrientsDto? nutrients
});


$DishNutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class _$AnalyzedFoodItemDtoCopyWithImpl<$Res>
    implements $AnalyzedFoodItemDtoCopyWith<$Res> {
  _$AnalyzedFoodItemDtoCopyWithImpl(this._self, this._then);

  final AnalyzedFoodItemDto _self;
  final $Res Function(AnalyzedFoodItemDto) _then;

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? nutrients = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as DishNutrientsDto?,
  ));
}
/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishNutrientsDtoCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $DishNutrientsDtoCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyzedFoodItemDto].
extension AnalyzedFoodItemDtoPatterns on AnalyzedFoodItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyzedFoodItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyzedFoodItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyzedFoodItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  DishNutrientsDto? nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
return $default(_that.id,_that.name,_that.nutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  DishNutrientsDto? nutrients)  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto():
return $default(_that.id,_that.name,_that.nutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  DishNutrientsDto? nutrients)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
return $default(_that.id,_that.name,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyzedFoodItemDto implements AnalyzedFoodItemDto {
  const _AnalyzedFoodItemDto({required this.id, this.name, this.nutrients});
  factory _AnalyzedFoodItemDto.fromJson(Map<String, dynamic> json) => _$AnalyzedFoodItemDtoFromJson(json);

@override final  int id;
@override final  String? name;
@override final  DishNutrientsDto? nutrients;

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyzedFoodItemDtoCopyWith<_AnalyzedFoodItemDto> get copyWith => __$AnalyzedFoodItemDtoCopyWithImpl<_AnalyzedFoodItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyzedFoodItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzedFoodItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nutrients);

@override
String toString() {
  return 'AnalyzedFoodItemDto(id: $id, name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$AnalyzedFoodItemDtoCopyWith<$Res> implements $AnalyzedFoodItemDtoCopyWith<$Res> {
  factory _$AnalyzedFoodItemDtoCopyWith(_AnalyzedFoodItemDto value, $Res Function(_AnalyzedFoodItemDto) _then) = __$AnalyzedFoodItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, DishNutrientsDto? nutrients
});


@override $DishNutrientsDtoCopyWith<$Res>? get nutrients;

}
/// @nodoc
class __$AnalyzedFoodItemDtoCopyWithImpl<$Res>
    implements _$AnalyzedFoodItemDtoCopyWith<$Res> {
  __$AnalyzedFoodItemDtoCopyWithImpl(this._self, this._then);

  final _AnalyzedFoodItemDto _self;
  final $Res Function(_AnalyzedFoodItemDto) _then;

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? nutrients = freezed,}) {
  return _then(_AnalyzedFoodItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as DishNutrientsDto?,
  ));
}

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishNutrientsDtoCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $DishNutrientsDtoCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// @nodoc
mixin _$DishNutrientsDto {

 NutrientValueDto? get kcal; NutrientValueDto? get carbG; NutrientValueDto? get proteinG; NutrientValueDto? get fatG; NutrientValueDto? get sugarG; NutrientValueDto? get sodiumMg;
/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishNutrientsDtoCopyWith<DishNutrientsDto> get copyWith => _$DishNutrientsDtoCopyWithImpl<DishNutrientsDto>(this as DishNutrientsDto, _$identity);

  /// Serializes this DishNutrientsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishNutrientsDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbG, carbG) || other.carbG == carbG)&&(identical(other.proteinG, proteinG) || other.proteinG == proteinG)&&(identical(other.fatG, fatG) || other.fatG == fatG)&&(identical(other.sugarG, sugarG) || other.sugarG == sugarG)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbG,proteinG,fatG,sugarG,sodiumMg);

@override
String toString() {
  return 'DishNutrientsDto(kcal: $kcal, carbG: $carbG, proteinG: $proteinG, fatG: $fatG, sugarG: $sugarG, sodiumMg: $sodiumMg)';
}


}

/// @nodoc
abstract mixin class $DishNutrientsDtoCopyWith<$Res>  {
  factory $DishNutrientsDtoCopyWith(DishNutrientsDto value, $Res Function(DishNutrientsDto) _then) = _$DishNutrientsDtoCopyWithImpl;
@useResult
$Res call({
 NutrientValueDto? kcal, NutrientValueDto? carbG, NutrientValueDto? proteinG, NutrientValueDto? fatG, NutrientValueDto? sugarG, NutrientValueDto? sodiumMg
});


$NutrientValueDtoCopyWith<$Res>? get kcal;$NutrientValueDtoCopyWith<$Res>? get carbG;$NutrientValueDtoCopyWith<$Res>? get proteinG;$NutrientValueDtoCopyWith<$Res>? get fatG;$NutrientValueDtoCopyWith<$Res>? get sugarG;$NutrientValueDtoCopyWith<$Res>? get sodiumMg;

}
/// @nodoc
class _$DishNutrientsDtoCopyWithImpl<$Res>
    implements $DishNutrientsDtoCopyWith<$Res> {
  _$DishNutrientsDtoCopyWithImpl(this._self, this._then);

  final DishNutrientsDto _self;
  final $Res Function(DishNutrientsDto) _then;

/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbG = freezed,Object? proteinG = freezed,Object? fatG = freezed,Object? sugarG = freezed,Object? sodiumMg = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,carbG: freezed == carbG ? _self.carbG : carbG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,proteinG: freezed == proteinG ? _self.proteinG : proteinG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,fatG: freezed == fatG ? _self.fatG : fatG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,sugarG: freezed == sugarG ? _self.sugarG : sugarG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,sodiumMg: freezed == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,
  ));
}
/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get carbG {
    if (_self.carbG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.carbG!, (value) {
    return _then(_self.copyWith(carbG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get proteinG {
    if (_self.proteinG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.proteinG!, (value) {
    return _then(_self.copyWith(proteinG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get fatG {
    if (_self.fatG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.fatG!, (value) {
    return _then(_self.copyWith(fatG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get sugarG {
    if (_self.sugarG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.sugarG!, (value) {
    return _then(_self.copyWith(sugarG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get sodiumMg {
    if (_self.sodiumMg == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.sodiumMg!, (value) {
    return _then(_self.copyWith(sodiumMg: value));
  });
}
}


/// Adds pattern-matching-related methods to [DishNutrientsDto].
extension DishNutrientsDtoPatterns on DishNutrientsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishNutrientsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishNutrientsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishNutrientsDto value)  $default,){
final _that = this;
switch (_that) {
case _DishNutrientsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishNutrientsDto value)?  $default,){
final _that = this;
switch (_that) {
case _DishNutrientsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientValueDto? kcal,  NutrientValueDto? carbG,  NutrientValueDto? proteinG,  NutrientValueDto? fatG,  NutrientValueDto? sugarG,  NutrientValueDto? sodiumMg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishNutrientsDto() when $default != null:
return $default(_that.kcal,_that.carbG,_that.proteinG,_that.fatG,_that.sugarG,_that.sodiumMg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientValueDto? kcal,  NutrientValueDto? carbG,  NutrientValueDto? proteinG,  NutrientValueDto? fatG,  NutrientValueDto? sugarG,  NutrientValueDto? sodiumMg)  $default,) {final _that = this;
switch (_that) {
case _DishNutrientsDto():
return $default(_that.kcal,_that.carbG,_that.proteinG,_that.fatG,_that.sugarG,_that.sodiumMg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientValueDto? kcal,  NutrientValueDto? carbG,  NutrientValueDto? proteinG,  NutrientValueDto? fatG,  NutrientValueDto? sugarG,  NutrientValueDto? sodiumMg)?  $default,) {final _that = this;
switch (_that) {
case _DishNutrientsDto() when $default != null:
return $default(_that.kcal,_that.carbG,_that.proteinG,_that.fatG,_that.sugarG,_that.sodiumMg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishNutrientsDto implements DishNutrientsDto {
  const _DishNutrientsDto({this.kcal, this.carbG, this.proteinG, this.fatG, this.sugarG, this.sodiumMg});
  factory _DishNutrientsDto.fromJson(Map<String, dynamic> json) => _$DishNutrientsDtoFromJson(json);

@override final  NutrientValueDto? kcal;
@override final  NutrientValueDto? carbG;
@override final  NutrientValueDto? proteinG;
@override final  NutrientValueDto? fatG;
@override final  NutrientValueDto? sugarG;
@override final  NutrientValueDto? sodiumMg;

/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishNutrientsDtoCopyWith<_DishNutrientsDto> get copyWith => __$DishNutrientsDtoCopyWithImpl<_DishNutrientsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishNutrientsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishNutrientsDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbG, carbG) || other.carbG == carbG)&&(identical(other.proteinG, proteinG) || other.proteinG == proteinG)&&(identical(other.fatG, fatG) || other.fatG == fatG)&&(identical(other.sugarG, sugarG) || other.sugarG == sugarG)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbG,proteinG,fatG,sugarG,sodiumMg);

@override
String toString() {
  return 'DishNutrientsDto(kcal: $kcal, carbG: $carbG, proteinG: $proteinG, fatG: $fatG, sugarG: $sugarG, sodiumMg: $sodiumMg)';
}


}

/// @nodoc
abstract mixin class _$DishNutrientsDtoCopyWith<$Res> implements $DishNutrientsDtoCopyWith<$Res> {
  factory _$DishNutrientsDtoCopyWith(_DishNutrientsDto value, $Res Function(_DishNutrientsDto) _then) = __$DishNutrientsDtoCopyWithImpl;
@override @useResult
$Res call({
 NutrientValueDto? kcal, NutrientValueDto? carbG, NutrientValueDto? proteinG, NutrientValueDto? fatG, NutrientValueDto? sugarG, NutrientValueDto? sodiumMg
});


@override $NutrientValueDtoCopyWith<$Res>? get kcal;@override $NutrientValueDtoCopyWith<$Res>? get carbG;@override $NutrientValueDtoCopyWith<$Res>? get proteinG;@override $NutrientValueDtoCopyWith<$Res>? get fatG;@override $NutrientValueDtoCopyWith<$Res>? get sugarG;@override $NutrientValueDtoCopyWith<$Res>? get sodiumMg;

}
/// @nodoc
class __$DishNutrientsDtoCopyWithImpl<$Res>
    implements _$DishNutrientsDtoCopyWith<$Res> {
  __$DishNutrientsDtoCopyWithImpl(this._self, this._then);

  final _DishNutrientsDto _self;
  final $Res Function(_DishNutrientsDto) _then;

/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbG = freezed,Object? proteinG = freezed,Object? fatG = freezed,Object? sugarG = freezed,Object? sodiumMg = freezed,}) {
  return _then(_DishNutrientsDto(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,carbG: freezed == carbG ? _self.carbG : carbG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,proteinG: freezed == proteinG ? _self.proteinG : proteinG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,fatG: freezed == fatG ? _self.fatG : fatG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,sugarG: freezed == sugarG ? _self.sugarG : sugarG // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,sodiumMg: freezed == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as NutrientValueDto?,
  ));
}

/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get carbG {
    if (_self.carbG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.carbG!, (value) {
    return _then(_self.copyWith(carbG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get proteinG {
    if (_self.proteinG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.proteinG!, (value) {
    return _then(_self.copyWith(proteinG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get fatG {
    if (_self.fatG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.fatG!, (value) {
    return _then(_self.copyWith(fatG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get sugarG {
    if (_self.sugarG == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.sugarG!, (value) {
    return _then(_self.copyWith(sugarG: value));
  });
}/// Create a copy of DishNutrientsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<$Res>? get sodiumMg {
    if (_self.sodiumMg == null) {
    return null;
  }

  return $NutrientValueDtoCopyWith<$Res>(_self.sodiumMg!, (value) {
    return _then(_self.copyWith(sodiumMg: value));
  });
}
}


/// @nodoc
mixin _$NutrientValueDto {

 double? get value; List<double>? get range; String? get unit;
/// Create a copy of NutrientValueDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientValueDtoCopyWith<NutrientValueDto> get copyWith => _$NutrientValueDtoCopyWithImpl<NutrientValueDto>(this as NutrientValueDto, _$identity);

  /// Serializes this NutrientValueDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientValueDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.range, range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(range),unit);

@override
String toString() {
  return 'NutrientValueDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $NutrientValueDtoCopyWith<$Res>  {
  factory $NutrientValueDtoCopyWith(NutrientValueDto value, $Res Function(NutrientValueDto) _then) = _$NutrientValueDtoCopyWithImpl;
@useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class _$NutrientValueDtoCopyWithImpl<$Res>
    implements $NutrientValueDtoCopyWith<$Res> {
  _$NutrientValueDtoCopyWithImpl(this._self, this._then);

  final NutrientValueDto _self;
  final $Res Function(NutrientValueDto) _then;

/// Create a copy of NutrientValueDto
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


/// Adds pattern-matching-related methods to [NutrientValueDto].
extension NutrientValueDtoPatterns on NutrientValueDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientValueDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientValueDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientValueDto value)  $default,){
final _that = this;
switch (_that) {
case _NutrientValueDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientValueDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientValueDto() when $default != null:
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
case _NutrientValueDto() when $default != null:
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
case _NutrientValueDto():
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
case _NutrientValueDto() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientValueDto implements NutrientValueDto {
  const _NutrientValueDto({this.value, final  List<double>? range, this.unit}): _range = range;
  factory _NutrientValueDto.fromJson(Map<String, dynamic> json) => _$NutrientValueDtoFromJson(json);

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

/// Create a copy of NutrientValueDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientValueDtoCopyWith<_NutrientValueDto> get copyWith => __$NutrientValueDtoCopyWithImpl<_NutrientValueDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientValueDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientValueDto&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._range, _range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_range),unit);

@override
String toString() {
  return 'NutrientValueDto(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$NutrientValueDtoCopyWith<$Res> implements $NutrientValueDtoCopyWith<$Res> {
  factory _$NutrientValueDtoCopyWith(_NutrientValueDto value, $Res Function(_NutrientValueDto) _then) = __$NutrientValueDtoCopyWithImpl;
@override @useResult
$Res call({
 double? value, List<double>? range, String? unit
});




}
/// @nodoc
class __$NutrientValueDtoCopyWithImpl<$Res>
    implements _$NutrientValueDtoCopyWith<$Res> {
  __$NutrientValueDtoCopyWithImpl(this._self, this._then);

  final _NutrientValueDto _self;
  final $Res Function(_NutrientValueDto) _then;

/// Create a copy of NutrientValueDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? range = freezed,Object? unit = freezed,}) {
  return _then(_NutrientValueDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: freezed == range ? _self._range : range // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NutritionComparisonDto {

 KcalComparisonDto? get kcal; MacronutrientComparisonDto? get carbohydrate; MacronutrientComparisonDto? get protein; MacronutrientComparisonDto? get fat; SugarComparisonDto? get sugar; SodiumComparisonDto? get sodium;
/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionComparisonDtoCopyWith<NutritionComparisonDto> get copyWith => _$NutritionComparisonDtoCopyWithImpl<NutritionComparisonDto>(this as NutritionComparisonDto, _$identity);

  /// Serializes this NutritionComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionComparisonDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionComparisonDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $NutritionComparisonDtoCopyWith<$Res>  {
  factory $NutritionComparisonDtoCopyWith(NutritionComparisonDto value, $Res Function(NutritionComparisonDto) _then) = _$NutritionComparisonDtoCopyWithImpl;
@useResult
$Res call({
 KcalComparisonDto? kcal, MacronutrientComparisonDto? carbohydrate, MacronutrientComparisonDto? protein, MacronutrientComparisonDto? fat, SugarComparisonDto? sugar, SodiumComparisonDto? sodium
});


$KcalComparisonDtoCopyWith<$Res>? get kcal;$MacronutrientComparisonDtoCopyWith<$Res>? get carbohydrate;$MacronutrientComparisonDtoCopyWith<$Res>? get protein;$MacronutrientComparisonDtoCopyWith<$Res>? get fat;$SugarComparisonDtoCopyWith<$Res>? get sugar;$SodiumComparisonDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$NutritionComparisonDtoCopyWithImpl<$Res>
    implements $NutritionComparisonDtoCopyWith<$Res> {
  _$NutritionComparisonDtoCopyWithImpl(this._self, this._then);

  final NutritionComparisonDto _self;
  final $Res Function(NutritionComparisonDto) _then;

/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as KcalComparisonDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarComparisonDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumComparisonDto?,
  ));
}
/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KcalComparisonDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $KcalComparisonDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarComparisonDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarComparisonDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumComparisonDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumComparisonDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionComparisonDto].
extension NutritionComparisonDtoPatterns on NutritionComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _NutritionComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KcalComparisonDto? kcal,  MacronutrientComparisonDto? carbohydrate,  MacronutrientComparisonDto? protein,  MacronutrientComparisonDto? fat,  SugarComparisonDto? sugar,  SodiumComparisonDto? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionComparisonDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KcalComparisonDto? kcal,  MacronutrientComparisonDto? carbohydrate,  MacronutrientComparisonDto? protein,  MacronutrientComparisonDto? fat,  SugarComparisonDto? sugar,  SodiumComparisonDto? sodium)  $default,) {final _that = this;
switch (_that) {
case _NutritionComparisonDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KcalComparisonDto? kcal,  MacronutrientComparisonDto? carbohydrate,  MacronutrientComparisonDto? protein,  MacronutrientComparisonDto? fat,  SugarComparisonDto? sugar,  SodiumComparisonDto? sodium)?  $default,) {final _that = this;
switch (_that) {
case _NutritionComparisonDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionComparisonDto implements NutritionComparisonDto {
  const _NutritionComparisonDto({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _NutritionComparisonDto.fromJson(Map<String, dynamic> json) => _$NutritionComparisonDtoFromJson(json);

@override final  KcalComparisonDto? kcal;
@override final  MacronutrientComparisonDto? carbohydrate;
@override final  MacronutrientComparisonDto? protein;
@override final  MacronutrientComparisonDto? fat;
@override final  SugarComparisonDto? sugar;
@override final  SodiumComparisonDto? sodium;

/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionComparisonDtoCopyWith<_NutritionComparisonDto> get copyWith => __$NutritionComparisonDtoCopyWithImpl<_NutritionComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionComparisonDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionComparisonDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$NutritionComparisonDtoCopyWith<$Res> implements $NutritionComparisonDtoCopyWith<$Res> {
  factory _$NutritionComparisonDtoCopyWith(_NutritionComparisonDto value, $Res Function(_NutritionComparisonDto) _then) = __$NutritionComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
 KcalComparisonDto? kcal, MacronutrientComparisonDto? carbohydrate, MacronutrientComparisonDto? protein, MacronutrientComparisonDto? fat, SugarComparisonDto? sugar, SodiumComparisonDto? sodium
});


@override $KcalComparisonDtoCopyWith<$Res>? get kcal;@override $MacronutrientComparisonDtoCopyWith<$Res>? get carbohydrate;@override $MacronutrientComparisonDtoCopyWith<$Res>? get protein;@override $MacronutrientComparisonDtoCopyWith<$Res>? get fat;@override $SugarComparisonDtoCopyWith<$Res>? get sugar;@override $SodiumComparisonDtoCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$NutritionComparisonDtoCopyWithImpl<$Res>
    implements _$NutritionComparisonDtoCopyWith<$Res> {
  __$NutritionComparisonDtoCopyWithImpl(this._self, this._then);

  final _NutritionComparisonDto _self;
  final $Res Function(_NutritionComparisonDto) _then;

/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_NutritionComparisonDto(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as KcalComparisonDto?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonDto?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarComparisonDto?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumComparisonDto?,
  ));
}

/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KcalComparisonDtoCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $KcalComparisonDtoCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $MacronutrientComparisonDtoCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarComparisonDtoCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarComparisonDtoCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumComparisonDtoCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumComparisonDtoCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$KcalComparisonDto {

 double? get intakeKcal; int? get dailyTargetKcal; double? get percent;
/// Create a copy of KcalComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KcalComparisonDtoCopyWith<KcalComparisonDto> get copyWith => _$KcalComparisonDtoCopyWithImpl<KcalComparisonDto>(this as KcalComparisonDto, _$identity);

  /// Serializes this KcalComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KcalComparisonDto&&(identical(other.intakeKcal, intakeKcal) || other.intakeKcal == intakeKcal)&&(identical(other.dailyTargetKcal, dailyTargetKcal) || other.dailyTargetKcal == dailyTargetKcal)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeKcal,dailyTargetKcal,percent);

@override
String toString() {
  return 'KcalComparisonDto(intakeKcal: $intakeKcal, dailyTargetKcal: $dailyTargetKcal, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $KcalComparisonDtoCopyWith<$Res>  {
  factory $KcalComparisonDtoCopyWith(KcalComparisonDto value, $Res Function(KcalComparisonDto) _then) = _$KcalComparisonDtoCopyWithImpl;
@useResult
$Res call({
 double? intakeKcal, int? dailyTargetKcal, double? percent
});




}
/// @nodoc
class _$KcalComparisonDtoCopyWithImpl<$Res>
    implements $KcalComparisonDtoCopyWith<$Res> {
  _$KcalComparisonDtoCopyWithImpl(this._self, this._then);

  final KcalComparisonDto _self;
  final $Res Function(KcalComparisonDto) _then;

/// Create a copy of KcalComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeKcal = freezed,Object? dailyTargetKcal = freezed,Object? percent = freezed,}) {
  return _then(_self.copyWith(
intakeKcal: freezed == intakeKcal ? _self.intakeKcal : intakeKcal // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetKcal: freezed == dailyTargetKcal ? _self.dailyTargetKcal : dailyTargetKcal // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [KcalComparisonDto].
extension KcalComparisonDtoPatterns on KcalComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KcalComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KcalComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KcalComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _KcalComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KcalComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _KcalComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeKcal,  int? dailyTargetKcal,  double? percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KcalComparisonDto() when $default != null:
return $default(_that.intakeKcal,_that.dailyTargetKcal,_that.percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeKcal,  int? dailyTargetKcal,  double? percent)  $default,) {final _that = this;
switch (_that) {
case _KcalComparisonDto():
return $default(_that.intakeKcal,_that.dailyTargetKcal,_that.percent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeKcal,  int? dailyTargetKcal,  double? percent)?  $default,) {final _that = this;
switch (_that) {
case _KcalComparisonDto() when $default != null:
return $default(_that.intakeKcal,_that.dailyTargetKcal,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KcalComparisonDto implements KcalComparisonDto {
  const _KcalComparisonDto({this.intakeKcal, this.dailyTargetKcal, this.percent});
  factory _KcalComparisonDto.fromJson(Map<String, dynamic> json) => _$KcalComparisonDtoFromJson(json);

@override final  double? intakeKcal;
@override final  int? dailyTargetKcal;
@override final  double? percent;

/// Create a copy of KcalComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KcalComparisonDtoCopyWith<_KcalComparisonDto> get copyWith => __$KcalComparisonDtoCopyWithImpl<_KcalComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KcalComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KcalComparisonDto&&(identical(other.intakeKcal, intakeKcal) || other.intakeKcal == intakeKcal)&&(identical(other.dailyTargetKcal, dailyTargetKcal) || other.dailyTargetKcal == dailyTargetKcal)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeKcal,dailyTargetKcal,percent);

@override
String toString() {
  return 'KcalComparisonDto(intakeKcal: $intakeKcal, dailyTargetKcal: $dailyTargetKcal, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$KcalComparisonDtoCopyWith<$Res> implements $KcalComparisonDtoCopyWith<$Res> {
  factory _$KcalComparisonDtoCopyWith(_KcalComparisonDto value, $Res Function(_KcalComparisonDto) _then) = __$KcalComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intakeKcal, int? dailyTargetKcal, double? percent
});




}
/// @nodoc
class __$KcalComparisonDtoCopyWithImpl<$Res>
    implements _$KcalComparisonDtoCopyWith<$Res> {
  __$KcalComparisonDtoCopyWithImpl(this._self, this._then);

  final _KcalComparisonDto _self;
  final $Res Function(_KcalComparisonDto) _then;

/// Create a copy of KcalComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeKcal = freezed,Object? dailyTargetKcal = freezed,Object? percent = freezed,}) {
  return _then(_KcalComparisonDto(
intakeKcal: freezed == intakeKcal ? _self.intakeKcal : intakeKcal // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetKcal: freezed == dailyTargetKcal ? _self.dailyTargetKcal : dailyTargetKcal // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$MacronutrientComparisonDto {

 double? get intakeG; int? get dailyTargetG; double? get percent;
/// Create a copy of MacronutrientComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MacronutrientComparisonDtoCopyWith<MacronutrientComparisonDto> get copyWith => _$MacronutrientComparisonDtoCopyWithImpl<MacronutrientComparisonDto>(this as MacronutrientComparisonDto, _$identity);

  /// Serializes this MacronutrientComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MacronutrientComparisonDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.dailyTargetG, dailyTargetG) || other.dailyTargetG == dailyTargetG)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,dailyTargetG,percent);

@override
String toString() {
  return 'MacronutrientComparisonDto(intakeG: $intakeG, dailyTargetG: $dailyTargetG, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $MacronutrientComparisonDtoCopyWith<$Res>  {
  factory $MacronutrientComparisonDtoCopyWith(MacronutrientComparisonDto value, $Res Function(MacronutrientComparisonDto) _then) = _$MacronutrientComparisonDtoCopyWithImpl;
@useResult
$Res call({
 double? intakeG, int? dailyTargetG, double? percent
});




}
/// @nodoc
class _$MacronutrientComparisonDtoCopyWithImpl<$Res>
    implements $MacronutrientComparisonDtoCopyWith<$Res> {
  _$MacronutrientComparisonDtoCopyWithImpl(this._self, this._then);

  final MacronutrientComparisonDto _self;
  final $Res Function(MacronutrientComparisonDto) _then;

/// Create a copy of MacronutrientComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeG = freezed,Object? dailyTargetG = freezed,Object? percent = freezed,}) {
  return _then(_self.copyWith(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetG: freezed == dailyTargetG ? _self.dailyTargetG : dailyTargetG // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MacronutrientComparisonDto].
extension MacronutrientComparisonDtoPatterns on MacronutrientComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MacronutrientComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MacronutrientComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MacronutrientComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _MacronutrientComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MacronutrientComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _MacronutrientComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeG,  int? dailyTargetG,  double? percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MacronutrientComparisonDto() when $default != null:
return $default(_that.intakeG,_that.dailyTargetG,_that.percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeG,  int? dailyTargetG,  double? percent)  $default,) {final _that = this;
switch (_that) {
case _MacronutrientComparisonDto():
return $default(_that.intakeG,_that.dailyTargetG,_that.percent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeG,  int? dailyTargetG,  double? percent)?  $default,) {final _that = this;
switch (_that) {
case _MacronutrientComparisonDto() when $default != null:
return $default(_that.intakeG,_that.dailyTargetG,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MacronutrientComparisonDto implements MacronutrientComparisonDto {
  const _MacronutrientComparisonDto({this.intakeG, this.dailyTargetG, this.percent});
  factory _MacronutrientComparisonDto.fromJson(Map<String, dynamic> json) => _$MacronutrientComparisonDtoFromJson(json);

@override final  double? intakeG;
@override final  int? dailyTargetG;
@override final  double? percent;

/// Create a copy of MacronutrientComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MacronutrientComparisonDtoCopyWith<_MacronutrientComparisonDto> get copyWith => __$MacronutrientComparisonDtoCopyWithImpl<_MacronutrientComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MacronutrientComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MacronutrientComparisonDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.dailyTargetG, dailyTargetG) || other.dailyTargetG == dailyTargetG)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,dailyTargetG,percent);

@override
String toString() {
  return 'MacronutrientComparisonDto(intakeG: $intakeG, dailyTargetG: $dailyTargetG, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$MacronutrientComparisonDtoCopyWith<$Res> implements $MacronutrientComparisonDtoCopyWith<$Res> {
  factory _$MacronutrientComparisonDtoCopyWith(_MacronutrientComparisonDto value, $Res Function(_MacronutrientComparisonDto) _then) = __$MacronutrientComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intakeG, int? dailyTargetG, double? percent
});




}
/// @nodoc
class __$MacronutrientComparisonDtoCopyWithImpl<$Res>
    implements _$MacronutrientComparisonDtoCopyWith<$Res> {
  __$MacronutrientComparisonDtoCopyWithImpl(this._self, this._then);

  final _MacronutrientComparisonDto _self;
  final $Res Function(_MacronutrientComparisonDto) _then;

/// Create a copy of MacronutrientComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = freezed,Object? dailyTargetG = freezed,Object? percent = freezed,}) {
  return _then(_MacronutrientComparisonDto(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetG: freezed == dailyTargetG ? _self.dailyTargetG : dailyTargetG // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarComparisonDto {

 double? get intakeG; int? get maxG; String? get statusCode;
/// Create a copy of SugarComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarComparisonDtoCopyWith<SugarComparisonDto> get copyWith => _$SugarComparisonDtoCopyWithImpl<SugarComparisonDto>(this as SugarComparisonDto, _$identity);

  /// Serializes this SugarComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarComparisonDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,maxG,statusCode);

@override
String toString() {
  return 'SugarComparisonDto(intakeG: $intakeG, maxG: $maxG, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SugarComparisonDtoCopyWith<$Res>  {
  factory $SugarComparisonDtoCopyWith(SugarComparisonDto value, $Res Function(SugarComparisonDto) _then) = _$SugarComparisonDtoCopyWithImpl;
@useResult
$Res call({
 double? intakeG, int? maxG, String? statusCode
});




}
/// @nodoc
class _$SugarComparisonDtoCopyWithImpl<$Res>
    implements $SugarComparisonDtoCopyWith<$Res> {
  _$SugarComparisonDtoCopyWithImpl(this._self, this._then);

  final SugarComparisonDto _self;
  final $Res Function(SugarComparisonDto) _then;

/// Create a copy of SugarComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeG = freezed,Object? maxG = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,maxG: freezed == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarComparisonDto].
extension SugarComparisonDtoPatterns on SugarComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _SugarComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _SugarComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeG,  int? maxG,  String? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarComparisonDto() when $default != null:
return $default(_that.intakeG,_that.maxG,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeG,  int? maxG,  String? statusCode)  $default,) {final _that = this;
switch (_that) {
case _SugarComparisonDto():
return $default(_that.intakeG,_that.maxG,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeG,  int? maxG,  String? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _SugarComparisonDto() when $default != null:
return $default(_that.intakeG,_that.maxG,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarComparisonDto implements SugarComparisonDto {
  const _SugarComparisonDto({this.intakeG, this.maxG, this.statusCode});
  factory _SugarComparisonDto.fromJson(Map<String, dynamic> json) => _$SugarComparisonDtoFromJson(json);

@override final  double? intakeG;
@override final  int? maxG;
@override final  String? statusCode;

/// Create a copy of SugarComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarComparisonDtoCopyWith<_SugarComparisonDto> get copyWith => __$SugarComparisonDtoCopyWithImpl<_SugarComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarComparisonDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,maxG,statusCode);

@override
String toString() {
  return 'SugarComparisonDto(intakeG: $intakeG, maxG: $maxG, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SugarComparisonDtoCopyWith<$Res> implements $SugarComparisonDtoCopyWith<$Res> {
  factory _$SugarComparisonDtoCopyWith(_SugarComparisonDto value, $Res Function(_SugarComparisonDto) _then) = __$SugarComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intakeG, int? maxG, String? statusCode
});




}
/// @nodoc
class __$SugarComparisonDtoCopyWithImpl<$Res>
    implements _$SugarComparisonDtoCopyWith<$Res> {
  __$SugarComparisonDtoCopyWithImpl(this._self, this._then);

  final _SugarComparisonDto _self;
  final $Res Function(_SugarComparisonDto) _then;

/// Create a copy of SugarComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = freezed,Object? maxG = freezed,Object? statusCode = freezed,}) {
  return _then(_SugarComparisonDto(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,maxG: freezed == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SodiumComparisonDto {

 double? get intakeMg; int? get adequateMg; int? get riskReductionMg; String? get statusCode;
/// Create a copy of SodiumComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumComparisonDtoCopyWith<SodiumComparisonDto> get copyWith => _$SodiumComparisonDtoCopyWithImpl<SodiumComparisonDto>(this as SodiumComparisonDto, _$identity);

  /// Serializes this SodiumComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumComparisonDto&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,statusCode);

@override
String toString() {
  return 'SodiumComparisonDto(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $SodiumComparisonDtoCopyWith<$Res>  {
  factory $SodiumComparisonDtoCopyWith(SodiumComparisonDto value, $Res Function(SodiumComparisonDto) _then) = _$SodiumComparisonDtoCopyWithImpl;
@useResult
$Res call({
 double? intakeMg, int? adequateMg, int? riskReductionMg, String? statusCode
});




}
/// @nodoc
class _$SodiumComparisonDtoCopyWithImpl<$Res>
    implements $SodiumComparisonDtoCopyWith<$Res> {
  _$SodiumComparisonDtoCopyWithImpl(this._self, this._then);

  final SodiumComparisonDto _self;
  final $Res Function(SodiumComparisonDto) _then;

/// Create a copy of SodiumComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeMg = freezed,Object? adequateMg = freezed,Object? riskReductionMg = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
intakeMg: freezed == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double?,adequateMg: freezed == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int?,riskReductionMg: freezed == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumComparisonDto].
extension SodiumComparisonDtoPatterns on SodiumComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _SodiumComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  String? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumComparisonDto() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  String? statusCode)  $default,) {final _that = this;
switch (_that) {
case _SodiumComparisonDto():
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  String? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _SodiumComparisonDto() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumComparisonDto implements SodiumComparisonDto {
  const _SodiumComparisonDto({this.intakeMg, this.adequateMg, this.riskReductionMg, this.statusCode});
  factory _SodiumComparisonDto.fromJson(Map<String, dynamic> json) => _$SodiumComparisonDtoFromJson(json);

@override final  double? intakeMg;
@override final  int? adequateMg;
@override final  int? riskReductionMg;
@override final  String? statusCode;

/// Create a copy of SodiumComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumComparisonDtoCopyWith<_SodiumComparisonDto> get copyWith => __$SodiumComparisonDtoCopyWithImpl<_SodiumComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumComparisonDto&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,statusCode);

@override
String toString() {
  return 'SodiumComparisonDto(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$SodiumComparisonDtoCopyWith<$Res> implements $SodiumComparisonDtoCopyWith<$Res> {
  factory _$SodiumComparisonDtoCopyWith(_SodiumComparisonDto value, $Res Function(_SodiumComparisonDto) _then) = __$SodiumComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
 double? intakeMg, int? adequateMg, int? riskReductionMg, String? statusCode
});




}
/// @nodoc
class __$SodiumComparisonDtoCopyWithImpl<$Res>
    implements _$SodiumComparisonDtoCopyWith<$Res> {
  __$SodiumComparisonDtoCopyWithImpl(this._self, this._then);

  final _SodiumComparisonDto _self;
  final $Res Function(_SodiumComparisonDto) _then;

/// Create a copy of SodiumComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeMg = freezed,Object? adequateMg = freezed,Object? riskReductionMg = freezed,Object? statusCode = freezed,}) {
  return _then(_SodiumComparisonDto(
intakeMg: freezed == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double?,adequateMg: freezed == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int?,riskReductionMg: freezed == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
