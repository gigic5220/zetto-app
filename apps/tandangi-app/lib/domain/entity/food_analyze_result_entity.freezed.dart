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

 int get id; String get name; NutrientValueEntity? get kcal; NutrientValueEntity? get carbohydrate; NutrientValueEntity? get protein; NutrientValueEntity? get fat; NutrientValueEntity? get sugar; NutrientValueEntity? get sodium;
/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzedFoodItemEntityCopyWith<AnalyzedFoodItemEntity> get copyWith => _$AnalyzedFoodItemEntityCopyWithImpl<AnalyzedFoodItemEntity>(this as AnalyzedFoodItemEntity, _$identity);

  /// Serializes this AnalyzedFoodItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzedFoodItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalyzedFoodItemEntity(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $AnalyzedFoodItemEntityCopyWith<$Res>  {
  factory $AnalyzedFoodItemEntityCopyWith(AnalyzedFoodItemEntity value, $Res Function(AnalyzedFoodItemEntity) _then) = _$AnalyzedFoodItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, NutrientValueEntity? kcal, NutrientValueEntity? carbohydrate, NutrientValueEntity? protein, NutrientValueEntity? fat, NutrientValueEntity? sugar, NutrientValueEntity? sodium
});


$NutrientValueEntityCopyWith<$Res>? get kcal;$NutrientValueEntityCopyWith<$Res>? get carbohydrate;$NutrientValueEntityCopyWith<$Res>? get protein;$NutrientValueEntityCopyWith<$Res>? get fat;$NutrientValueEntityCopyWith<$Res>? get sugar;$NutrientValueEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  _$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final AnalyzedFoodItemEntity _self;
  final $Res Function(AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,
  ));
}
/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  NutrientValueEntity? kcal,  NutrientValueEntity? carbohydrate,  NutrientValueEntity? protein,  NutrientValueEntity? fat,  NutrientValueEntity? sugar,  NutrientValueEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyzedFoodItemEntity implements AnalyzedFoodItemEntity {
  const _AnalyzedFoodItemEntity({required this.id, this.name = '', this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _AnalyzedFoodItemEntity.fromJson(Map<String, dynamic> json) => _$AnalyzedFoodItemEntityFromJson(json);

@override final  int id;
@override@JsonKey() final  String name;
@override final  NutrientValueEntity? kcal;
@override final  NutrientValueEntity? carbohydrate;
@override final  NutrientValueEntity? protein;
@override final  NutrientValueEntity? fat;
@override final  NutrientValueEntity? sugar;
@override final  NutrientValueEntity? sodium;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzedFoodItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalyzedFoodItemEntity(id: $id, name: $name, kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$AnalyzedFoodItemEntityCopyWith<$Res> implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  factory _$AnalyzedFoodItemEntityCopyWith(_AnalyzedFoodItemEntity value, $Res Function(_AnalyzedFoodItemEntity) _then) = __$AnalyzedFoodItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, NutrientValueEntity? kcal, NutrientValueEntity? carbohydrate, NutrientValueEntity? protein, NutrientValueEntity? fat, NutrientValueEntity? sugar, NutrientValueEntity? sodium
});


@override $NutrientValueEntityCopyWith<$Res>? get kcal;@override $NutrientValueEntityCopyWith<$Res>? get carbohydrate;@override $NutrientValueEntityCopyWith<$Res>? get protein;@override $NutrientValueEntityCopyWith<$Res>? get fat;@override $NutrientValueEntityCopyWith<$Res>? get sugar;@override $NutrientValueEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements _$AnalyzedFoodItemEntityCopyWith<$Res> {
  __$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final _AnalyzedFoodItemEntity _self;
  final $Res Function(_AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_AnalyzedFoodItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientValueEntity?,
  ));
}

/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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
}/// Create a copy of AnalyzedFoodItemEntity
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

 List<AnalyzedFoodItemEntity> get main; List<AnalyzedFoodItemEntity> get sides; List<AnalyzedFoodItemEntity> get others; List<String> get assumptions; String get foodImageUrl; DateTime? get createdAt; AnalysisNutritionInfoEntity? get analysisNutritionInfo;
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalyzeResultEntityCopyWith<FoodAnalyzeResultEntity> get copyWith => _$FoodAnalyzeResultEntityCopyWithImpl<FoodAnalyzeResultEntity>(this as FoodAnalyzeResultEntity, _$identity);

  /// Serializes this FoodAnalyzeResultEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.others, others)&&const DeepCollectionEquality().equals(other.assumptions, assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.analysisNutritionInfo, analysisNutritionInfo) || other.analysisNutritionInfo == analysisNutritionInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(others),const DeepCollectionEquality().hash(assumptions),foodImageUrl,createdAt,analysisNutritionInfo);

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, analysisNutritionInfo: $analysisNutritionInfo)';
}


}

/// @nodoc
abstract mixin class $FoodAnalyzeResultEntityCopyWith<$Res>  {
  factory $FoodAnalyzeResultEntityCopyWith(FoodAnalyzeResultEntity value, $Res Function(FoodAnalyzeResultEntity) _then) = _$FoodAnalyzeResultEntityCopyWithImpl;
@useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, List<String> assumptions, String foodImageUrl, DateTime? createdAt, AnalysisNutritionInfoEntity? analysisNutritionInfo
});


$AnalysisNutritionInfoEntityCopyWith<$Res>? get analysisNutritionInfo;

}
/// @nodoc
class _$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  _$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final FoodAnalyzeResultEntity _self;
  final $Res Function(FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? analysisNutritionInfo = freezed,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,assumptions: null == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,analysisNutritionInfo: freezed == analysisNutritionInfo ? _self.analysisNutritionInfo : analysisNutritionInfo // ignore: cast_nullable_to_non_nullable
as AnalysisNutritionInfoEntity?,
  ));
}
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoEntityCopyWith<$Res>? get analysisNutritionInfo {
    if (_self.analysisNutritionInfo == null) {
    return null;
  }

  return $AnalysisNutritionInfoEntityCopyWith<$Res>(_self.analysisNutritionInfo!, (value) {
    return _then(_self.copyWith(analysisNutritionInfo: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  AnalysisNutritionInfoEntity? analysisNutritionInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.analysisNutritionInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  AnalysisNutritionInfoEntity? analysisNutritionInfo)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity():
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.analysisNutritionInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  List<String> assumptions,  String foodImageUrl,  DateTime? createdAt,  AnalysisNutritionInfoEntity? analysisNutritionInfo)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.assumptions,_that.foodImageUrl,_that.createdAt,_that.analysisNutritionInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodAnalyzeResultEntity implements FoodAnalyzeResultEntity {
  const _FoodAnalyzeResultEntity({final  List<AnalyzedFoodItemEntity> main = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> sides = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> others = const <AnalyzedFoodItemEntity>[], final  List<String> assumptions = const <String>[], this.foodImageUrl = '', this.createdAt, this.analysisNutritionInfo}): _main = main,_sides = sides,_others = others,_assumptions = assumptions;
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
@override final  AnalysisNutritionInfoEntity? analysisNutritionInfo;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._others, _others)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions)&&(identical(other.foodImageUrl, foodImageUrl) || other.foodImageUrl == foodImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.analysisNutritionInfo, analysisNutritionInfo) || other.analysisNutritionInfo == analysisNutritionInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_others),const DeepCollectionEquality().hash(_assumptions),foodImageUrl,createdAt,analysisNutritionInfo);

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, assumptions: $assumptions, foodImageUrl: $foodImageUrl, createdAt: $createdAt, analysisNutritionInfo: $analysisNutritionInfo)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalyzeResultEntityCopyWith<$Res> implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  factory _$FoodAnalyzeResultEntityCopyWith(_FoodAnalyzeResultEntity value, $Res Function(_FoodAnalyzeResultEntity) _then) = __$FoodAnalyzeResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, List<String> assumptions, String foodImageUrl, DateTime? createdAt, AnalysisNutritionInfoEntity? analysisNutritionInfo
});


@override $AnalysisNutritionInfoEntityCopyWith<$Res>? get analysisNutritionInfo;

}
/// @nodoc
class __$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements _$FoodAnalyzeResultEntityCopyWith<$Res> {
  __$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalyzeResultEntity _self;
  final $Res Function(_FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? assumptions = null,Object? foodImageUrl = null,Object? createdAt = freezed,Object? analysisNutritionInfo = freezed,}) {
  return _then(_FoodAnalyzeResultEntity(
main: null == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,assumptions: null == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,foodImageUrl: null == foodImageUrl ? _self.foodImageUrl : foodImageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,analysisNutritionInfo: freezed == analysisNutritionInfo ? _self.analysisNutritionInfo : analysisNutritionInfo // ignore: cast_nullable_to_non_nullable
as AnalysisNutritionInfoEntity?,
  ));
}

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoEntityCopyWith<$Res>? get analysisNutritionInfo {
    if (_self.analysisNutritionInfo == null) {
    return null;
  }

  return $AnalysisNutritionInfoEntityCopyWith<$Res>(_self.analysisNutritionInfo!, (value) {
    return _then(_self.copyWith(analysisNutritionInfo: value));
  });
}
}


/// @nodoc
mixin _$AnalysisNutritionInfoEntity {

 NutrientInfoEntity? get kcal; NutrientInfoEntity? get carbohydrate; NutrientInfoEntity? get protein; NutrientInfoEntity? get fat; SugarInfoEntity? get sugar; SodiumInfoEntity? get sodium;
/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisNutritionInfoEntityCopyWith<AnalysisNutritionInfoEntity> get copyWith => _$AnalysisNutritionInfoEntityCopyWithImpl<AnalysisNutritionInfoEntity>(this as AnalysisNutritionInfoEntity, _$identity);

  /// Serializes this AnalysisNutritionInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisNutritionInfoEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisNutritionInfoEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $AnalysisNutritionInfoEntityCopyWith<$Res>  {
  factory $AnalysisNutritionInfoEntityCopyWith(AnalysisNutritionInfoEntity value, $Res Function(AnalysisNutritionInfoEntity) _then) = _$AnalysisNutritionInfoEntityCopyWithImpl;
@useResult
$Res call({
 NutrientInfoEntity? kcal, NutrientInfoEntity? carbohydrate, NutrientInfoEntity? protein, NutrientInfoEntity? fat, SugarInfoEntity? sugar, SodiumInfoEntity? sodium
});


$NutrientInfoEntityCopyWith<$Res>? get kcal;$NutrientInfoEntityCopyWith<$Res>? get carbohydrate;$NutrientInfoEntityCopyWith<$Res>? get protein;$NutrientInfoEntityCopyWith<$Res>? get fat;$SugarInfoEntityCopyWith<$Res>? get sugar;$SodiumInfoEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class _$AnalysisNutritionInfoEntityCopyWithImpl<$Res>
    implements $AnalysisNutritionInfoEntityCopyWith<$Res> {
  _$AnalysisNutritionInfoEntityCopyWithImpl(this._self, this._then);

  final AnalysisNutritionInfoEntity _self;
  final $Res Function(AnalysisNutritionInfoEntity) _then;

/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_self.copyWith(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarInfoEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumInfoEntity?,
  ));
}
/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarInfoEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarInfoEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumInfoEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumInfoEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisNutritionInfoEntity].
extension AnalysisNutritionInfoEntityPatterns on AnalysisNutritionInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisNutritionInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisNutritionInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisNutritionInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientInfoEntity? kcal,  NutrientInfoEntity? carbohydrate,  NutrientInfoEntity? protein,  NutrientInfoEntity? fat,  SugarInfoEntity? sugar,  SodiumInfoEntity? sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientInfoEntity? kcal,  NutrientInfoEntity? carbohydrate,  NutrientInfoEntity? protein,  NutrientInfoEntity? fat,  SugarInfoEntity? sugar,  SodiumInfoEntity? sodium)  $default,) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientInfoEntity? kcal,  NutrientInfoEntity? carbohydrate,  NutrientInfoEntity? protein,  NutrientInfoEntity? fat,  SugarInfoEntity? sugar,  SodiumInfoEntity? sodium)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisNutritionInfoEntity() when $default != null:
return $default(_that.kcal,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisNutritionInfoEntity implements AnalysisNutritionInfoEntity {
  const _AnalysisNutritionInfoEntity({this.kcal, this.carbohydrate, this.protein, this.fat, this.sugar, this.sodium});
  factory _AnalysisNutritionInfoEntity.fromJson(Map<String, dynamic> json) => _$AnalysisNutritionInfoEntityFromJson(json);

@override final  NutrientInfoEntity? kcal;
@override final  NutrientInfoEntity? carbohydrate;
@override final  NutrientInfoEntity? protein;
@override final  NutrientInfoEntity? fat;
@override final  SugarInfoEntity? sugar;
@override final  SodiumInfoEntity? sodium;

/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisNutritionInfoEntityCopyWith<_AnalysisNutritionInfoEntity> get copyWith => __$AnalysisNutritionInfoEntityCopyWithImpl<_AnalysisNutritionInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisNutritionInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisNutritionInfoEntity&&(identical(other.kcal, kcal) || other.kcal == kcal)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kcal,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'AnalysisNutritionInfoEntity(kcal: $kcal, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$AnalysisNutritionInfoEntityCopyWith<$Res> implements $AnalysisNutritionInfoEntityCopyWith<$Res> {
  factory _$AnalysisNutritionInfoEntityCopyWith(_AnalysisNutritionInfoEntity value, $Res Function(_AnalysisNutritionInfoEntity) _then) = __$AnalysisNutritionInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 NutrientInfoEntity? kcal, NutrientInfoEntity? carbohydrate, NutrientInfoEntity? protein, NutrientInfoEntity? fat, SugarInfoEntity? sugar, SodiumInfoEntity? sodium
});


@override $NutrientInfoEntityCopyWith<$Res>? get kcal;@override $NutrientInfoEntityCopyWith<$Res>? get carbohydrate;@override $NutrientInfoEntityCopyWith<$Res>? get protein;@override $NutrientInfoEntityCopyWith<$Res>? get fat;@override $SugarInfoEntityCopyWith<$Res>? get sugar;@override $SodiumInfoEntityCopyWith<$Res>? get sodium;

}
/// @nodoc
class __$AnalysisNutritionInfoEntityCopyWithImpl<$Res>
    implements _$AnalysisNutritionInfoEntityCopyWith<$Res> {
  __$AnalysisNutritionInfoEntityCopyWithImpl(this._self, this._then);

  final _AnalysisNutritionInfoEntity _self;
  final $Res Function(_AnalysisNutritionInfoEntity) _then;

/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kcal = freezed,Object? carbohydrate = freezed,Object? protein = freezed,Object? fat = freezed,Object? sugar = freezed,Object? sodium = freezed,}) {
  return _then(_AnalysisNutritionInfoEntity(
kcal: freezed == kcal ? _self.kcal : kcal // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,carbohydrate: freezed == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientInfoEntity?,sugar: freezed == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarInfoEntity?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumInfoEntity?,
  ));
}

/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get kcal {
    if (_self.kcal == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.kcal!, (value) {
    return _then(_self.copyWith(kcal: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get carbohydrate {
    if (_self.carbohydrate == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.carbohydrate!, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<$Res>? get fat {
    if (_self.fat == null) {
    return null;
  }

  return $NutrientInfoEntityCopyWith<$Res>(_self.fat!, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarInfoEntityCopyWith<$Res>? get sugar {
    if (_self.sugar == null) {
    return null;
  }

  return $SugarInfoEntityCopyWith<$Res>(_self.sugar!, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of AnalysisNutritionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumInfoEntityCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $SodiumInfoEntityCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientInfoEntity {

 double? get intake; int? get target; double? get percent;
/// Create a copy of NutrientInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientInfoEntityCopyWith<NutrientInfoEntity> get copyWith => _$NutrientInfoEntityCopyWithImpl<NutrientInfoEntity>(this as NutrientInfoEntity, _$identity);

  /// Serializes this NutrientInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientInfoEntity(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $NutrientInfoEntityCopyWith<$Res>  {
  factory $NutrientInfoEntityCopyWith(NutrientInfoEntity value, $Res Function(NutrientInfoEntity) _then) = _$NutrientInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class _$NutrientInfoEntityCopyWithImpl<$Res>
    implements $NutrientInfoEntityCopyWith<$Res> {
  _$NutrientInfoEntityCopyWithImpl(this._self, this._then);

  final NutrientInfoEntity _self;
  final $Res Function(NutrientInfoEntity) _then;

/// Create a copy of NutrientInfoEntity
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


/// Adds pattern-matching-related methods to [NutrientInfoEntity].
extension NutrientInfoEntityPatterns on NutrientInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutrientInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientInfoEntity() when $default != null:
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
case _NutrientInfoEntity() when $default != null:
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
case _NutrientInfoEntity():
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
case _NutrientInfoEntity() when $default != null:
return $default(_that.intake,_that.target,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientInfoEntity implements NutrientInfoEntity {
  const _NutrientInfoEntity({this.intake, this.target, this.percent});
  factory _NutrientInfoEntity.fromJson(Map<String, dynamic> json) => _$NutrientInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? target;
@override final  double? percent;

/// Create a copy of NutrientInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientInfoEntityCopyWith<_NutrientInfoEntity> get copyWith => __$NutrientInfoEntityCopyWithImpl<_NutrientInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,target,percent);

@override
String toString() {
  return 'NutrientInfoEntity(intake: $intake, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$NutrientInfoEntityCopyWith<$Res> implements $NutrientInfoEntityCopyWith<$Res> {
  factory _$NutrientInfoEntityCopyWith(_NutrientInfoEntity value, $Res Function(_NutrientInfoEntity) _then) = __$NutrientInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? target, double? percent
});




}
/// @nodoc
class __$NutrientInfoEntityCopyWithImpl<$Res>
    implements _$NutrientInfoEntityCopyWith<$Res> {
  __$NutrientInfoEntityCopyWithImpl(this._self, this._then);

  final _NutrientInfoEntity _self;
  final $Res Function(_NutrientInfoEntity) _then;

/// Create a copy of NutrientInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? target = freezed,Object? percent = freezed,}) {
  return _then(_NutrientInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int?,percent: freezed == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SugarInfoEntity {

 double? get intake; int? get max; NutritionThresholdStatusEnum? get status;
/// Create a copy of SugarInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarInfoEntityCopyWith<SugarInfoEntity> get copyWith => _$SugarInfoEntityCopyWithImpl<SugarInfoEntity>(this as SugarInfoEntity, _$identity);

  /// Serializes this SugarInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,status);

@override
String toString() {
  return 'SugarInfoEntity(intake: $intake, max: $max, status: $status)';
}


}

/// @nodoc
abstract mixin class $SugarInfoEntityCopyWith<$Res>  {
  factory $SugarInfoEntityCopyWith(SugarInfoEntity value, $Res Function(SugarInfoEntity) _then) = _$SugarInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? max, NutritionThresholdStatusEnum? status
});




}
/// @nodoc
class _$SugarInfoEntityCopyWithImpl<$Res>
    implements $SugarInfoEntityCopyWith<$Res> {
  _$SugarInfoEntityCopyWithImpl(this._self, this._then);

  final SugarInfoEntity _self;
  final $Res Function(SugarInfoEntity) _then;

/// Create a copy of SugarInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? max = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarInfoEntity].
extension SugarInfoEntityPatterns on SugarInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SugarInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SugarInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? max,  NutritionThresholdStatusEnum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarInfoEntity() when $default != null:
return $default(_that.intake,_that.max,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? max,  NutritionThresholdStatusEnum? status)  $default,) {final _that = this;
switch (_that) {
case _SugarInfoEntity():
return $default(_that.intake,_that.max,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? max,  NutritionThresholdStatusEnum? status)?  $default,) {final _that = this;
switch (_that) {
case _SugarInfoEntity() when $default != null:
return $default(_that.intake,_that.max,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarInfoEntity implements SugarInfoEntity {
  const _SugarInfoEntity({this.intake, this.max, this.status});
  factory _SugarInfoEntity.fromJson(Map<String, dynamic> json) => _$SugarInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? max;
@override final  NutritionThresholdStatusEnum? status;

/// Create a copy of SugarInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarInfoEntityCopyWith<_SugarInfoEntity> get copyWith => __$SugarInfoEntityCopyWithImpl<_SugarInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.max, max) || other.max == max)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,max,status);

@override
String toString() {
  return 'SugarInfoEntity(intake: $intake, max: $max, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SugarInfoEntityCopyWith<$Res> implements $SugarInfoEntityCopyWith<$Res> {
  factory _$SugarInfoEntityCopyWith(_SugarInfoEntity value, $Res Function(_SugarInfoEntity) _then) = __$SugarInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? max, NutritionThresholdStatusEnum? status
});




}
/// @nodoc
class __$SugarInfoEntityCopyWithImpl<$Res>
    implements _$SugarInfoEntityCopyWith<$Res> {
  __$SugarInfoEntityCopyWithImpl(this._self, this._then);

  final _SugarInfoEntity _self;
  final $Res Function(_SugarInfoEntity) _then;

/// Create a copy of SugarInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? max = freezed,Object? status = freezed,}) {
  return _then(_SugarInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}


/// @nodoc
mixin _$SodiumInfoEntity {

 double? get intake; int? get adequate; int? get riskReduction; NutritionThresholdStatusEnum? get status;
/// Create a copy of SodiumInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumInfoEntityCopyWith<SodiumInfoEntity> get copyWith => _$SodiumInfoEntityCopyWithImpl<SodiumInfoEntity>(this as SodiumInfoEntity, _$identity);

  /// Serializes this SodiumInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,status);

@override
String toString() {
  return 'SodiumInfoEntity(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, status: $status)';
}


}

/// @nodoc
abstract mixin class $SodiumInfoEntityCopyWith<$Res>  {
  factory $SodiumInfoEntityCopyWith(SodiumInfoEntity value, $Res Function(SodiumInfoEntity) _then) = _$SodiumInfoEntityCopyWithImpl;
@useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, NutritionThresholdStatusEnum? status
});




}
/// @nodoc
class _$SodiumInfoEntityCopyWithImpl<$Res>
    implements $SodiumInfoEntityCopyWith<$Res> {
  _$SodiumInfoEntityCopyWithImpl(this._self, this._then);

  final SodiumInfoEntity _self;
  final $Res Function(SodiumInfoEntity) _then;

/// Create a copy of SodiumInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumInfoEntity].
extension SodiumInfoEntityPatterns on SodiumInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SodiumInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumInfoEntity() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? status)  $default,) {final _that = this;
switch (_that) {
case _SodiumInfoEntity():
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? intake,  int? adequate,  int? riskReduction,  NutritionThresholdStatusEnum? status)?  $default,) {final _that = this;
switch (_that) {
case _SodiumInfoEntity() when $default != null:
return $default(_that.intake,_that.adequate,_that.riskReduction,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumInfoEntity implements SodiumInfoEntity {
  const _SodiumInfoEntity({this.intake, this.adequate, this.riskReduction, this.status});
  factory _SodiumInfoEntity.fromJson(Map<String, dynamic> json) => _$SodiumInfoEntityFromJson(json);

@override final  double? intake;
@override final  int? adequate;
@override final  int? riskReduction;
@override final  NutritionThresholdStatusEnum? status;

/// Create a copy of SodiumInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumInfoEntityCopyWith<_SodiumInfoEntity> get copyWith => __$SodiumInfoEntityCopyWithImpl<_SodiumInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumInfoEntity&&(identical(other.intake, intake) || other.intake == intake)&&(identical(other.adequate, adequate) || other.adequate == adequate)&&(identical(other.riskReduction, riskReduction) || other.riskReduction == riskReduction)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intake,adequate,riskReduction,status);

@override
String toString() {
  return 'SodiumInfoEntity(intake: $intake, adequate: $adequate, riskReduction: $riskReduction, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SodiumInfoEntityCopyWith<$Res> implements $SodiumInfoEntityCopyWith<$Res> {
  factory _$SodiumInfoEntityCopyWith(_SodiumInfoEntity value, $Res Function(_SodiumInfoEntity) _then) = __$SodiumInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 double? intake, int? adequate, int? riskReduction, NutritionThresholdStatusEnum? status
});




}
/// @nodoc
class __$SodiumInfoEntityCopyWithImpl<$Res>
    implements _$SodiumInfoEntityCopyWith<$Res> {
  __$SodiumInfoEntityCopyWithImpl(this._self, this._then);

  final _SodiumInfoEntity _self;
  final $Res Function(_SodiumInfoEntity) _then;

/// Create a copy of SodiumInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intake = freezed,Object? adequate = freezed,Object? riskReduction = freezed,Object? status = freezed,}) {
  return _then(_SodiumInfoEntity(
intake: freezed == intake ? _self.intake : intake // ignore: cast_nullable_to_non_nullable
as double?,adequate: freezed == adequate ? _self.adequate : adequate // ignore: cast_nullable_to_non_nullable
as int?,riskReduction: freezed == riskReduction ? _self.riskReduction : riskReduction // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionThresholdStatusEnum?,
  ));
}


}

// dart format on
