// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_analyze_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyzedFoodItemEntity {

 int get id; String get name; DishNutrientsEntity? get nutrients;
/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzedFoodItemEntityCopyWith<AnalyzedFoodItemEntity> get copyWith => _$AnalyzedFoodItemEntityCopyWithImpl<AnalyzedFoodItemEntity>(this as AnalyzedFoodItemEntity, _$identity);

  /// Serializes this AnalyzedFoodItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzedFoodItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nutrients);

@override
String toString() {
  return 'AnalyzedFoodItemEntity(id: $id, name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $AnalyzedFoodItemEntityCopyWith<$Res>  {
  factory $AnalyzedFoodItemEntityCopyWith(AnalyzedFoodItemEntity value, $Res Function(AnalyzedFoodItemEntity) _then) = _$AnalyzedFoodItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, DishNutrientsEntity? nutrients
});


$DishNutrientsEntityCopyWith<$Res>? get nutrients;

}
/// @nodoc
class _$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  _$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final AnalyzedFoodItemEntity _self;
  final $Res Function(AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nutrients = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as DishNutrientsEntity?,
  ));
}
/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishNutrientsEntityCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $DishNutrientsEntityCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyzedFoodItemEntity].
extension AnalyzedFoodItemEntityPatterns on AnalyzedFoodItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyzedFoodItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyzedFoodItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyzedFoodItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  DishNutrientsEntity? nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  DishNutrientsEntity? nutrients)  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  DishNutrientsEntity? nutrients)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyzedFoodItemEntity implements AnalyzedFoodItemEntity {
  const _AnalyzedFoodItemEntity({required this.id, this.name = '', this.nutrients});
  factory _AnalyzedFoodItemEntity.fromJson(Map<String, dynamic> json) => _$AnalyzedFoodItemEntityFromJson(json);

@override final  int id;
@override@JsonKey() final  String name;
@override final  DishNutrientsEntity? nutrients;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyzedFoodItemEntityCopyWith<_AnalyzedFoodItemEntity> get copyWith => __$AnalyzedFoodItemEntityCopyWithImpl<_AnalyzedFoodItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyzedFoodItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzedFoodItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nutrients);

@override
String toString() {
  return 'AnalyzedFoodItemEntity(id: $id, name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$AnalyzedFoodItemEntityCopyWith<$Res> implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  factory _$AnalyzedFoodItemEntityCopyWith(_AnalyzedFoodItemEntity value, $Res Function(_AnalyzedFoodItemEntity) _then) = __$AnalyzedFoodItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, DishNutrientsEntity? nutrients
});


@override $DishNutrientsEntityCopyWith<$Res>? get nutrients;

}
/// @nodoc
class __$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements _$AnalyzedFoodItemEntityCopyWith<$Res> {
  __$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final _AnalyzedFoodItemEntity _self;
  final $Res Function(_AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nutrients = freezed,}) {
  return _then(_AnalyzedFoodItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as DishNutrientsEntity?,
  ));
}

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishNutrientsEntityCopyWith<$Res>? get nutrients {
    if (_self.nutrients == null) {
    return null;
  }

  return $DishNutrientsEntityCopyWith<$Res>(_self.nutrients!, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// @nodoc
mixin _$DishNutrientsEntity {

 NutrientValueEntity? get kcal; NutrientValueEntity? get carbohydrate; NutrientValueEntity? get protein; NutrientValueEntity? get fat; NutrientValueEntity? get sugar; NutrientValueEntity? get sodium;
/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishNutrientsEntityCopyWith<DishNutrientsEntity> get copyWith => _$DishNutrientsEntityCopyWithImpl<DishNutrientsEntity>(this as DishNutrientsEntity, _$identity);

  /// Serializes this DishNutrientsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishNutrientsEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'DishNutrientsEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $DishNutrientsEntityCopyWith<$Res>  {
  factory $DishNutrientsEntityCopyWith(DishNutrientsEntity value, $Res Function(DishNutrientsEntity) _then) = _$DishNutrientsEntityCopyWithImpl;
@useResult
$Res call({
 NutrientValueEntity? kcal, NutrientValueEntity? carbohydrate, NutrientValueEntity? protein, NutrientValueEntity? fat, NutrientValueEntity? sugar, NutrientValueEntity? sodium
});


$NutrientValueEntityCopyWith<$Res>? get kcal;$NutrientValueEntityCopyWith<$Res>? get carbohydrate;$NutrientValueEntityCopyWith<$Res>? get protein;$NutrientValueEntityCopyWith<$Res>? get fat;$NutrientValueEntityCopyWith<$Res>? get sugar;$NutrientValueEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$DishNutrientsEntityCopyWithImpl<$Res>
    implements $DishNutrientsEntityCopyWith<$Res> {
  _$DishNutrientsEntityCopyWithImpl(this._self, this._then);

  final DishNutrientsEntity _self;
  final $Res Function(DishNutrientsEntity) _then;

/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,
  ));
}
/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [DishNutrientsEntity].
extension DishNutrientsEntityPatterns on DishNutrientsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishNutrientsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishNutrientsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishNutrientsEntity value)  $default,){
final _that = this;
switch (_that) {
case _DishNutrientsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishNutrientsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DishNutrientsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishNutrientsEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _DishNutrientsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _DishNutrientsEntity() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishNutrientsEntity implements DishNutrientsEntity {
  const _DishNutrientsEntity({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _DishNutrientsEntity.fromJson(Map<String, dynamic> json) => _$DishNutrientsEntityFromJson(json);

@override final  NutrientValueEntity? kcal;
@override final  NutrientValueEntity? carbohydrate;
@override final  NutrientValueEntity? protein;
@override final  NutrientValueEntity? fat;
@override final  NutrientValueEntity? sugar;
@override final  NutrientValueEntity? sodium;

/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishNutrientsEntityCopyWith<_DishNutrientsEntity> get copyWith => __$DishNutrientsEntityCopyWithImpl<_DishNutrientsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishNutrientsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishNutrientsEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'DishNutrientsEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$DishNutrientsEntityCopyWith<$Res> implements $DishNutrientsEntityCopyWith<$Res> {
  factory _$DishNutrientsEntityCopyWith(_DishNutrientsEntity value, $Res Function(_DishNutrientsEntity) _then) = __$DishNutrientsEntityCopyWithImpl;
@override @useResult
$Res call({
 NutrientValueEntity? kcal, NutrientValueEntity? carbohydrate, NutrientValueEntity? protein, NutrientValueEntity? fat, NutrientValueEntity? sugar, NutrientValueEntity? sodium
});


@override $NutrientValueEntityCopyWith<$Res>? get kcal;@override $NutrientValueEntityCopyWith<$Res>? get carbohydrate;@override $NutrientValueEntityCopyWith<$Res>? get protein;@override $NutrientValueEntityCopyWith<$Res>? get fat;@override $NutrientValueEntityCopyWith<$Res>? get sugar;@override $NutrientValueEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$DishNutrientsEntityCopyWithImpl<$Res>
    implements _$DishNutrientsEntityCopyWith<$Res> {
  __$DishNutrientsEntityCopyWithImpl(this._self, this._then);

  final _DishNutrientsEntity _self;
  final $Res Function(_DishNutrientsEntity) _then;

/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_DishNutrientsEntity(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,
  ));
}

/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of DishNutrientsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientValueEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientValueEntity {

 double? get value; List<double> get range; String? get unit;
/// Create a copy of NutrientValueEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientValueEntityCopyWith<NutrientValueEntity> get copyWith => _$NutrientValueEntityCopyWithImpl<NutrientValueEntity>(this as NutrientValueEntity, _$identity);

  /// Serializes this NutrientValueEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientValueEntity&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.range, range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(range),unit);

@override
String toString() {
  return 'NutrientValueEntity(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $NutrientValueEntityCopyWith<$Res>  {
  factory $NutrientValueEntityCopyWith(NutrientValueEntity value, $Res Function(NutrientValueEntity) _then) = _$NutrientValueEntityCopyWithImpl;
@useResult
$Res call({
 double? value, List<double> range, String? unit
});




}
/// @nodoc
class _$NutrientValueEntityCopyWithImpl<$Res>
    implements $NutrientValueEntityCopyWith<$Res> {
  _$NutrientValueEntityCopyWithImpl(this._self, this._then);

  final NutrientValueEntity _self;
  final $Res Function(NutrientValueEntity) _then;

/// Create a copy of NutrientValueEntity
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


/// Adds pattern-matching-related methods to [NutrientValueEntity].
extension NutrientValueEntityPatterns on NutrientValueEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientValueEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientValueEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientValueEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutrientValueEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientValueEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientValueEntity() when $default != null:
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
case _NutrientValueEntity() when $default != null:
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
case _NutrientValueEntity():
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
case _NutrientValueEntity() when $default != null:
return $default(_that.value,_that.range,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientValueEntity implements NutrientValueEntity {
  const _NutrientValueEntity({this.value, final  List<double> range = const <double>[], this.unit}): _range = range;
  factory _NutrientValueEntity.fromJson(Map<String, dynamic> json) => _$NutrientValueEntityFromJson(json);

@override final  double? value;
 final  List<double> _range;
@override@JsonKey() List<double> get range {
  if (_range is EqualUnmodifiableListView) return _range;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_range);
}

@override final  String? unit;

/// Create a copy of NutrientValueEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientValueEntityCopyWith<_NutrientValueEntity> get copyWith => __$NutrientValueEntityCopyWithImpl<_NutrientValueEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientValueEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientValueEntity&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._range, _range)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_range),unit);

@override
String toString() {
  return 'NutrientValueEntity(value: $value, range: $range, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$NutrientValueEntityCopyWith<$Res> implements $NutrientValueEntityCopyWith<$Res> {
  factory _$NutrientValueEntityCopyWith(_NutrientValueEntity value, $Res Function(_NutrientValueEntity) _then) = __$NutrientValueEntityCopyWithImpl;
@override @useResult
$Res call({
 double? value, List<double> range, String? unit
});




}
/// @nodoc
class __$NutrientValueEntityCopyWithImpl<$Res>
    implements _$NutrientValueEntityCopyWith<$Res> {
  __$NutrientValueEntityCopyWithImpl(this._self, this._then);

  final _NutrientValueEntity _self;
  final $Res Function(_NutrientValueEntity) _then;

/// Create a copy of NutrientValueEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? range = null,Object? unit = freezed,}) {
  return _then(_NutrientValueEntity(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,range: null == range ? _self._range : range // ignore: cast_nullable_to_non_nullable
as List<double>,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FoodAnalyzeResultEntity {

 List<AnalyzedFoodItemEntity> get main; List<AnalyzedFoodItemEntity> get sides; List<AnalyzedFoodItemEntity> get others; List<String> get assumptions; String get foodImageUrl; DateTime? get createdAt; NutritionComparisonEntity? get nutritionComparison;
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalyzeResultEntityCopyWith<FoodAnalyzeResultEntity> get copyWith => _$FoodAnalyzeResultEntityCopyWithImpl<FoodAnalyzeResultEntity>(this as FoodAnalyzeResultEntity, _$identity);

  /// Serializes this FoodAnalyzeResultEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.others, others)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.nutritionComparison, nutritionComparison) || other.nutritionComparison == nutritionComparison));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(others),const DeepCollectionEquality().hash(assumptions),foodImageUrl,createdAt,nutritionComparison);

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, nutritionComparison: $nutritionComparison)';
}


}

/// @nodoc
abstract mixin class $FoodAnalyzeResultEntityCopyWith<$Res>  {
  factory $FoodAnalyzeResultEntityCopyWith(FoodAnalyzeResultEntity value, $Res Function(FoodAnalyzeResultEntity) _then) = _$FoodAnalyzeResultEntityCopyWithImpl;
@useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, List<String> assumptions, String foodImageUrl, DateTime? createdAt, NutritionComparisonEntity? nutritionComparison
});


$NutritionComparisonEntityCopyWith<$Res>? get nutritionComparison;

}
/// @nodoc
class _$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  _$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final FoodAnalyzeResultEntity _self;
  final $Res Function(FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? nutritionComparison = freezed,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,assumptions: null == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nutritionComparison: freezed == nutritionComparison ? _self.nutritionComparison : nutritionComparison // ignore: cast_nullable_to_non_nullable
as NutritionComparisonEntity?,
  ));
}
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionComparisonEntityCopyWith<$Res>? get nutritionComparison {
    if (_self.nutritionComparison == null) {
    return null;
  }

  return $NutritionComparisonEntityCopyWith<$Res>(_self.nutritionComparison!, (value) {
    return _then(_self.copyWith(nutritionComparison: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodAnalyzeResultEntity].
extension FoodAnalyzeResultEntityPatterns on FoodAnalyzeResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodAnalyzeResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodAnalyzeResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodAnalyzeResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionComparisonEntity? nutritionComparison)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionComparison);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionComparisonEntity? nutritionComparison)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity():
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionComparison);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  NutritionComparisonEntity? nutritionComparison)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.nutritionComparison);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalyzeResultEntity implements FoodAnalyzeResultEntity {
  const _FoodAnalyzeResultEntity({final  List<AnalyzedFoodItemEntity> main = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> sides = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> others = const <AnalyzedFoodItemEntity>[], final  List<String> assumptions = const <String>[], this.foodImageUrl = '', this.createdAt, this.nutritionComparison}): _main = main,_sides = sides,_others = others,_assumptions = assumptions;
  factory _FoodAnalyzeResultEntity.fromJson(Map<String, dynamic> json) => _$FoodAnalyzeResultEntityFromJson(json);

 final  List<AnalyzedFoodItemEntity> _main;
@override@JsonKey() List<AnalyzedFoodItemEntity> get main {
  if (_main is EqualUnmodifiableListView) return _main;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_main);
}

 final  List<AnalyzedFoodItemEntity> _sides;
@override@JsonKey() List<AnalyzedFoodItemEntity> get sides {
  if (_sides is EqualUnmodifiableListView) return _sides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sides);
}

 final  List<AnalyzedFoodItemEntity> _others;
@override@JsonKey() List<AnalyzedFoodItemEntity> get others {
  if (_others is EqualUnmodifiableListView) return _others;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_others);
}

 final  List<String> _assumptions;
@override@JsonKey() List<String> get assumptions {
  if (_assumptions is EqualUnmodifiableListView) return _assumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assumptions);
}

@override@JsonKey() final  String foodImageUrl;
@override final  DateTime? createdAt;
@override final  NutritionComparisonEntity? nutritionComparison;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalyzeResultEntityCopyWith<_FoodAnalyzeResultEntity> get copyWith => __$FoodAnalyzeResultEntityCopyWithImpl<_FoodAnalyzeResultEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodAnalyzeResultEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._others, _others)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.nutritionComparison, nutritionComparison) || other.nutritionComparison == nutritionComparison));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_others),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,createdAt,nutritionComparison);

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, nutritionComparison: $nutritionComparison)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalyzeResultEntityCopyWith<$Res> implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  factory _$FoodAnalyzeResultEntityCopyWith(_FoodAnalyzeResultEntity value, $Res Function(_FoodAnalyzeResultEntity) _then) = __$FoodAnalyzeResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, List<String> assumptions, String foodImageUrl, DateTime? createdAt, NutritionComparisonEntity? nutritionComparison
});


@override $NutritionComparisonEntityCopyWith<$Res>? get nutritionComparison;

}
/// @nodoc
class __$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements _$FoodAnalyzeResultEntityCopyWith<$Res> {
  __$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalyzeResultEntity _self;
  final $Res Function(_FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? nutritionComparison = freezed,}) {
  return _then(_FoodAnalyzeResultEntity(
main: null == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,assumptions: null == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nutritionComparison: freezed == nutritionComparison ? _self.nutritionComparison : nutritionComparison // ignore: cast_nullable_to_non_nullable
as NutritionComparisonEntity?,
  ));
}

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionComparisonEntityCopyWith<$Res>? get nutritionComparison {
    if (_self.nutritionComparison == null) {
    return null;
  }

  return $NutritionComparisonEntityCopyWith<$Res>(_self.nutritionComparison!, (value) {
    return _then(_self.copyWith(nutritionComparison: value));
  });
}
}


/// @nodoc
mixin _$NutritionComparisonEntity {

 KcalComparisonEntity? get kcal; MacronutrientComparisonEntity? get carbohydrate; MacronutrientComparisonEntity? get protein; MacronutrientComparisonEntity? get fat; SugarComparisonEntity? get sugar; SodiumComparisonEntity? get sodium;
/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionComparisonEntityCopyWith<NutritionComparisonEntity> get copyWith => _$NutritionComparisonEntityCopyWithImpl<NutritionComparisonEntity>(this as NutritionComparisonEntity, _$identity);

  /// Serializes this NutritionComparisonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionComparisonEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionComparisonEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $NutritionComparisonEntityCopyWith<$Res>  {
  factory $NutritionComparisonEntityCopyWith(NutritionComparisonEntity value, $Res Function(NutritionComparisonEntity) _then) = _$NutritionComparisonEntityCopyWithImpl;
@useResult
$Res call({
 KcalComparisonEntity? kcal, MacronutrientComparisonEntity? carbohydrate, MacronutrientComparisonEntity? protein, MacronutrientComparisonEntity? fat, SugarComparisonEntity? sugar, SodiumComparisonEntity? sodium
});


$KcalComparisonEntityCopyWith<$Res>? get kcal;$MacronutrientComparisonEntityCopyWith<$Res>? get carbohydrate;$MacronutrientComparisonEntityCopyWith<$Res>? get protein;$MacronutrientComparisonEntityCopyWith<$Res>? get fat;$SugarComparisonEntityCopyWith<$Res>? get sugar;$SodiumComparisonEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$NutritionComparisonEntityCopyWithImpl<$Res>
    implements $NutritionComparisonEntityCopyWith<$Res> {
  _$NutritionComparisonEntityCopyWithImpl(this._self, this._then);

  final NutritionComparisonEntity _self;
  final $Res Function(NutritionComparisonEntity) _then;

/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as KcalComparisonEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarComparisonEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumComparisonEntity?,
  ));
}
/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KcalComparisonEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $KcalComparisonEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarComparisonEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarComparisonEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumComparisonEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumComparisonEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionComparisonEntity].
extension NutritionComparisonEntityPatterns on NutritionComparisonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionComparisonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionComparisonEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutritionComparisonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionComparisonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KcalComparisonEntity? kcal,  MacronutrientComparisonEntity? carbohydrate,  MacronutrientComparisonEntity? protein,  MacronutrientComparisonEntity? fat,  SugarComparisonEntity? sugar,  SodiumComparisonEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KcalComparisonEntity? kcal,  MacronutrientComparisonEntity? carbohydrate,  MacronutrientComparisonEntity? protein,  MacronutrientComparisonEntity? fat,  SugarComparisonEntity? sugar,  SodiumComparisonEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _NutritionComparisonEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KcalComparisonEntity? kcal,  MacronutrientComparisonEntity? carbohydrate,  MacronutrientComparisonEntity? protein,  MacronutrientComparisonEntity? fat,  SugarComparisonEntity? sugar,  SodiumComparisonEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _NutritionComparisonEntity() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionComparisonEntity implements NutritionComparisonEntity {
  const _NutritionComparisonEntity({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _NutritionComparisonEntity.fromJson(Map<String, dynamic> json) => _$NutritionComparisonEntityFromJson(json);

@override final  KcalComparisonEntity? kcal;
@override final  MacronutrientComparisonEntity? carbohydrate;
@override final  MacronutrientComparisonEntity? protein;
@override final  MacronutrientComparisonEntity? fat;
@override final  SugarComparisonEntity? sugar;
@override final  SodiumComparisonEntity? sodium;

/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionComparisonEntityCopyWith<_NutritionComparisonEntity> get copyWith => __$NutritionComparisonEntityCopyWithImpl<_NutritionComparisonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionComparisonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionComparisonEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'NutritionComparisonEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$NutritionComparisonEntityCopyWith<$Res> implements $NutritionComparisonEntityCopyWith<$Res> {
  factory _$NutritionComparisonEntityCopyWith(_NutritionComparisonEntity value, $Res Function(_NutritionComparisonEntity) _then) = __$NutritionComparisonEntityCopyWithImpl;
@override @useResult
$Res call({
 KcalComparisonEntity? kcal, MacronutrientComparisonEntity? carbohydrate, MacronutrientComparisonEntity? protein, MacronutrientComparisonEntity? fat, SugarComparisonEntity? sugar, SodiumComparisonEntity? sodium
});


@override $KcalComparisonEntityCopyWith<$Res>? get kcal;@override $MacronutrientComparisonEntityCopyWith<$Res>? get carbohydrate;@override $MacronutrientComparisonEntityCopyWith<$Res>? get protein;@override $MacronutrientComparisonEntityCopyWith<$Res>? get fat;@override $SugarComparisonEntityCopyWith<$Res>? get sugar;@override $SodiumComparisonEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$NutritionComparisonEntityCopyWithImpl<$Res>
    implements _$NutritionComparisonEntityCopyWith<$Res> {
  __$NutritionComparisonEntityCopyWithImpl(this._self, this._then);

  final _NutritionComparisonEntity _self;
  final $Res Function(_NutritionComparisonEntity) _then;

/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_NutritionComparisonEntity(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as KcalComparisonEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as MacronutrientComparisonEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarComparisonEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumComparisonEntity?,
  ));
}

/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KcalComparisonEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $KcalComparisonEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $MacronutrientComparisonEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarComparisonEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarComparisonEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of NutritionComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumComparisonEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumComparisonEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$KcalComparisonEntity {

 double? get intakeKcal; int? get dailyTargetKcal; double? get percent;
/// Create a copy of KcalComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KcalComparisonEntityCopyWith<KcalComparisonEntity> get copyWith => _$KcalComparisonEntityCopyWithImpl<KcalComparisonEntity>(this as KcalComparisonEntity, _$identity);

  /// Serializes this KcalComparisonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KcalComparisonEntity&&(identical(other.intakeKcal, intakeKcal) || other.intakeKcal == intakeKcal)&&(identical(other.dailyTargetKcal, dailyTargetKcal) || other.dailyTargetKcal == dailyTargetKcal)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeKcal,dailyTargetKcal,percent);

@override
String toString() {
  return 'KcalComparisonEntity(intakeKcal: $intakeKcal, dailyTargetKcal: $dailyTargetKcal, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $KcalComparisonEntityCopyWith<$Res>  {
  factory $KcalComparisonEntityCopyWith(KcalComparisonEntity value, $Res Function(KcalComparisonEntity) _then) = _$KcalComparisonEntityCopyWithImpl;
@useResult
$Res call({
 double? intakeKcal, int? dailyTargetKcal, double? percent
});




}
/// @nodoc
class _$KcalComparisonEntityCopyWithImpl<$Res>
    implements $KcalComparisonEntityCopyWith<$Res> {
  _$KcalComparisonEntityCopyWithImpl(this._self, this._then);

  final KcalComparisonEntity _self;
  final $Res Function(KcalComparisonEntity) _then;

/// Create a copy of KcalComparisonEntity
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


/// Adds pattern-matching-related methods to [KcalComparisonEntity].
extension KcalComparisonEntityPatterns on KcalComparisonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KcalComparisonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KcalComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KcalComparisonEntity value)  $default,){
final _that = this;
switch (_that) {
case _KcalComparisonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KcalComparisonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _KcalComparisonEntity() when $default != null:
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
case _KcalComparisonEntity() when $default != null:
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
case _KcalComparisonEntity():
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
case _KcalComparisonEntity() when $default != null:
return $default(_that.intakeKcal,_that.dailyTargetKcal,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KcalComparisonEntity implements KcalComparisonEntity {
  const _KcalComparisonEntity({this.intakeKcal, this.dailyTargetKcal, this.percent});
  factory _KcalComparisonEntity.fromJson(Map<String, dynamic> json) => _$KcalComparisonEntityFromJson(json);

@override final  double? intakeKcal;
@override final  int? dailyTargetKcal;
@override final  double? percent;

/// Create a copy of KcalComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KcalComparisonEntityCopyWith<_KcalComparisonEntity> get copyWith => __$KcalComparisonEntityCopyWithImpl<_KcalComparisonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KcalComparisonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KcalComparisonEntity&&(identical(other.intakeKcal, intakeKcal) || other.intakeKcal == intakeKcal)&&(identical(other.dailyTargetKcal, dailyTargetKcal) || other.dailyTargetKcal == dailyTargetKcal)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeKcal,dailyTargetKcal,percent);

@override
String toString() {
  return 'KcalComparisonEntity(intakeKcal: $intakeKcal, dailyTargetKcal: $dailyTargetKcal, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$KcalComparisonEntityCopyWith<$Res> implements $KcalComparisonEntityCopyWith<$Res> {
  factory _$KcalComparisonEntityCopyWith(_KcalComparisonEntity value, $Res Function(_KcalComparisonEntity) _then) = __$KcalComparisonEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intakeKcal, int? dailyTargetKcal, double? percent
});




}
/// @nodoc
class __$KcalComparisonEntityCopyWithImpl<$Res>
    implements _$KcalComparisonEntityCopyWith<$Res> {
  __$KcalComparisonEntityCopyWithImpl(this._self, this._then);

  final _KcalComparisonEntity _self;
  final $Res Function(_KcalComparisonEntity) _then;

/// Create a copy of KcalComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeKcal = freezed,Object? dailyTargetKcal = freezed,Object? percent = freezed,}) {
  return _then(_KcalComparisonEntity(
intakeKcal: freezed == intakeKcal ? _self.intakeKcal : intakeKcal // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetKcal: freezed == dailyTargetKcal ? _self.dailyTargetKcal : dailyTargetKcal // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$MacronutrientComparisonEntity {

 double? get intakeG; int? get dailyTargetG; double? get percent;
/// Create a copy of MacronutrientComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MacronutrientComparisonEntityCopyWith<MacronutrientComparisonEntity> get copyWith => _$MacronutrientComparisonEntityCopyWithImpl<MacronutrientComparisonEntity>(this as MacronutrientComparisonEntity, _$identity);

  /// Serializes this MacronutrientComparisonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MacronutrientComparisonEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.dailyTargetG, dailyTargetG) || other.dailyTargetG == dailyTargetG)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,dailyTargetG,percent);

@override
String toString() {
  return 'MacronutrientComparisonEntity(intakeG: $intakeG, dailyTargetG: $dailyTargetG, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $MacronutrientComparisonEntityCopyWith<$Res>  {
  factory $MacronutrientComparisonEntityCopyWith(MacronutrientComparisonEntity value, $Res Function(MacronutrientComparisonEntity) _then) = _$MacronutrientComparisonEntityCopyWithImpl;
@useResult
$Res call({
 double? intakeG, int? dailyTargetG, double? percent
});




}
/// @nodoc
class _$MacronutrientComparisonEntityCopyWithImpl<$Res>
    implements $MacronutrientComparisonEntityCopyWith<$Res> {
  _$MacronutrientComparisonEntityCopyWithImpl(this._self, this._then);

  final MacronutrientComparisonEntity _self;
  final $Res Function(MacronutrientComparisonEntity) _then;

/// Create a copy of MacronutrientComparisonEntity
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


/// Adds pattern-matching-related methods to [MacronutrientComparisonEntity].
extension MacronutrientComparisonEntityPatterns on MacronutrientComparisonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MacronutrientComparisonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MacronutrientComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MacronutrientComparisonEntity value)  $default,){
final _that = this;
switch (_that) {
case _MacronutrientComparisonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MacronutrientComparisonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MacronutrientComparisonEntity() when $default != null:
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
case _MacronutrientComparisonEntity() when $default != null:
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
case _MacronutrientComparisonEntity():
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
case _MacronutrientComparisonEntity() when $default != null:
return $default(_that.intakeG,_that.dailyTargetG,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MacronutrientComparisonEntity implements MacronutrientComparisonEntity {
  const _MacronutrientComparisonEntity({this.intakeG, this.dailyTargetG, this.percent});
  factory _MacronutrientComparisonEntity.fromJson(Map<String, dynamic> json) => _$MacronutrientComparisonEntityFromJson(json);

@override final  double? intakeG;
@override final  int? dailyTargetG;
@override final  double? percent;

/// Create a copy of MacronutrientComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MacronutrientComparisonEntityCopyWith<_MacronutrientComparisonEntity> get copyWith => __$MacronutrientComparisonEntityCopyWithImpl<_MacronutrientComparisonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MacronutrientComparisonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MacronutrientComparisonEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.dailyTargetG, dailyTargetG) || other.dailyTargetG == dailyTargetG)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,dailyTargetG,percent);

@override
String toString() {
  return 'MacronutrientComparisonEntity(intakeG: $intakeG, dailyTargetG: $dailyTargetG, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$MacronutrientComparisonEntityCopyWith<$Res> implements $MacronutrientComparisonEntityCopyWith<$Res> {
  factory _$MacronutrientComparisonEntityCopyWith(_MacronutrientComparisonEntity value, $Res Function(_MacronutrientComparisonEntity) _then) = __$MacronutrientComparisonEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intakeG, int? dailyTargetG, double? percent
});




}
/// @nodoc
class __$MacronutrientComparisonEntityCopyWithImpl<$Res>
    implements _$MacronutrientComparisonEntityCopyWith<$Res> {
  __$MacronutrientComparisonEntityCopyWithImpl(this._self, this._then);

  final _MacronutrientComparisonEntity _self;
  final $Res Function(_MacronutrientComparisonEntity) _then;

/// Create a copy of MacronutrientComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = freezed,Object? dailyTargetG = freezed,Object? percent = freezed,}) {
  return _then(_MacronutrientComparisonEntity(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,dailyTargetG: freezed == dailyTargetG ? _self.dailyTargetG : dailyTargetG // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarComparisonEntity {

 double? get intakeG; int? get maxG; NutritionThresholdStatusEnum? get statusEnum;
/// Create a copy of SugarComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarComparisonEntityCopyWith<SugarComparisonEntity> get copyWith => _$SugarComparisonEntityCopyWithImpl<SugarComparisonEntity>(this as SugarComparisonEntity, _$identity);

  /// Serializes this SugarComparisonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarComparisonEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.statusEnum, statusEnum) || other.statusEnum == statusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,maxG,statusEnum);

@override
String toString() {
  return 'SugarComparisonEntity(intakeG: $intakeG, maxG: $maxG, statusEnum: $statusEnum)';
}


}

/// @nodoc
abstract mixin class $SugarComparisonEntityCopyWith<$Res>  {
  factory $SugarComparisonEntityCopyWith(SugarComparisonEntity value, $Res Function(SugarComparisonEntity) _then) = _$SugarComparisonEntityCopyWithImpl;
@useResult
$Res call({
 double? intakeG, int? maxG, NutritionThresholdStatusEnum? statusEnum
});




}
/// @nodoc
class _$SugarComparisonEntityCopyWithImpl<$Res>
    implements $SugarComparisonEntityCopyWith<$Res> {
  _$SugarComparisonEntityCopyWithImpl(this._self, this._then);

  final SugarComparisonEntity _self;
  final $Res Function(SugarComparisonEntity) _then;

/// Create a copy of SugarComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeG = freezed,Object? maxG = freezed,Object? statusEnum = freezed,}) {
  return _then(_self.copyWith(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,maxG: freezed == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int?,statusEnum: freezed == statusEnum ? _self.statusEnum : statusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarComparisonEntity].
extension SugarComparisonEntityPatterns on SugarComparisonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarComparisonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarComparisonEntity value)  $default,){
final _that = this;
switch (_that) {
case _SugarComparisonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarComparisonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SugarComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeG,  int? maxG,  NutritionThresholdStatusEnum? statusEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarComparisonEntity() when $default != null:
return $default(_that.intakeG,_that.maxG,_that.statusEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeG,  int? maxG,  NutritionThresholdStatusEnum? statusEnum)  $default,) {final _that = this;
switch (_that) {
case _SugarComparisonEntity():
return $default(_that.intakeG,_that.maxG,_that.statusEnum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeG,  int? maxG,  NutritionThresholdStatusEnum? statusEnum)?  $default,) {final _that = this;
switch (_that) {
case _SugarComparisonEntity() when $default != null:
return $default(_that.intakeG,_that.maxG,_that.statusEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarComparisonEntity implements SugarComparisonEntity {
  const _SugarComparisonEntity({this.intakeG, this.maxG, this.statusEnum});
  factory _SugarComparisonEntity.fromJson(Map<String, dynamic> json) => _$SugarComparisonEntityFromJson(json);

@override final  double? intakeG;
@override final  int? maxG;
@override final  NutritionThresholdStatusEnum? statusEnum;

/// Create a copy of SugarComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarComparisonEntityCopyWith<_SugarComparisonEntity> get copyWith => __$SugarComparisonEntityCopyWithImpl<_SugarComparisonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarComparisonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarComparisonEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.statusEnum, statusEnum) || other.statusEnum == statusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,maxG,statusEnum);

@override
String toString() {
  return 'SugarComparisonEntity(intakeG: $intakeG, maxG: $maxG, statusEnum: $statusEnum)';
}


}

/// @nodoc
abstract mixin class _$SugarComparisonEntityCopyWith<$Res> implements $SugarComparisonEntityCopyWith<$Res> {
  factory _$SugarComparisonEntityCopyWith(_SugarComparisonEntity value, $Res Function(_SugarComparisonEntity) _then) = __$SugarComparisonEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intakeG, int? maxG, NutritionThresholdStatusEnum? statusEnum
});




}
/// @nodoc
class __$SugarComparisonEntityCopyWithImpl<$Res>
    implements _$SugarComparisonEntityCopyWith<$Res> {
  __$SugarComparisonEntityCopyWithImpl(this._self, this._then);

  final _SugarComparisonEntity _self;
  final $Res Function(_SugarComparisonEntity) _then;

/// Create a copy of SugarComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = freezed,Object? maxG = freezed,Object? statusEnum = freezed,}) {
  return _then(_SugarComparisonEntity(
intakeG: freezed == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double?,maxG: freezed == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int?,statusEnum: freezed == statusEnum ? _self.statusEnum : statusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}


/// @nodoc
mixin _$SodiumComparisonEntity {

 double? get intakeMg; int? get adequateMg; int? get riskReductionMg; NutritionThresholdStatusEnum? get statusEnum;
/// Create a copy of SodiumComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumComparisonEntityCopyWith<SodiumComparisonEntity> get copyWith => _$SodiumComparisonEntityCopyWithImpl<SodiumComparisonEntity>(this as SodiumComparisonEntity, _$identity);

  /// Serializes this SodiumComparisonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumComparisonEntity&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.statusEnum, statusEnum) || other.statusEnum == statusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,statusEnum);

@override
String toString() {
  return 'SodiumComparisonEntity(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, statusEnum: $statusEnum)';
}


}

/// @nodoc
abstract mixin class $SodiumComparisonEntityCopyWith<$Res>  {
  factory $SodiumComparisonEntityCopyWith(SodiumComparisonEntity value, $Res Function(SodiumComparisonEntity) _then) = _$SodiumComparisonEntityCopyWithImpl;
@useResult
$Res call({
 double? intakeMg, int? adequateMg, int? riskReductionMg, NutritionThresholdStatusEnum? statusEnum
});




}
/// @nodoc
class _$SodiumComparisonEntityCopyWithImpl<$Res>
    implements $SodiumComparisonEntityCopyWith<$Res> {
  _$SodiumComparisonEntityCopyWithImpl(this._self, this._then);

  final SodiumComparisonEntity _self;
  final $Res Function(SodiumComparisonEntity) _then;

/// Create a copy of SodiumComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeMg = freezed,Object? adequateMg = freezed,Object? riskReductionMg = freezed,Object? statusEnum = freezed,}) {
  return _then(_self.copyWith(
intakeMg: freezed == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double?,adequateMg: freezed == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int?,riskReductionMg: freezed == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int?,statusEnum: freezed == statusEnum ? _self.statusEnum : statusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumComparisonEntity].
extension SodiumComparisonEntityPatterns on SodiumComparisonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumComparisonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumComparisonEntity value)  $default,){
final _that = this;
switch (_that) {
case _SodiumComparisonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumComparisonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumComparisonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  NutritionThresholdStatusEnum? statusEnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumComparisonEntity() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusEnum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  NutritionThresholdStatusEnum? statusEnum)  $default,) {final _that = this;
switch (_that) {
case _SodiumComparisonEntity():
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusEnum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intakeMg,  int? adequateMg,  int? riskReductionMg,  NutritionThresholdStatusEnum? statusEnum)?  $default,) {final _that = this;
switch (_that) {
case _SodiumComparisonEntity() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.statusEnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumComparisonEntity implements SodiumComparisonEntity {
  const _SodiumComparisonEntity({this.intakeMg, this.adequateMg, this.riskReductionMg, this.statusEnum});
  factory _SodiumComparisonEntity.fromJson(Map<String, dynamic> json) => _$SodiumComparisonEntityFromJson(json);

@override final  double? intakeMg;
@override final  int? adequateMg;
@override final  int? riskReductionMg;
@override final  NutritionThresholdStatusEnum? statusEnum;

/// Create a copy of SodiumComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumComparisonEntityCopyWith<_SodiumComparisonEntity> get copyWith => __$SodiumComparisonEntityCopyWithImpl<_SodiumComparisonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumComparisonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumComparisonEntity&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.statusEnum, statusEnum) || other.statusEnum == statusEnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,statusEnum);

@override
String toString() {
  return 'SodiumComparisonEntity(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, statusEnum: $statusEnum)';
}


}

/// @nodoc
abstract mixin class _$SodiumComparisonEntityCopyWith<$Res> implements $SodiumComparisonEntityCopyWith<$Res> {
  factory _$SodiumComparisonEntityCopyWith(_SodiumComparisonEntity value, $Res Function(_SodiumComparisonEntity) _then) = __$SodiumComparisonEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intakeMg, int? adequateMg, int? riskReductionMg, NutritionThresholdStatusEnum? statusEnum
});




}
/// @nodoc
class __$SodiumComparisonEntityCopyWithImpl<$Res>
    implements _$SodiumComparisonEntityCopyWith<$Res> {
  __$SodiumComparisonEntityCopyWithImpl(this._self, this._then);

  final _SodiumComparisonEntity _self;
  final $Res Function(_SodiumComparisonEntity) _then;

/// Create a copy of SodiumComparisonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeMg = freezed,Object? adequateMg = freezed,Object? riskReductionMg = freezed,Object? statusEnum = freezed,}) {
  return _then(_SodiumComparisonEntity(
intakeMg: freezed == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double?,adequateMg: freezed == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int?,riskReductionMg: freezed == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int?,statusEnum: freezed == statusEnum ? _self.statusEnum : statusEnum // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}

// dart format on
