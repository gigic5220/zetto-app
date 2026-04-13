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

 String get name; Map<String, dynamic> get nutrients;
/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzedFoodItemEntityCopyWith<AnalyzedFoodItemEntity> get copyWith => _$AnalyzedFoodItemEntityCopyWithImpl<AnalyzedFoodItemEntity>(this as AnalyzedFoodItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzedFoodItemEntity&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.nutrients, nutrients));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(nutrients));

@override
String toString() {
  return 'AnalyzedFoodItemEntity(name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $AnalyzedFoodItemEntityCopyWith<$Res>  {
  factory $AnalyzedFoodItemEntityCopyWith(AnalyzedFoodItemEntity value, $Res Function(AnalyzedFoodItemEntity) _then) = _$AnalyzedFoodItemEntityCopyWithImpl;
@useResult
$Res call({
 String name, Map<String, dynamic> nutrients
});




}
/// @nodoc
class _$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  _$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final AnalyzedFoodItemEntity _self;
  final $Res Function(AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? nutrients = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  Map<String, dynamic> nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
return $default(_that.name,_that.nutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  Map<String, dynamic> nutrients)  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity():
return $default(_that.name,_that.nutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  Map<String, dynamic> nutrients)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemEntity() when $default != null:
return $default(_that.name,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyzedFoodItemEntity implements AnalyzedFoodItemEntity {
  const _AnalyzedFoodItemEntity({this.name = '', final  Map<String, dynamic> nutrients = const <String, dynamic>{}}): _nutrients = nutrients;
  

@override@JsonKey() final  String name;
 final  Map<String, dynamic> _nutrients;
@override@JsonKey() Map<String, dynamic> get nutrients {
  if (_nutrients is EqualUnmodifiableMapView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nutrients);
}


/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyzedFoodItemEntityCopyWith<_AnalyzedFoodItemEntity> get copyWith => __$AnalyzedFoodItemEntityCopyWithImpl<_AnalyzedFoodItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzedFoodItemEntity&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_nutrients));

@override
String toString() {
  return 'AnalyzedFoodItemEntity(name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$AnalyzedFoodItemEntityCopyWith<$Res> implements $AnalyzedFoodItemEntityCopyWith<$Res> {
  factory _$AnalyzedFoodItemEntityCopyWith(_AnalyzedFoodItemEntity value, $Res Function(_AnalyzedFoodItemEntity) _then) = __$AnalyzedFoodItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, Map<String, dynamic> nutrients
});




}
/// @nodoc
class __$AnalyzedFoodItemEntityCopyWithImpl<$Res>
    implements _$AnalyzedFoodItemEntityCopyWith<$Res> {
  __$AnalyzedFoodItemEntityCopyWithImpl(this._self, this._then);

  final _AnalyzedFoodItemEntity _self;
  final $Res Function(_AnalyzedFoodItemEntity) _then;

/// Create a copy of AnalyzedFoodItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? nutrients = null,}) {
  return _then(_AnalyzedFoodItemEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: null == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$FoodVisionEntity {

 List<String> get visibleIngredients; List<String> get assumedIngredients; Map<String, dynamic> get estimatedTotalNutrients; List<String> get assumptions;
/// Create a copy of FoodVisionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodVisionEntityCopyWith<FoodVisionEntity> get copyWith => _$FoodVisionEntityCopyWithImpl<FoodVisionEntity>(this as FoodVisionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodVisionEntity&&const DeepCollectionEquality().equals(other.visibleIngredients, visibleIngredients)&&const DeepCollectionEquality().equals(other.assumedIngredients, assumedIngredients)&&const DeepCollectionEquality().equals(other.estimatedTotalNutrients, estimatedTotalNutrients)&&const DeepCollectionEquality().equals(other.assumptions, assumptions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(visibleIngredients),const DeepCollectionEquality().hash(assumedIngredients),const DeepCollectionEquality().hash(estimatedTotalNutrients),const DeepCollectionEquality().hash(assumptions));

@override
String toString() {
  return 'FoodVisionEntity(visibleIngredients: $visibleIngredients, assumedIngredients: $assumedIngredients, estimatedTotalNutrients: $estimatedTotalNutrients, assumptions: $assumptions)';
}


}

/// @nodoc
abstract mixin class $FoodVisionEntityCopyWith<$Res>  {
  factory $FoodVisionEntityCopyWith(FoodVisionEntity value, $Res Function(FoodVisionEntity) _then) = _$FoodVisionEntityCopyWithImpl;
@useResult
$Res call({
 List<String> visibleIngredients, List<String> assumedIngredients, Map<String, dynamic> estimatedTotalNutrients, List<String> assumptions
});




}
/// @nodoc
class _$FoodVisionEntityCopyWithImpl<$Res>
    implements $FoodVisionEntityCopyWith<$Res> {
  _$FoodVisionEntityCopyWithImpl(this._self, this._then);

  final FoodVisionEntity _self;
  final $Res Function(FoodVisionEntity) _then;

/// Create a copy of FoodVisionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visibleIngredients = null,Object? assumedIngredients = null,Object? estimatedTotalNutrients = null,Object? assumptions = null,}) {
  return _then(_self.copyWith(
visibleIngredients: null == visibleIngredients ? _self.visibleIngredients : visibleIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,assumedIngredients: null == assumedIngredients ? _self.assumedIngredients : assumedIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,estimatedTotalNutrients: null == estimatedTotalNutrients ? _self.estimatedTotalNutrients : estimatedTotalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assumptions: null == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodVisionEntity].
extension FoodVisionEntityPatterns on FoodVisionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodVisionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodVisionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodVisionEntity value)  $default,){
final _that = this;
switch (_that) {
case _FoodVisionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodVisionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FoodVisionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> visibleIngredients,  List<String> assumedIngredients,  Map<String, dynamic> estimatedTotalNutrients,  List<String> assumptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodVisionEntity() when $default != null:
return $default(_that.visibleIngredients,_that.assumedIngredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> visibleIngredients,  List<String> assumedIngredients,  Map<String, dynamic> estimatedTotalNutrients,  List<String> assumptions)  $default,) {final _that = this;
switch (_that) {
case _FoodVisionEntity():
return $default(_that.visibleIngredients,_that.assumedIngredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> visibleIngredients,  List<String> assumedIngredients,  Map<String, dynamic> estimatedTotalNutrients,  List<String> assumptions)?  $default,) {final _that = this;
switch (_that) {
case _FoodVisionEntity() when $default != null:
return $default(_that.visibleIngredients,_that.assumedIngredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
  return null;

}
}

}

/// @nodoc


class _FoodVisionEntity implements FoodVisionEntity {
  const _FoodVisionEntity({final  List<String> visibleIngredients = const <String>[], final  List<String> assumedIngredients = const <String>[], final  Map<String, dynamic> estimatedTotalNutrients = const <String, dynamic>{}, final  List<String> assumptions = const <String>[]}): _visibleIngredients = visibleIngredients,_assumedIngredients = assumedIngredients,_estimatedTotalNutrients = estimatedTotalNutrients,_assumptions = assumptions;
  

 final  List<String> _visibleIngredients;
@override@JsonKey() List<String> get visibleIngredients {
  if (_visibleIngredients is EqualUnmodifiableListView) return _visibleIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibleIngredients);
}

 final  List<String> _assumedIngredients;
@override@JsonKey() List<String> get assumedIngredients {
  if (_assumedIngredients is EqualUnmodifiableListView) return _assumedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assumedIngredients);
}

 final  Map<String, dynamic> _estimatedTotalNutrients;
@override@JsonKey() Map<String, dynamic> get estimatedTotalNutrients {
  if (_estimatedTotalNutrients is EqualUnmodifiableMapView) return _estimatedTotalNutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_estimatedTotalNutrients);
}

 final  List<String> _assumptions;
@override@JsonKey() List<String> get assumptions {
  if (_assumptions is EqualUnmodifiableListView) return _assumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assumptions);
}


/// Create a copy of FoodVisionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodVisionEntityCopyWith<_FoodVisionEntity> get copyWith => __$FoodVisionEntityCopyWithImpl<_FoodVisionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodVisionEntity&&const DeepCollectionEquality().equals(other._visibleIngredients, _visibleIngredients)&&const DeepCollectionEquality().equals(other._assumedIngredients, _assumedIngredients)&&const DeepCollectionEquality().equals(other._estimatedTotalNutrients, _estimatedTotalNutrients)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_visibleIngredients),const DeepCollectionEquality().hash(_assumedIngredients),const DeepCollectionEquality().hash(_estimatedTotalNutrients),const DeepCollectionEquality().hash(_assumptions));

@override
String toString() {
  return 'FoodVisionEntity(visibleIngredients: $visibleIngredients, assumedIngredients: $assumedIngredients, estimatedTotalNutrients: $estimatedTotalNutrients, assumptions: $assumptions)';
}


}

/// @nodoc
abstract mixin class _$FoodVisionEntityCopyWith<$Res> implements $FoodVisionEntityCopyWith<$Res> {
  factory _$FoodVisionEntityCopyWith(_FoodVisionEntity value, $Res Function(_FoodVisionEntity) _then) = __$FoodVisionEntityCopyWithImpl;
@override @useResult
$Res call({
 List<String> visibleIngredients, List<String> assumedIngredients, Map<String, dynamic> estimatedTotalNutrients, List<String> assumptions
});




}
/// @nodoc
class __$FoodVisionEntityCopyWithImpl<$Res>
    implements _$FoodVisionEntityCopyWith<$Res> {
  __$FoodVisionEntityCopyWithImpl(this._self, this._then);

  final _FoodVisionEntity _self;
  final $Res Function(_FoodVisionEntity) _then;

/// Create a copy of FoodVisionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visibleIngredients = null,Object? assumedIngredients = null,Object? estimatedTotalNutrients = null,Object? assumptions = null,}) {
  return _then(_FoodVisionEntity(
visibleIngredients: null == visibleIngredients ? _self._visibleIngredients : visibleIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,assumedIngredients: null == assumedIngredients ? _self._assumedIngredients : assumedIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,estimatedTotalNutrients: null == estimatedTotalNutrients ? _self._estimatedTotalNutrients : estimatedTotalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assumptions: null == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$FoodAnalyzeResultEntity {

 List<AnalyzedFoodItemEntity> get main; List<AnalyzedFoodItemEntity> get sides; List<AnalyzedFoodItemEntity> get others; FoodVisionEntity? get vision; String? get finalSource; Map<String, dynamic> get finalNutrients;
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalyzeResultEntityCopyWith<FoodAnalyzeResultEntity> get copyWith => _$FoodAnalyzeResultEntityCopyWithImpl<FoodAnalyzeResultEntity>(this as FoodAnalyzeResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.others, others)&&(identical(other.vision, vision) || other.vision == vision)&&(identical(other.finalSource, finalSource) || other.finalSource == finalSource)&&const DeepCollectionEquality().equals(other.finalNutrients, finalNutrients));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(others),vision,finalSource,const DeepCollectionEquality().hash(finalNutrients));

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, vision: $vision, finalSource: $finalSource, finalNutrients: $finalNutrients)';
}


}

/// @nodoc
abstract mixin class $FoodAnalyzeResultEntityCopyWith<$Res>  {
  factory $FoodAnalyzeResultEntityCopyWith(FoodAnalyzeResultEntity value, $Res Function(FoodAnalyzeResultEntity) _then) = _$FoodAnalyzeResultEntityCopyWithImpl;
@useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, FoodVisionEntity? vision, String? finalSource, Map<String, dynamic> finalNutrients
});


$FoodVisionEntityCopyWith<$Res>? get vision;

}
/// @nodoc
class _$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  _$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final FoodAnalyzeResultEntity _self;
  final $Res Function(FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? vision = freezed,Object? finalSource = freezed,Object? finalNutrients = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,vision: freezed == vision ? _self.vision : vision // ignore: cast_nullable_to_non_nullable
as FoodVisionEntity?,finalSource: freezed == finalSource ? _self.finalSource : finalSource // ignore: cast_nullable_to_non_nullable
as String?,finalNutrients: null == finalNutrients ? _self.finalNutrients : finalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodVisionEntityCopyWith<$Res>? get vision {
    if (_self.vision == null) {
    return null;
  }

  return $FoodVisionEntityCopyWith<$Res>(_self.vision!, (value) {
    return _then(_self.copyWith(vision: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  FoodVisionEntity? vision,  String? finalSource,  Map<String, dynamic> finalNutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.finalSource,_that.finalNutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  FoodVisionEntity? vision,  String? finalSource,  Map<String, dynamic> finalNutrients)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity():
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.finalSource,_that.finalNutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalyzedFoodItemEntity> main,  List<AnalyzedFoodItemEntity> sides,  List<AnalyzedFoodItemEntity> others,  FoodVisionEntity? vision,  String? finalSource,  Map<String, dynamic> finalNutrients)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.finalSource,_that.finalNutrients);case _:
  return null;

}
}

}

/// @nodoc


class _FoodAnalyzeResultEntity implements FoodAnalyzeResultEntity {
  const _FoodAnalyzeResultEntity({final  List<AnalyzedFoodItemEntity> main = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> sides = const <AnalyzedFoodItemEntity>[], final  List<AnalyzedFoodItemEntity> others = const <AnalyzedFoodItemEntity>[], this.vision, this.finalSource, final  Map<String, dynamic> finalNutrients = const <String, dynamic>{}}): _main = main,_sides = sides,_others = others,_finalNutrients = finalNutrients;
  

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

@override final  FoodVisionEntity? vision;
@override final  String? finalSource;
 final  Map<String, dynamic> _finalNutrients;
@override@JsonKey() Map<String, dynamic> get finalNutrients {
  if (_finalNutrients is EqualUnmodifiableMapView) return _finalNutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_finalNutrients);
}


/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalyzeResultEntityCopyWith<_FoodAnalyzeResultEntity> get copyWith => __$FoodAnalyzeResultEntityCopyWithImpl<_FoodAnalyzeResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._others, _others)&&(identical(other.vision, vision) || other.vision == vision)&&(identical(other.finalSource, finalSource) || other.finalSource == finalSource)&&const DeepCollectionEquality().equals(other._finalNutrients, _finalNutrients));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_others),vision,finalSource,const DeepCollectionEquality().hash(_finalNutrients));

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, others: $others, vision: $vision, finalSource: $finalSource, finalNutrients: $finalNutrients)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalyzeResultEntityCopyWith<$Res> implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  factory _$FoodAnalyzeResultEntityCopyWith(_FoodAnalyzeResultEntity value, $Res Function(_FoodAnalyzeResultEntity) _then) = __$FoodAnalyzeResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AnalyzedFoodItemEntity> main, List<AnalyzedFoodItemEntity> sides, List<AnalyzedFoodItemEntity> others, FoodVisionEntity? vision, String? finalSource, Map<String, dynamic> finalNutrients
});


@override $FoodVisionEntityCopyWith<$Res>? get vision;

}
/// @nodoc
class __$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements _$FoodAnalyzeResultEntityCopyWith<$Res> {
  __$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalyzeResultEntity _self;
  final $Res Function(_FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? sides = null,Object? others = null,Object? vision = freezed,Object? finalSource = freezed,Object? finalNutrients = null,}) {
  return _then(_FoodAnalyzeResultEntity(
main: null == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,sides: null == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,others: null == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemEntity>,vision: freezed == vision ? _self.vision : vision // ignore: cast_nullable_to_non_nullable
as FoodVisionEntity?,finalSource: freezed == finalSource ? _self.finalSource : finalSource // ignore: cast_nullable_to_non_nullable
as String?,finalNutrients: null == finalNutrients ? _self._finalNutrients : finalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodVisionEntityCopyWith<$Res>? get vision {
    if (_self.vision == null) {
    return null;
  }

  return $FoodVisionEntityCopyWith<$Res>(_self.vision!, (value) {
    return _then(_self.copyWith(vision: value));
  });
}
}

// dart format on
