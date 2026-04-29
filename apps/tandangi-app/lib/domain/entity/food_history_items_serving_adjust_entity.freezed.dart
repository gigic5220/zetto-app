// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_history_items_serving_adjust_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodHistoryItemServingAdjustmentEntity {

 int get foodHistoryItemId; double? get serving; double? get carbohydrate; double? get protein; double? get fat; double? get sodium; double? get sugar;
/// Create a copy of FoodHistoryItemServingAdjustmentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemServingAdjustmentEntityCopyWith<FoodHistoryItemServingAdjustmentEntity> get copyWith => _$FoodHistoryItemServingAdjustmentEntityCopyWithImpl<FoodHistoryItemServingAdjustmentEntity>(this as FoodHistoryItemServingAdjustmentEntity, _$identity);

  /// Serializes this FoodHistoryItemServingAdjustmentEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemServingAdjustmentEntity&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugar, sugar) || other.sugar == sugar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,serving,carbohydrate,protein,fat,sodium,sugar);

@override
String toString() {
  return 'FoodHistoryItemServingAdjustmentEntity(foodHistoryItemId: $foodHistoryItemId, serving: $serving, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sodium: $sodium, sugar: $sugar)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemServingAdjustmentEntityCopyWith<$Res>  {
  factory $FoodHistoryItemServingAdjustmentEntityCopyWith(FoodHistoryItemServingAdjustmentEntity value, $Res Function(FoodHistoryItemServingAdjustmentEntity) _then) = _$FoodHistoryItemServingAdjustmentEntityCopyWithImpl;
@useResult
$Res call({
 int foodHistoryItemId, double? serving, double? carbohydrate, double? protein, double? fat, double? sodium, double? sugar
});




}
/// @nodoc
class _$FoodHistoryItemServingAdjustmentEntityCopyWithImpl<$Res>
    implements $FoodHistoryItemServingAdjustmentEntityCopyWith<$Res> {
  _$FoodHistoryItemServingAdjustmentEntityCopyWithImpl(this._self, this._then);

  final FoodHistoryItemServingAdjustmentEntity _self;
  final $Res Function(FoodHistoryItemServingAdjustmentEntity) _then;

/// Create a copy of FoodHistoryItemServingAdjustmentEntity
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


/// Adds pattern-matching-related methods to [FoodHistoryItemServingAdjustmentEntity].
extension FoodHistoryItemServingAdjustmentEntityPatterns on FoodHistoryItemServingAdjustmentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemServingAdjustmentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemServingAdjustmentEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemServingAdjustmentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemServingAdjustmentEntity() when $default != null:
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
case _FoodHistoryItemServingAdjustmentEntity() when $default != null:
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
case _FoodHistoryItemServingAdjustmentEntity():
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
case _FoodHistoryItemServingAdjustmentEntity() when $default != null:
return $default(_that.foodHistoryItemId,_that.serving,_that.carbohydrate,_that.protein,_that.fat,_that.sodium,_that.sugar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemServingAdjustmentEntity implements FoodHistoryItemServingAdjustmentEntity {
  const _FoodHistoryItemServingAdjustmentEntity({required this.foodHistoryItemId, this.serving, this.carbohydrate, this.protein, this.fat, this.sodium, this.sugar});
  factory _FoodHistoryItemServingAdjustmentEntity.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemServingAdjustmentEntityFromJson(json);

@override final  int foodHistoryItemId;
@override final  double? serving;
@override final  double? carbohydrate;
@override final  double? protein;
@override final  double? fat;
@override final  double? sodium;
@override final  double? sugar;

/// Create a copy of FoodHistoryItemServingAdjustmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemServingAdjustmentEntityCopyWith<_FoodHistoryItemServingAdjustmentEntity> get copyWith => __$FoodHistoryItemServingAdjustmentEntityCopyWithImpl<_FoodHistoryItemServingAdjustmentEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemServingAdjustmentEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemServingAdjustmentEntity&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugar, sugar) || other.sugar == sugar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,serving,carbohydrate,protein,fat,sodium,sugar);

@override
String toString() {
  return 'FoodHistoryItemServingAdjustmentEntity(foodHistoryItemId: $foodHistoryItemId, serving: $serving, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sodium: $sodium, sugar: $sugar)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemServingAdjustmentEntityCopyWith<$Res> implements $FoodHistoryItemServingAdjustmentEntityCopyWith<$Res> {
  factory _$FoodHistoryItemServingAdjustmentEntityCopyWith(_FoodHistoryItemServingAdjustmentEntity value, $Res Function(_FoodHistoryItemServingAdjustmentEntity) _then) = __$FoodHistoryItemServingAdjustmentEntityCopyWithImpl;
@override @useResult
$Res call({
 int foodHistoryItemId, double? serving, double? carbohydrate, double? protein, double? fat, double? sodium, double? sugar
});




}
/// @nodoc
class __$FoodHistoryItemServingAdjustmentEntityCopyWithImpl<$Res>
    implements _$FoodHistoryItemServingAdjustmentEntityCopyWith<$Res> {
  __$FoodHistoryItemServingAdjustmentEntityCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemServingAdjustmentEntity _self;
  final $Res Function(_FoodHistoryItemServingAdjustmentEntity) _then;

/// Create a copy of FoodHistoryItemServingAdjustmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodHistoryItemId = null,Object? serving = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sodium = freezed,Object? sugar = freezed,}) {
  return _then(_FoodHistoryItemServingAdjustmentEntity(
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
mixin _$FoodHistoryItemsServingAdjustEntity {

 int get foodAnalysisId; FoodHistoryItemsNutritionTotalsEntity get totals; List<AdjustedFoodHistoryItemEntity> get items;
/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemsServingAdjustEntityCopyWith<FoodHistoryItemsServingAdjustEntity> get copyWith => _$FoodHistoryItemsServingAdjustEntityCopyWithImpl<FoodHistoryItemsServingAdjustEntity>(this as FoodHistoryItemsServingAdjustEntity, _$identity);

  /// Serializes this FoodHistoryItemsServingAdjustEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemsServingAdjustEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,totals,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustEntity(foodAnalysisId: $foodAnalysisId, totals: $totals, items: $items)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemsServingAdjustEntityCopyWith<$Res>  {
  factory $FoodHistoryItemsServingAdjustEntityCopyWith(FoodHistoryItemsServingAdjustEntity value, $Res Function(FoodHistoryItemsServingAdjustEntity) _then) = _$FoodHistoryItemsServingAdjustEntityCopyWithImpl;
@useResult
$Res call({
 int foodAnalysisId, FoodHistoryItemsNutritionTotalsEntity totals, List<AdjustedFoodHistoryItemEntity> items
});


$FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class _$FoodHistoryItemsServingAdjustEntityCopyWithImpl<$Res>
    implements $FoodHistoryItemsServingAdjustEntityCopyWith<$Res> {
  _$FoodHistoryItemsServingAdjustEntityCopyWithImpl(this._self, this._then);

  final FoodHistoryItemsServingAdjustEntity _self;
  final $Res Function(FoodHistoryItemsServingAdjustEntity) _then;

/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodAnalysisId = null,Object? totals = null,Object? items = null,}) {
  return _then(_self.copyWith(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as FoodHistoryItemsNutritionTotalsEntity,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AdjustedFoodHistoryItemEntity>,
  ));
}
/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> get totals {
  
  return $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodHistoryItemsServingAdjustEntity].
extension FoodHistoryItemsServingAdjustEntityPatterns on FoodHistoryItemsServingAdjustEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemsServingAdjustEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemsServingAdjustEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsEntity totals,  List<AdjustedFoodHistoryItemEntity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsEntity totals,  List<AdjustedFoodHistoryItemEntity> items)  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int foodAnalysisId,  FoodHistoryItemsNutritionTotalsEntity totals,  List<AdjustedFoodHistoryItemEntity> items)?  $default,) {final _that = this;
switch (_that) {
case _FoodHistoryItemsServingAdjustEntity() when $default != null:
return $default(_that.foodAnalysisId,_that.totals,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemsServingAdjustEntity implements FoodHistoryItemsServingAdjustEntity {
  const _FoodHistoryItemsServingAdjustEntity({required this.foodAnalysisId, required this.totals, final  List<AdjustedFoodHistoryItemEntity> items = const <AdjustedFoodHistoryItemEntity>[]}): _items = items;
  factory _FoodHistoryItemsServingAdjustEntity.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemsServingAdjustEntityFromJson(json);

@override final  int foodAnalysisId;
@override final  FoodHistoryItemsNutritionTotalsEntity totals;
 final  List<AdjustedFoodHistoryItemEntity> _items;
@override@JsonKey() List<AdjustedFoodHistoryItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemsServingAdjustEntityCopyWith<_FoodHistoryItemsServingAdjustEntity> get copyWith => __$FoodHistoryItemsServingAdjustEntityCopyWithImpl<_FoodHistoryItemsServingAdjustEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemsServingAdjustEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemsServingAdjustEntity&&(identical(other.foodAnalysisId, foodAnalysisId) || other.foodAnalysisId == foodAnalysisId)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodAnalysisId,totals,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FoodHistoryItemsServingAdjustEntity(foodAnalysisId: $foodAnalysisId, totals: $totals, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemsServingAdjustEntityCopyWith<$Res> implements $FoodHistoryItemsServingAdjustEntityCopyWith<$Res> {
  factory _$FoodHistoryItemsServingAdjustEntityCopyWith(_FoodHistoryItemsServingAdjustEntity value, $Res Function(_FoodHistoryItemsServingAdjustEntity) _then) = __$FoodHistoryItemsServingAdjustEntityCopyWithImpl;
@override @useResult
$Res call({
 int foodAnalysisId, FoodHistoryItemsNutritionTotalsEntity totals, List<AdjustedFoodHistoryItemEntity> items
});


@override $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> get totals;

}
/// @nodoc
class __$FoodHistoryItemsServingAdjustEntityCopyWithImpl<$Res>
    implements _$FoodHistoryItemsServingAdjustEntityCopyWith<$Res> {
  __$FoodHistoryItemsServingAdjustEntityCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemsServingAdjustEntity _self;
  final $Res Function(_FoodHistoryItemsServingAdjustEntity) _then;

/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodAnalysisId = null,Object? totals = null,Object? items = null,}) {
  return _then(_FoodHistoryItemsServingAdjustEntity(
foodAnalysisId: null == foodAnalysisId ? _self.foodAnalysisId : foodAnalysisId // ignore: cast_nullable_to_non_nullable
as int,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as FoodHistoryItemsNutritionTotalsEntity,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdjustedFoodHistoryItemEntity>,
  ));
}

/// Create a copy of FoodHistoryItemsServingAdjustEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> get totals {
  
  return $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// @nodoc
mixin _$FoodHistoryItemsNutritionTotalsEntity {

 double get kcal; double get carbohydrate; double get protein; double get fat;
/// Create a copy of FoodHistoryItemsNutritionTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodHistoryItemsNutritionTotalsEntityCopyWith<FoodHistoryItemsNutritionTotalsEntity> get copyWith => _$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl<FoodHistoryItemsNutritionTotalsEntity>(this as FoodHistoryItemsNutritionTotalsEntity, _$identity);

  /// Serializes this FoodHistoryItemsNutritionTotalsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodHistoryItemsNutritionTotalsEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'FoodHistoryItemsNutritionTotalsEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res>  {
  factory $FoodHistoryItemsNutritionTotalsEntityCopyWith(FoodHistoryItemsNutritionTotalsEntity value, $Res Function(FoodHistoryItemsNutritionTotalsEntity) _then) = _$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl;
@useResult
$Res call({
 double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class _$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl<$Res>
    implements $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> {
  _$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl(this._self, this._then);

  final FoodHistoryItemsNutritionTotalsEntity _self;
  final $Res Function(FoodHistoryItemsNutritionTotalsEntity) _then;

/// Create a copy of FoodHistoryItemsNutritionTotalsEntity
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


/// Adds pattern-matching-related methods to [FoodHistoryItemsNutritionTotalsEntity].
extension FoodHistoryItemsNutritionTotalsEntityPatterns on FoodHistoryItemsNutritionTotalsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodHistoryItemsNutritionTotalsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodHistoryItemsNutritionTotalsEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodHistoryItemsNutritionTotalsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodHistoryItemsNutritionTotalsEntity() when $default != null:
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
case _FoodHistoryItemsNutritionTotalsEntity() when $default != null:
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
case _FoodHistoryItemsNutritionTotalsEntity():
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
case _FoodHistoryItemsNutritionTotalsEntity() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodHistoryItemsNutritionTotalsEntity implements FoodHistoryItemsNutritionTotalsEntity {
  const _FoodHistoryItemsNutritionTotalsEntity({required this.kcal, required this.carbohydrate, required this.protein, required this.fat});
  factory _FoodHistoryItemsNutritionTotalsEntity.fromJson(Map<String, dynamic> json) => _$FoodHistoryItemsNutritionTotalsEntityFromJson(json);

@override final  double kcal;
@override final  double carbohydrate;
@override final  double protein;
@override final  double fat;

/// Create a copy of FoodHistoryItemsNutritionTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodHistoryItemsNutritionTotalsEntityCopyWith<_FoodHistoryItemsNutritionTotalsEntity> get copyWith => __$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl<_FoodHistoryItemsNutritionTotalsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodHistoryItemsNutritionTotalsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodHistoryItemsNutritionTotalsEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'FoodHistoryItemsNutritionTotalsEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> implements $FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> {
  factory _$FoodHistoryItemsNutritionTotalsEntityCopyWith(_FoodHistoryItemsNutritionTotalsEntity value, $Res Function(_FoodHistoryItemsNutritionTotalsEntity) _then) = __$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl;
@override @useResult
$Res call({
 double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class __$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl<$Res>
    implements _$FoodHistoryItemsNutritionTotalsEntityCopyWith<$Res> {
  __$FoodHistoryItemsNutritionTotalsEntityCopyWithImpl(this._self, this._then);

  final _FoodHistoryItemsNutritionTotalsEntity _self;
  final $Res Function(_FoodHistoryItemsNutritionTotalsEntity) _then;

/// Create a copy of FoodHistoryItemsNutritionTotalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_FoodHistoryItemsNutritionTotalsEntity(
kcal: null == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AdjustedFoodHistoryItemEntity {

 int get foodHistoryItemId; String get name; String get itemType; double? get serving; double get kcal; double get carbohydrate; double get protein; double get fat;
/// Create a copy of AdjustedFoodHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdjustedFoodHistoryItemEntityCopyWith<AdjustedFoodHistoryItemEntity> get copyWith => _$AdjustedFoodHistoryItemEntityCopyWithImpl<AdjustedFoodHistoryItemEntity>(this as AdjustedFoodHistoryItemEntity, _$identity);

  /// Serializes this AdjustedFoodHistoryItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdjustedFoodHistoryItemEntity&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,name,itemType,serving,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'AdjustedFoodHistoryItemEntity(foodHistoryItemId: $foodHistoryItemId, name: $name, itemType: $itemType, serving: $serving, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class $AdjustedFoodHistoryItemEntityCopyWith<$Res>  {
  factory $AdjustedFoodHistoryItemEntityCopyWith(AdjustedFoodHistoryItemEntity value, $Res Function(AdjustedFoodHistoryItemEntity) _then) = _$AdjustedFoodHistoryItemEntityCopyWithImpl;
@useResult
$Res call({
 int foodHistoryItemId, String name, String itemType, double? serving, double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class _$AdjustedFoodHistoryItemEntityCopyWithImpl<$Res>
    implements $AdjustedFoodHistoryItemEntityCopyWith<$Res> {
  _$AdjustedFoodHistoryItemEntityCopyWithImpl(this._self, this._then);

  final AdjustedFoodHistoryItemEntity _self;
  final $Res Function(AdjustedFoodHistoryItemEntity) _then;

/// Create a copy of AdjustedFoodHistoryItemEntity
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


/// Adds pattern-matching-related methods to [AdjustedFoodHistoryItemEntity].
extension AdjustedFoodHistoryItemEntityPatterns on AdjustedFoodHistoryItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdjustedFoodHistoryItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdjustedFoodHistoryItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdjustedFoodHistoryItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AdjustedFoodHistoryItemEntity() when $default != null:
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
case _AdjustedFoodHistoryItemEntity() when $default != null:
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
case _AdjustedFoodHistoryItemEntity():
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
case _AdjustedFoodHistoryItemEntity() when $default != null:
return $default(_that.foodHistoryItemId,_that.name,_that.itemType,_that.serving,_that.kcal,_that.carbohydrate,_that.protein,_that.fat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdjustedFoodHistoryItemEntity implements AdjustedFoodHistoryItemEntity {
  const _AdjustedFoodHistoryItemEntity({required this.foodHistoryItemId, required this.name, required this.itemType, this.serving, required this.kcal, required this.carbohydrate, required this.protein, required this.fat});
  factory _AdjustedFoodHistoryItemEntity.fromJson(Map<String, dynamic> json) => _$AdjustedFoodHistoryItemEntityFromJson(json);

@override final  int foodHistoryItemId;
@override final  String name;
@override final  String itemType;
@override final  double? serving;
@override final  double kcal;
@override final  double carbohydrate;
@override final  double protein;
@override final  double fat;

/// Create a copy of AdjustedFoodHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdjustedFoodHistoryItemEntityCopyWith<_AdjustedFoodHistoryItemEntity> get copyWith => __$AdjustedFoodHistoryItemEntityCopyWithImpl<_AdjustedFoodHistoryItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdjustedFoodHistoryItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdjustedFoodHistoryItemEntity&&(identical(other.foodHistoryItemId, foodHistoryItemId) || other.foodHistoryItemId == foodHistoryItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.serving, serving) || other.serving == serving)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foodHistoryItemId,name,itemType,serving,kcal,carbohydrate,protein,fat);

@override
String toString() {
  return 'AdjustedFoodHistoryItemEntity(foodHistoryItemId: $foodHistoryItemId, name: $name, itemType: $itemType, serving: $serving, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat)';
}


}

/// @nodoc
abstract mixin class _$AdjustedFoodHistoryItemEntityCopyWith<$Res> implements $AdjustedFoodHistoryItemEntityCopyWith<$Res> {
  factory _$AdjustedFoodHistoryItemEntityCopyWith(_AdjustedFoodHistoryItemEntity value, $Res Function(_AdjustedFoodHistoryItemEntity) _then) = __$AdjustedFoodHistoryItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int foodHistoryItemId, String name, String itemType, double? serving, double kcal, double carbohydrate, double protein, double fat
});




}
/// @nodoc
class __$AdjustedFoodHistoryItemEntityCopyWithImpl<$Res>
    implements _$AdjustedFoodHistoryItemEntityCopyWith<$Res> {
  __$AdjustedFoodHistoryItemEntityCopyWithImpl(this._self, this._then);

  final _AdjustedFoodHistoryItemEntity _self;
  final $Res Function(_AdjustedFoodHistoryItemEntity) _then;

/// Create a copy of AdjustedFoodHistoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodHistoryItemId = null,Object? name = null,Object? itemType = null,Object? serving = freezed,Object? kcal = null,Object? carbohydrate = null,Object? protein = null,Object? fat = null,}) {
  return _then(_AdjustedFoodHistoryItemEntity(
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
