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
mixin _$FoodAnalyzeResultEntity {

 List<String> get main; List<String> get sides; List<String> get visionAssumptions;/// `final.nutrients` — 키별 { value, unit } 형태
 Map<String, dynamic> get nutrients;
/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAnalyzeResultEntityCopyWith<FoodAnalyzeResultEntity> get copyWith => _$FoodAnalyzeResultEntityCopyWithImpl<FoodAnalyzeResultEntity>(this as FoodAnalyzeResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.visionAssumptions, visionAssumptions)&&const DeepCollectionEquality().equals(other.nutrients, nutrients));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(visionAssumptions),const DeepCollectionEquality().hash(nutrients));

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, visionAssumptions: $visionAssumptions, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $FoodAnalyzeResultEntityCopyWith<$Res>  {
  factory $FoodAnalyzeResultEntityCopyWith(FoodAnalyzeResultEntity value, $Res Function(FoodAnalyzeResultEntity) _then) = _$FoodAnalyzeResultEntityCopyWithImpl;
@useResult
$Res call({
 List<String> main, List<String> sides, List<String> visionAssumptions, Map<String, dynamic> nutrients
});




}
/// @nodoc
class _$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  _$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final FoodAnalyzeResultEntity _self;
  final $Res Function(FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? sides = null,Object? visionAssumptions = null,Object? nutrients = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<String>,sides: null == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<String>,visionAssumptions: null == visionAssumptions ? _self.visionAssumptions : visionAssumptions // ignore: cast_nullable_to_non_nullable
as List<String>,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> main,  List<String> sides,  List<String> visionAssumptions,  Map<String, dynamic> nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.visionAssumptions,_that.nutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> main,  List<String> sides,  List<String> visionAssumptions,  Map<String, dynamic> nutrients)  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity():
return $default(_that.main,_that.sides,_that.visionAssumptions,_that.nutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> main,  List<String> sides,  List<String> visionAssumptions,  Map<String, dynamic> nutrients)?  $default,) {final _that = this;
switch (_that) {
case _FoodAnalyzeResultEntity() when $default != null:
return $default(_that.main,_that.sides,_that.visionAssumptions,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc


class _FoodAnalyzeResultEntity implements FoodAnalyzeResultEntity {
  const _FoodAnalyzeResultEntity({final  List<String> main = const <String>[], final  List<String> sides = const <String>[], final  List<String> visionAssumptions = const <String>[], final  Map<String, dynamic> nutrients = const <String, dynamic>{}}): _main = main,_sides = sides,_visionAssumptions = visionAssumptions,_nutrients = nutrients;
  

 final  List<String> _main;
@override@JsonKey() List<String> get main {
  if (_main is EqualUnmodifiableListView) return _main;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_main);
}

 final  List<String> _sides;
@override@JsonKey() List<String> get sides {
  if (_sides is EqualUnmodifiableListView) return _sides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sides);
}

 final  List<String> _visionAssumptions;
@override@JsonKey() List<String> get visionAssumptions {
  if (_visionAssumptions is EqualUnmodifiableListView) return _visionAssumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visionAssumptions);
}

/// `final.nutrients` — 키별 { value, unit } 형태
 final  Map<String, dynamic> _nutrients;
/// `final.nutrients` — 키별 { value, unit } 형태
@override@JsonKey() Map<String, dynamic> get nutrients {
  if (_nutrients is EqualUnmodifiableMapView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nutrients);
}


/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAnalyzeResultEntityCopyWith<_FoodAnalyzeResultEntity> get copyWith => __$FoodAnalyzeResultEntityCopyWithImpl<_FoodAnalyzeResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAnalyzeResultEntity&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._visionAssumptions, _visionAssumptions)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_visionAssumptions),const DeepCollectionEquality().hash(_nutrients));

@override
String toString() {
  return 'FoodAnalyzeResultEntity(main: $main, sides: $sides, visionAssumptions: $visionAssumptions, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$FoodAnalyzeResultEntityCopyWith<$Res> implements $FoodAnalyzeResultEntityCopyWith<$Res> {
  factory _$FoodAnalyzeResultEntityCopyWith(_FoodAnalyzeResultEntity value, $Res Function(_FoodAnalyzeResultEntity) _then) = __$FoodAnalyzeResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<String> main, List<String> sides, List<String> visionAssumptions, Map<String, dynamic> nutrients
});




}
/// @nodoc
class __$FoodAnalyzeResultEntityCopyWithImpl<$Res>
    implements _$FoodAnalyzeResultEntityCopyWith<$Res> {
  __$FoodAnalyzeResultEntityCopyWithImpl(this._self, this._then);

  final _FoodAnalyzeResultEntity _self;
  final $Res Function(_FoodAnalyzeResultEntity) _then;

/// Create a copy of FoodAnalyzeResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? sides = null,Object? visionAssumptions = null,Object? nutrients = null,}) {
  return _then(_FoodAnalyzeResultEntity(
main: null == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<String>,sides: null == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<String>,visionAssumptions: null == visionAssumptions ? _self._visionAssumptions : visionAssumptions // ignore: cast_nullable_to_non_nullable
as List<String>,nutrients: null == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
