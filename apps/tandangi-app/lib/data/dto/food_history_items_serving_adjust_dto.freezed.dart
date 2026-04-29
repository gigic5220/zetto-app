// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_history_items_serving_adjust_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodHistoryItemsServingAdjustRequestDto {

 List<FoodHistoryItemServingAdjustmentRequestItemDto> get items;
/// Create a copy of FoodHistoryItemsServingAdjustRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemsServingAdjustRequestDtoCopyWith<FoodHistoryItemsServingAdjustRequestDto> get copyWith => _$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl<FoodHistoryItemsServingAdjustRequestDto>(this as FoodHistoryItemsServingAdjustRequestDto, _$identity);

  /// Serializes this FoodHistoryItemsServingAdjustRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemsServingAdjustRequestDto&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustRequestDto(items: $items)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemsServingAdjustRequestDtoCopyWith<$Res>  {
  factory $FoodHistoryItemsServingAdjustRequestDtoCopyWith(FoodHistoryItemsServingAdjustRequestDto value, $Res Function(FoodHistoryItemsServingAdjustRequestDto) _then) = _$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl;
@useResult
$Res call({
 List<FoodHistoryItemServingAdjustmentRequestItemDto> items
});




}
/// @nodoc
class _$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl<$Res>
    implements $FoodHistoryItemsServingAdjustRequestDtoCopyWith<$Res> {
  _$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl(this._self, this._then);

  final FoodHistoryItemsServingAdjustRequestDto _self;
  final $Res Function(FoodHistoryItemsServingAdjustRequestDto) _then;

/// Create a copy of FoodHistoryItemsServingAdjustRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FoodHistoryItemServingAdjustmentRequestItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodHistoryItemsServingAdjustRequestDto].
extension FoodHistoryItemsServingAdjustRequestDtoPatterns on FoodHistoryItemsServingAdjustRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemsServingAdjustRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FoodHistoryItemServingAdjustmentRequestItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FoodHistoryItemServingAdjustmentRequestItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FoodHistoryItemServingAdjustmentRequestItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustRequestDto() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemsServingAdjustRequestDto implements FoodHistoryItemsServingAdjustRequestDto {
  const _FoodHistoryItemsServingAdjustRequestDto({required final  List<FoodHistoryItemServingAdjustmentRequestItemDto> items}): _items = items;
  factory _FoodHistoryItemsServingAdjustRequestDto.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemsServingAdjustRequestDtoFromJson(json);

 final  List<FoodHistoryItemServingAdjustmentRequestItemDto> _items;
@override List<FoodHistoryItemServingAdjustmentRequestItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FoodHistoryItemsServingAdjustRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemsServingAdjustRequestDtoCopyWith<_FoodHistoryItemsServingAdjustRequestDto> get copyWith => __$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl<_FoodHistoryItemsServingAdjustRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemsServingAdjustRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemsServingAdjustRequestDto&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustRequestDto(items: $items)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemsServingAdjustRequestDtoCopyWith<$Res> implements $FoodHistoryItemsServingAdjustRequestDtoCopyWith<$Res> {
  factory _$FoodHistoryItemsServingAdjustRequestDtoCopyWith(_FoodHistoryItemsServingAdjustRequestDto value, $Res Function(_FoodHistoryItemsServingAdjustRequestDto) _then) = __$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 List<FoodHistoryItemServingAdjustmentRequestItemDto> items
});




}
/// @nodoc
class __$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl<$Res>
    implements _$FoodHistoryItemsServingAdjustRequestDtoCopyWith<$Res> {
  __$FoodHistoryItemsServingAdjustRequestDtoCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemsServingAdjustRequestDto _self;
  final $Res Function(_FoodHistoryItemsServingAdjustRequestDto) _then;

/// Create a copy of FoodHistoryItemsServingAdjustRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_FoodHistoryItemsServingAdjustRequestDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FoodHistoryItemServingAdjustmentRequestItemDto>,
  ));
}


}


/// @nodoc
mixin _$FoodHistoryItemServingAdjustmentRequestItemDto {

 int get foodHistoryItemId; double? get serving; double? get carbohydrate; double? get protein; double? get fat; double? get sodium; double? get sugar;
/// Create a copy of FoodHistoryItemServingAdjustmentRequestItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<FoodHistoryItemServingAdjustmentRequestItemDto> get copyWith => _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl<FoodHistoryItemServingAdjustmentRequestItemDto>(this as FoodHistoryItemServingAdjustmentRequestItemDto, _$identity);

  /// Serializes this FoodHistoryItemServingAdjustmentRequestItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemServingAdjustmentRequestItemDto&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugar, sugar) || other.sugar == sugar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,serving,carbohydrate,protein,fat,sodium,sugar);

@override
String toString() {
  return 'FoodHistoryItemServingAdjustmentRequestItemDto(foodHistoryItemId: $foodHistoryItemId, serving: $serving, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sodium: $sodium, sugar: $sugar)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<$Res>  {
  factory $FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith(FoodHistoryItemServingAdjustmentRequestItemDto value, $Res Function(FoodHistoryItemServingAdjustmentRequestItemDto) _then) = _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl;
@useResult
$Res call({
 int foodHistoryItemId, double? serving, double? carbohydrate, double? protein, double? fat, double? sodium, double? sugar
});




}
/// @nodoc
class _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl<$Res>
    implements $FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<$Res> {
  _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl(this._self, this._then);

  final FoodHistoryItemServingAdjustmentRequestItemDto _self;
  final $Res Function(FoodHistoryItemServingAdjustmentRequestItemDto) _then;

/// Create a copy of FoodHistoryItemServingAdjustmentRequestItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodHistoryItemId = null,Object? serving = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sodium = freezed,Object? sugar = freezed,}) {
  return _then(_self.copyWith(
foodHistoryItemId: null == foodHistoryItemId ? _self.foodHistoryItemId : foodHistoryItemId // ignore: cast_nullable_to_non_nullable
as int,serving: freezed == serving ? _self.serving : serving // ignore: cast_nullable_to_non_nullable
as double?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as double?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodHistoryItemServingAdjustmentRequestItemDto].
extension FoodHistoryItemServingAdjustmentRequestItemDtoPatterns on FoodHistoryItemServingAdjustmentRequestItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemServingAdjustmentRequestItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemServingAdjustmentRequestItemDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemServingAdjustmentRequestItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodHistoryItemId,  double? serving,  double? carbohydrate,  double? protein,  double? fat,  double? sodium,  double? sugar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto() when $default != null:
return $default(_that.foodHistoryItemId,_that.serving,_that.carbohydrate,_that.protein,_that.fat,_that.sodium,_that.sugar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodHistoryItemId,  double? serving,  double? carbohydrate,  double? protein,  double? fat,  double? sodium,  double? sugar)  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto():
return $default(_that.foodHistoryItemId,_that.serving,_that.carbohydrate,_that.protein,_that.fat,_that.sodium,_that.sugar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodHistoryItemId,  double? serving,  double? carbohydrate,  double? protein,  double? fat,  double? sodium,  double? sugar)?  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentRequestItemDto() when $default != null:
return $default(_that.foodHistoryItemId,_that.serving,_that.carbohydrate,_that.protein,_that.fat,_that.sodium,_that.sugar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemServingAdjustmentRequestItemDto implements FoodHistoryItemServingAdjustmentRequestItemDto {
  const _FoodHistoryItemServingAdjustmentRequestItemDto({required this.foodHistoryItemId, this.serving, this.carbohydrate, this.protein, this.fat, this.sodium, this.sugar});
  factory _FoodHistoryItemServingAdjustmentRequestItemDto.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemServingAdjustmentRequestItemDtoFromJson(json);

@override final  int foodHistoryItemId;
@override final  double? serving;
@override final  double? carbohydrate;
@override final  double? protein;
@override final  double? fat;
@override final  double? sodium;
@override final  double? sugar;

/// Create a copy of FoodHistoryItemServingAdjustmentRequestItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<_FoodHistoryItemServingAdjustmentRequestItemDto> get copyWith => __$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl<_FoodHistoryItemServingAdjustmentRequestItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemServingAdjustmentRequestItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemServingAdjustmentRequestItemDto&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugar, sugar) || other.sugar == sugar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,serving,carbohydrate,protein,fat,sodium,sugar);

@override
String toString() {
  return 'FoodHistoryItemServingAdjustmentRequestItemDto(foodHistoryItemId: $foodHistoryItemId, serving: $serving, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sodium: $sodium, sugar: $sugar)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<$Res> implements $FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<$Res> {
  factory _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith(_FoodHistoryItemServingAdjustmentRequestItemDto value, $Res Function(_FoodHistoryItemServingAdjustmentRequestItemDto) _then) = __$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int foodHistoryItemId, double? serving, double? carbohydrate, double? protein, double? fat, double? sodium, double? sugar
});




}
/// @nodoc
class __$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl<$Res>
    implements _$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWith<$Res> {
  __$FoodHistoryItemServingAdjustmentRequestItemDtoCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemServingAdjustmentRequestItemDto _self;
  final $Res Function(_FoodHistoryItemServingAdjustmentRequestItemDto) _then;

/// Create a copy of FoodHistoryItemServingAdjustmentRequestItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodHistoryItemId = null,Object? serving = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sodium = freezed,Object? sugar = freezed,}) {
  return _then(_FoodHistoryItemServingAdjustmentRequestItemDto(
foodHistoryItemId: null == foodHistoryItemId ? _self.foodHistoryItemId : foodHistoryItemId // ignore: cast_nullable_to_non_nullable
as int,serving: freezed == serving ? _self.serving : serving // ignore: cast_nullable_to_non_nullable
as double?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as double?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$FoodHistoryItemsServingAdjustResponseDto {

 int get foodAnalysisId; FoodHistoryItemsNutritionTotalsDto get totals; List<AdjustedFoodHistoryItemDto> get items;
/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemsServingAdjustResponseDtoCopyWith<FoodHistoryItemsServingAdjustResponseDto> get copyWith => _$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl<FoodHistoryItemsServingAdjustResponseDto>(this as FoodHistoryItemsServingAdjustResponseDto, _$identity);

  /// Serializes this FoodHistoryItemsServingAdjustResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemsServingAdjustResponseDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,totals,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustResponseDto(foodAnalysisId: $foodAnalysisId, totals: $totals, items: $items)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemsServingAdjustResponseDtoCopyWith<$Res>  {
  factory $FoodHistoryItemsServingAdjustResponseDtoCopyWith(FoodHistoryItemsServingAdjustResponseDto value, $Res Function(FoodHistoryItemsServingAdjustResponseDto) _then) = _$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId, FoodHistoryItemsNutritionTotalsDto totals, List<AdjustedFoodHistoryItemDto> items
});


$FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class _$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl<$Res>
    implements $FoodHistoryItemsServingAdjustResponseDtoCopyWith<$Res> {
  _$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl(this._self, this._then);

  final FoodHistoryItemsServingAdjustResponseDto _self;
  final $Res Function(FoodHistoryItemsServingAdjustResponseDto) _then;

/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,Object? totals = null,Object? items = null,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as FoodHistoryItemsNutritionTotalsDto,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AdjustedFoodHistoryItemDto>,
  ));
}
/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> get totals {
  
  return $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodHistoryItemsServingAdjustResponseDto].
extension FoodHistoryItemsServingAdjustResponseDtoPatterns on FoodHistoryItemsServingAdjustResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemsServingAdjustResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsDto totals,  List<AdjustedFoodHistoryItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto() when $default != null:
return $default(_that.foodAnalysisId,_that.totals,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsDto totals,  List<AdjustedFoodHistoryItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto():
return $default(_that.foodAnalysisId,_that.totals,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsDto totals,  List<AdjustedFoodHistoryItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustResponseDto() when $default != null:
return $default(_that.foodAnalysisId,_that.totals,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemsServingAdjustResponseDto implements FoodHistoryItemsServingAdjustResponseDto {
  const _FoodHistoryItemsServingAdjustResponseDto({required this.foodAnalysisId, required this.totals, final  List<AdjustedFoodHistoryItemDto> items = const <AdjustedFoodHistoryItemDto>[]}): _items = items;
  factory _FoodHistoryItemsServingAdjustResponseDto.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemsServingAdjustResponseDtoFromJson(json);

@override final  int foodAnalysisId;
@override final  FoodHistoryItemsNutritionTotalsDto totals;
 final  List<AdjustedFoodHistoryItemDto> _items;
@override@JsonKey() List<AdjustedFoodHistoryItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemsServingAdjustResponseDtoCopyWith<_FoodHistoryItemsServingAdjustResponseDto> get copyWith => __$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl<_FoodHistoryItemsServingAdjustResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemsServingAdjustResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemsServingAdjustResponseDto&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,totals,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustResponseDto(foodAnalysisId: $foodAnalysisId, totals: $totals, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemsServingAdjustResponseDtoCopyWith<$Res> implements $FoodHistoryItemsServingAdjustResponseDtoCopyWith<$Res> {
  factory _$FoodHistoryItemsServingAdjustResponseDtoCopyWith(_FoodHistoryItemsServingAdjustResponseDto value, $Res Function(_FoodHistoryItemsServingAdjustResponseDto) _then) = __$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId, FoodHistoryItemsNutritionTotalsDto totals, List<AdjustedFoodHistoryItemDto> items
});


@override $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> get totals;

}
/// @nodoc
class __$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl<$Res>
    implements _$FoodHistoryItemsServingAdjustResponseDtoCopyWith<$Res> {
  __$FoodHistoryItemsServingAdjustResponseDtoCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemsServingAdjustResponseDto _self;
  final $Res Function(_FoodHistoryItemsServingAdjustResponseDto) _then;

/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,Object? totals = null,Object? items = null,}) {
  return _then(_FoodHistoryItemsServingAdjustResponseDto(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as FoodHistoryItemsNutritionTotalsDto,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdjustedFoodHistoryItemDto>,
  ));
}

/// Create a copy of FoodHistoryItemsServingAdjustResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> get totals {
  
  return $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// @nodoc
mixin _$FoodHistoryItemsNutritionTotalsDto {

 double get kcal; double get carbohydrate; double get protein; double get fat;
/// Create a copy of FoodHistoryItemsNutritionTotalsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsDtoCopyWith<FoodHistoryItemsNutritionTotalsDto> get copyWith => _$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl<FoodHistoryItemsNutritionTotalsDto>(this as FoodHistoryItemsNutritionTotalsDto, _$identity);

  /// Serializes this FoodHistoryItemsNutritionTotalsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemsNutritionTotalsDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'FoodHistoryItemsNutritionTotalsDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res>  {
  factory $FoodHistoryItemsNutritionTotalsDtoCopyWith(FoodHistoryItemsNutritionTotalsDto value, $Res Function(FoodHistoryItemsNutritionTotalsDto) _then) = _$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl;
@useResult
$Res call({
 double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class _$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl<$Res>
    implements $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> {
  _$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl(this._self, this._then);

  final FoodHistoryItemsNutritionTotalsDto _self;
  final $Res Function(FoodHistoryItemsNutritionTotalsDto) _then;

/// Create a copy of FoodHistoryItemsNutritionTotalsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_self.copyWith(
kcal: null == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodHistoryItemsNutritionTotalsDto].
extension FoodHistoryItemsNutritionTotalsDtoPatterns on FoodHistoryItemsNutritionTotalsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemsNutritionTotalsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemsNutritionTotalsDto value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemsNutritionTotalsDto value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double kcal,  double carbohydrate,  double protein,  double fat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double kcal,  double carbohydrate,  double protein,  double fat)  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto():
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double kcal,  double carbohydrate,  double protein,  double fat)?  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsDto() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemsNutritionTotalsDto implements FoodHistoryItemsNutritionTotalsDto {
  const _FoodHistoryItemsNutritionTotalsDto({required this.kcal, required this.carbohydrate, required this.protein, required this.fat});
  factory _FoodHistoryItemsNutritionTotalsDto.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemsNutritionTotalsDtoFromJson(json);

@override final  double kcal;
@override final  double carbohydrate;
@override final  double protein;
@override final  double fat;

/// Create a copy of FoodHistoryItemsNutritionTotalsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemsNutritionTotalsDtoCopyWith<_FoodHistoryItemsNutritionTotalsDto> get copyWith => __$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl<_FoodHistoryItemsNutritionTotalsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemsNutritionTotalsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemsNutritionTotalsDto&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'FoodHistoryItemsNutritionTotalsDto(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> implements $FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> {
  factory _$FoodHistoryItemsNutritionTotalsDtoCopyWith(_FoodHistoryItemsNutritionTotalsDto value, $Res Function(_FoodHistoryItemsNutritionTotalsDto) _then) = __$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl;
@override @useResult
$Res call({
 double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class __$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl<$Res>
    implements _$FoodHistoryItemsNutritionTotalsDtoCopyWith<$Res> {
  __$FoodHistoryItemsNutritionTotalsDtoCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemsNutritionTotalsDto _self;
  final $Res Function(_FoodHistoryItemsNutritionTotalsDto) _then;

/// Create a copy of FoodHistoryItemsNutritionTotalsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_FoodHistoryItemsNutritionTotalsDto(
kcal: null == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AdjustedFoodHistoryItemDto {

 int get foodHistoryItemId; String get name; String get itemType; double? get serving; double get kcal; double get carbohydrate; double get protein; double get fat;
/// Create a copy of AdjustedFoodHistoryItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdjustedFoodHistoryItemDtoCopyWith<AdjustedFoodHistoryItemDto> get copyWith => _$AdjustedFoodHistoryItemDtoCopyWithImpl<AdjustedFoodHistoryItemDto>(this as AdjustedFoodHistoryItemDto, _$identity);

  /// Serializes this AdjustedFoodHistoryItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdjustedFoodHistoryItemDto&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,name,itemType,serving,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'AdjustedFoodHistoryItemDto(foodHistoryItemId: $foodHistoryItemId, name: $name, itemType: $itemType, serving: $serving, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class $AdjustedFoodHistoryItemDtoCopyWith<$Res>  {
  factory $AdjustedFoodHistoryItemDtoCopyWith(AdjustedFoodHistoryItemDto value, $Res Function(AdjustedFoodHistoryItemDto) _then) = _$AdjustedFoodHistoryItemDtoCopyWithImpl;
@useResult
$Res call({
 int foodHistoryItemId, String name, String itemType, double? serving, double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class _$AdjustedFoodHistoryItemDtoCopyWithImpl<$Res>
    implements $AdjustedFoodHistoryItemDtoCopyWith<$Res> {
  _$AdjustedFoodHistoryItemDtoCopyWithImpl(this._self, this._then);

  final AdjustedFoodHistoryItemDto _self;
  final $Res Function(AdjustedFoodHistoryItemDto) _then;

/// Create a copy of AdjustedFoodHistoryItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodHistoryItemId = null,Object? name = null,Object? itemType = null,Object? serving = freezed,Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_self.copyWith(
foodHistoryItemId: null == foodHistoryItemId ? _self.foodHistoryItemId : foodHistoryItemId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,serving: freezed == serving ? _self.serving : serving // ignore: cast_nullable_to_non_nullable
as double?,kcal: null == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AdjustedFoodHistoryItemDto].
extension AdjustedFoodHistoryItemDtoPatterns on AdjustedFoodHistoryItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdjustedFoodHistoryItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdjustedFoodHistoryItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdjustedFoodHistoryItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodHistoryItemId,  String name,  String itemType,  double? serving,  double kcal,  double carbohydrate,  double protein,  double fat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto() when $default != null:
return $default(_that.foodHistoryItemId,_that.name,_that.itemType,_that.serving,_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodHistoryItemId,  String name,  String itemType,  double? serving,  double kcal,  double carbohydrate,  double protein,  double fat)  $default,) {final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto():
return $default(_that.foodHistoryItemId,_that.name,_that.itemType,_that.serving,_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodHistoryItemId,  String name,  String itemType,  double? serving,  double kcal,  double carbohydrate,  double protein,  double fat)?  $default,) {final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemDto() when $default != null:
return $default(_that.foodHistoryItemId,_that.name,_that.itemType,_that.serving,_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdjustedFoodHistoryItemDto implements AdjustedFoodHistoryItemDto {
  const _AdjustedFoodHistoryItemDto({required this.foodHistoryItemId, required this.name, required this.itemType, this.serving, required this.kcal, required this.carbohydrate, required this.protein, required this.fat});
  factory _AdjustedFoodHistoryItemDto.fromJson(Map<String, dynamic> json) => _$AdjustedFoodHistoryItemDtoFromJson(json);

@override final  int foodHistoryItemId;
@override final  String name;
@override final  String itemType;
@override final  double? serving;
@override final  double kcal;
@override final  double carbohydrate;
@override final  double protein;
@override final  double fat;

/// Create a copy of AdjustedFoodHistoryItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdjustedFoodHistoryItemDtoCopyWith<_AdjustedFoodHistoryItemDto> get copyWith => __$AdjustedFoodHistoryItemDtoCopyWithImpl<_AdjustedFoodHistoryItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdjustedFoodHistoryItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdjustedFoodHistoryItemDto&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,name,itemType,serving,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'AdjustedFoodHistoryItemDto(foodHistoryItemId: $foodHistoryItemId, name: $name, itemType: $itemType, serving: $serving, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$AdjustedFoodHistoryItemDtoCopyWith<$Res> implements $AdjustedFoodHistoryItemDtoCopyWith<$Res> {
  factory _$AdjustedFoodHistoryItemDtoCopyWith(_AdjustedFoodHistoryItemDto value, $Res Function(_AdjustedFoodHistoryItemDto) _then) = __$AdjustedFoodHistoryItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int foodHistoryItemId, String name, String itemType, double? serving, double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class __$AdjustedFoodHistoryItemDtoCopyWithImpl<$Res>
    implements _$AdjustedFoodHistoryItemDtoCopyWith<$Res> {
  __$AdjustedFoodHistoryItemDtoCopyWithImpl(this._self, this._then);

  final _AdjustedFoodHistoryItemDto _self;
  final $Res Function(_AdjustedFoodHistoryItemDto) _then;

/// Create a copy of AdjustedFoodHistoryItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodHistoryItemId = null,Object? name = null,Object? itemType = null,Object? serving = freezed,Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_AdjustedFoodHistoryItemDto(
foodHistoryItemId: null == foodHistoryItemId ? _self.foodHistoryItemId : foodHistoryItemId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,serving: freezed == serving ? _self.serving : serving // ignore: cast_nullable_to_non_nullable
as double?,kcal: null == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
