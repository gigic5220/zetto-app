// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyzeResponseDto {

 List<AnalyzedFoodItemDto>? get main; List<AnalyzedFoodItemDto>? get sides; List<AnalyzedFoodItemDto>? get others; VisionBlockDto? get vision;@JsonKey(name: 'final') FinalBlockDto? get fin;
/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzeResponseDtoCopyWith<AnalyzeResponseDto> get copyWith => _$AnalyzeResponseDtoCopyWithImpl<AnalyzeResponseDto>(this as AnalyzeResponseDto, _$identity);

  /// Serializes this AnalyzeResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzeResponseDto&&const DeepCollectionEquality().equals(other.main, main)&&const DeepCollectionEquality().equals(other.sides, sides)&&const DeepCollectionEquality().equals(other.others, others)&&(identical(other.vision, vision) || other.vision == vision)&&(identical(other.fin, fin) || other.fin == fin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(main),const DeepCollectionEquality().hash(sides),const DeepCollectionEquality().hash(others),vision,fin);

@override
String toString() {
  return 'AnalyzeResponseDto(main: $main, sides: $sides, others: $others, vision: $vision, fin: $fin)';
}


}

/// @nodoc
abstract mixin class $AnalyzeResponseDtoCopyWith<$Res>  {
  factory $AnalyzeResponseDtoCopyWith(AnalyzeResponseDto value, $Res Function(AnalyzeResponseDto) _then) = _$AnalyzeResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<AnalyzedFoodItemDto>? main, List<AnalyzedFoodItemDto>? sides, List<AnalyzedFoodItemDto>? others, VisionBlockDto? vision,@JsonKey(name: 'final') FinalBlockDto? fin
});


$VisionBlockDtoCopyWith<$Res>? get vision;$FinalBlockDtoCopyWith<$Res>? get fin;

}
/// @nodoc
class _$AnalyzeResponseDtoCopyWithImpl<$Res>
    implements $AnalyzeResponseDtoCopyWith<$Res> {
  _$AnalyzeResponseDtoCopyWithImpl(this._self, this._then);

  final AnalyzeResponseDto _self;
  final $Res Function(AnalyzeResponseDto) _then;

/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = freezed,Object? sides = freezed,Object? others = freezed,Object? vision = freezed,Object? fin = freezed,}) {
  return _then(_self.copyWith(
main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,sides: freezed == sides ? _self.sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,others: freezed == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,vision: freezed == vision ? _self.vision : vision // ignore: cast_nullable_to_non_nullable
as VisionBlockDto?,fin: freezed == fin ? _self.fin : fin // ignore: cast_nullable_to_non_nullable
as FinalBlockDto?,
  ));
}
/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionBlockDtoCopyWith<$Res>? get vision {
    if (_self.vision == null) {
    return null;
  }

  return $VisionBlockDtoCopyWith<$Res>(_self.vision!, (value) {
    return _then(_self.copyWith(vision: value));
  });
}/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalBlockDtoCopyWith<$Res>? get fin {
    if (_self.fin == null) {
    return null;
  }

  return $FinalBlockDtoCopyWith<$Res>(_self.fin!, (value) {
    return _then(_self.copyWith(fin: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyzeResponseDto].
extension AnalyzeResponseDtoPatterns on AnalyzeResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyzeResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyzeResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyzeResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalyzeResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyzeResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyzeResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  VisionBlockDto? vision, @JsonKey(name: 'final')  FinalBlockDto? fin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzeResponseDto() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.fin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  VisionBlockDto? vision, @JsonKey(name: 'final')  FinalBlockDto? fin)  $default,) {final _that = this;
switch (_that) {
case _AnalyzeResponseDto():
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.fin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalyzedFoodItemDto>? main,  List<AnalyzedFoodItemDto>? sides,  List<AnalyzedFoodItemDto>? others,  VisionBlockDto? vision, @JsonKey(name: 'final')  FinalBlockDto? fin)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzeResponseDto() when $default != null:
return $default(_that.main,_that.sides,_that.others,_that.vision,_that.fin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyzeResponseDto implements AnalyzeResponseDto {
  const _AnalyzeResponseDto({final  List<AnalyzedFoodItemDto>? main, final  List<AnalyzedFoodItemDto>? sides, final  List<AnalyzedFoodItemDto>? others, this.vision, @JsonKey(name: 'final') this.fin}): _main = main,_sides = sides,_others = others;
  factory _AnalyzeResponseDto.fromJson(Map<String, dynamic> json) => _$AnalyzeResponseDtoFromJson(json);

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

@override final  VisionBlockDto? vision;
@override@JsonKey(name: 'final') final  FinalBlockDto? fin;

/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyzeResponseDtoCopyWith<_AnalyzeResponseDto> get copyWith => __$AnalyzeResponseDtoCopyWithImpl<_AnalyzeResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyzeResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzeResponseDto&&const DeepCollectionEquality().equals(other._main, _main)&&const DeepCollectionEquality().equals(other._sides, _sides)&&const DeepCollectionEquality().equals(other._others, _others)&&(identical(other.vision, vision) || other.vision == vision)&&(identical(other.fin, fin) || other.fin == fin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_main),const DeepCollectionEquality().hash(_sides),const DeepCollectionEquality().hash(_others),vision,fin);

@override
String toString() {
  return 'AnalyzeResponseDto(main: $main, sides: $sides, others: $others, vision: $vision, fin: $fin)';
}


}

/// @nodoc
abstract mixin class _$AnalyzeResponseDtoCopyWith<$Res> implements $AnalyzeResponseDtoCopyWith<$Res> {
  factory _$AnalyzeResponseDtoCopyWith(_AnalyzeResponseDto value, $Res Function(_AnalyzeResponseDto) _then) = __$AnalyzeResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<AnalyzedFoodItemDto>? main, List<AnalyzedFoodItemDto>? sides, List<AnalyzedFoodItemDto>? others, VisionBlockDto? vision,@JsonKey(name: 'final') FinalBlockDto? fin
});


@override $VisionBlockDtoCopyWith<$Res>? get vision;@override $FinalBlockDtoCopyWith<$Res>? get fin;

}
/// @nodoc
class __$AnalyzeResponseDtoCopyWithImpl<$Res>
    implements _$AnalyzeResponseDtoCopyWith<$Res> {
  __$AnalyzeResponseDtoCopyWithImpl(this._self, this._then);

  final _AnalyzeResponseDto _self;
  final $Res Function(_AnalyzeResponseDto) _then;

/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = freezed,Object? sides = freezed,Object? others = freezed,Object? vision = freezed,Object? fin = freezed,}) {
  return _then(_AnalyzeResponseDto(
main: freezed == main ? _self._main : main // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,sides: freezed == sides ? _self._sides : sides // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,others: freezed == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<AnalyzedFoodItemDto>?,vision: freezed == vision ? _self.vision : vision // ignore: cast_nullable_to_non_nullable
as VisionBlockDto?,fin: freezed == fin ? _self.fin : fin // ignore: cast_nullable_to_non_nullable
as FinalBlockDto?,
  ));
}

/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionBlockDtoCopyWith<$Res>? get vision {
    if (_self.vision == null) {
    return null;
  }

  return $VisionBlockDtoCopyWith<$Res>(_self.vision!, (value) {
    return _then(_self.copyWith(vision: value));
  });
}/// Create a copy of AnalyzeResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalBlockDtoCopyWith<$Res>? get fin {
    if (_self.fin == null) {
    return null;
  }

  return $FinalBlockDtoCopyWith<$Res>(_self.fin!, (value) {
    return _then(_self.copyWith(fin: value));
  });
}
}


/// @nodoc
mixin _$AnalyzedFoodItemDto {

 String? get name; Map<String, dynamic>? get nutrients;
/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzedFoodItemDtoCopyWith<AnalyzedFoodItemDto> get copyWith => _$AnalyzedFoodItemDtoCopyWithImpl<AnalyzedFoodItemDto>(this as AnalyzedFoodItemDto, _$identity);

  /// Serializes this AnalyzedFoodItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzedFoodItemDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.nutrients, nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(nutrients));

@override
String toString() {
  return 'AnalyzedFoodItemDto(name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $AnalyzedFoodItemDtoCopyWith<$Res>  {
  factory $AnalyzedFoodItemDtoCopyWith(AnalyzedFoodItemDto value, $Res Function(AnalyzedFoodItemDto) _then) = _$AnalyzedFoodItemDtoCopyWithImpl;
@useResult
$Res call({
 String? name, Map<String, dynamic>? nutrients
});




}
/// @nodoc
class _$AnalyzedFoodItemDtoCopyWithImpl<$Res>
    implements $AnalyzedFoodItemDtoCopyWith<$Res> {
  _$AnalyzedFoodItemDtoCopyWithImpl(this._self, this._then);

  final AnalyzedFoodItemDto _self;
  final $Res Function(AnalyzedFoodItemDto) _then;

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? nutrients = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Map<String, dynamic>? nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Map<String, dynamic>? nutrients)  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Map<String, dynamic>? nutrients)?  $default,) {final _that = this;
switch (_that) {
case _AnalyzedFoodItemDto() when $default != null:
return $default(_that.name,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyzedFoodItemDto implements AnalyzedFoodItemDto {
  const _AnalyzedFoodItemDto({this.name, final  Map<String, dynamic>? nutrients}): _nutrients = nutrients;
  factory _AnalyzedFoodItemDto.fromJson(Map<String, dynamic> json) => _$AnalyzedFoodItemDtoFromJson(json);

@override final  String? name;
 final  Map<String, dynamic>? _nutrients;
@override Map<String, dynamic>? get nutrients {
  final value = _nutrients;
  if (value == null) return null;
  if (_nutrients is EqualUnmodifiableMapView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyzedFoodItemDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_nutrients));

@override
String toString() {
  return 'AnalyzedFoodItemDto(name: $name, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$AnalyzedFoodItemDtoCopyWith<$Res> implements $AnalyzedFoodItemDtoCopyWith<$Res> {
  factory _$AnalyzedFoodItemDtoCopyWith(_AnalyzedFoodItemDto value, $Res Function(_AnalyzedFoodItemDto) _then) = __$AnalyzedFoodItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, Map<String, dynamic>? nutrients
});




}
/// @nodoc
class __$AnalyzedFoodItemDtoCopyWithImpl<$Res>
    implements _$AnalyzedFoodItemDtoCopyWith<$Res> {
  __$AnalyzedFoodItemDtoCopyWithImpl(this._self, this._then);

  final _AnalyzedFoodItemDto _self;
  final $Res Function(_AnalyzedFoodItemDto) _then;

/// Create a copy of AnalyzedFoodItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? nutrients = freezed,}) {
  return _then(_AnalyzedFoodItemDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$VisionIngredientsDto {

 List<String>? get visible; List<String>? get assumed;
/// Create a copy of VisionIngredientsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionIngredientsDtoCopyWith<VisionIngredientsDto> get copyWith => _$VisionIngredientsDtoCopyWithImpl<VisionIngredientsDto>(this as VisionIngredientsDto, _$identity);

  /// Serializes this VisionIngredientsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisionIngredientsDto&&const DeepCollectionEquality().equals(other.visible, visible)&&const DeepCollectionEquality().equals(other.assumed, assumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(visible),const DeepCollectionEquality().hash(assumed));

@override
String toString() {
  return 'VisionIngredientsDto(visible: $visible, assumed: $assumed)';
}


}

/// @nodoc
abstract mixin class $VisionIngredientsDtoCopyWith<$Res>  {
  factory $VisionIngredientsDtoCopyWith(VisionIngredientsDto value, $Res Function(VisionIngredientsDto) _then) = _$VisionIngredientsDtoCopyWithImpl;
@useResult
$Res call({
 List<String>? visible, List<String>? assumed
});




}
/// @nodoc
class _$VisionIngredientsDtoCopyWithImpl<$Res>
    implements $VisionIngredientsDtoCopyWith<$Res> {
  _$VisionIngredientsDtoCopyWithImpl(this._self, this._then);

  final VisionIngredientsDto _self;
  final $Res Function(VisionIngredientsDto) _then;

/// Create a copy of VisionIngredientsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visible = freezed,Object? assumed = freezed,}) {
  return _then(_self.copyWith(
visible: freezed == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as List<String>?,assumed: freezed == assumed ? _self.assumed : assumed // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [VisionIngredientsDto].
extension VisionIngredientsDtoPatterns on VisionIngredientsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionIngredientsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionIngredientsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionIngredientsDto value)  $default,){
final _that = this;
switch (_that) {
case _VisionIngredientsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionIngredientsDto value)?  $default,){
final _that = this;
switch (_that) {
case _VisionIngredientsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? visible,  List<String>? assumed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionIngredientsDto() when $default != null:
return $default(_that.visible,_that.assumed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? visible,  List<String>? assumed)  $default,) {final _that = this;
switch (_that) {
case _VisionIngredientsDto():
return $default(_that.visible,_that.assumed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? visible,  List<String>? assumed)?  $default,) {final _that = this;
switch (_that) {
case _VisionIngredientsDto() when $default != null:
return $default(_that.visible,_that.assumed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionIngredientsDto implements VisionIngredientsDto {
  const _VisionIngredientsDto({final  List<String>? visible, final  List<String>? assumed}): _visible = visible,_assumed = assumed;
  factory _VisionIngredientsDto.fromJson(Map<String, dynamic> json) => _$VisionIngredientsDtoFromJson(json);

 final  List<String>? _visible;
@override List<String>? get visible {
  final value = _visible;
  if (value == null) return null;
  if (_visible is EqualUnmodifiableListView) return _visible;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _assumed;
@override List<String>? get assumed {
  final value = _assumed;
  if (value == null) return null;
  if (_assumed is EqualUnmodifiableListView) return _assumed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VisionIngredientsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionIngredientsDtoCopyWith<_VisionIngredientsDto> get copyWith => __$VisionIngredientsDtoCopyWithImpl<_VisionIngredientsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionIngredientsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisionIngredientsDto&&const DeepCollectionEquality().equals(other._visible, _visible)&&const DeepCollectionEquality().equals(other._assumed, _assumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_visible),const DeepCollectionEquality().hash(_assumed));

@override
String toString() {
  return 'VisionIngredientsDto(visible: $visible, assumed: $assumed)';
}


}

/// @nodoc
abstract mixin class _$VisionIngredientsDtoCopyWith<$Res> implements $VisionIngredientsDtoCopyWith<$Res> {
  factory _$VisionIngredientsDtoCopyWith(_VisionIngredientsDto value, $Res Function(_VisionIngredientsDto) _then) = __$VisionIngredientsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String>? visible, List<String>? assumed
});




}
/// @nodoc
class __$VisionIngredientsDtoCopyWithImpl<$Res>
    implements _$VisionIngredientsDtoCopyWith<$Res> {
  __$VisionIngredientsDtoCopyWithImpl(this._self, this._then);

  final _VisionIngredientsDto _self;
  final $Res Function(_VisionIngredientsDto) _then;

/// Create a copy of VisionIngredientsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visible = freezed,Object? assumed = freezed,}) {
  return _then(_VisionIngredientsDto(
visible: freezed == visible ? _self._visible : visible // ignore: cast_nullable_to_non_nullable
as List<String>?,assumed: freezed == assumed ? _self._assumed : assumed // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$VisionBlockDto {

 VisionIngredientsDto? get ingredients;@JsonKey(name: 'estimated_total_nutrients') Map<String, dynamic>? get estimatedTotalNutrients; List<String>? get assumptions;
/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionBlockDtoCopyWith<VisionBlockDto> get copyWith => _$VisionBlockDtoCopyWithImpl<VisionBlockDto>(this as VisionBlockDto, _$identity);

  /// Serializes this VisionBlockDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisionBlockDto&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&const DeepCollectionEquality().equals(other.estimatedTotalNutrients, estimatedTotalNutrients)&&const DeepCollectionEquality().equals(other.assumptions, assumptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredients,const DeepCollectionEquality().hash(estimatedTotalNutrients),const DeepCollectionEquality().hash(assumptions));

@override
String toString() {
  return 'VisionBlockDto(ingredients: $ingredients, estimatedTotalNutrients: $estimatedTotalNutrients, assumptions: $assumptions)';
}


}

/// @nodoc
abstract mixin class $VisionBlockDtoCopyWith<$Res>  {
  factory $VisionBlockDtoCopyWith(VisionBlockDto value, $Res Function(VisionBlockDto) _then) = _$VisionBlockDtoCopyWithImpl;
@useResult
$Res call({
 VisionIngredientsDto? ingredients,@JsonKey(name: 'estimated_total_nutrients') Map<String, dynamic>? estimatedTotalNutrients, List<String>? assumptions
});


$VisionIngredientsDtoCopyWith<$Res>? get ingredients;

}
/// @nodoc
class _$VisionBlockDtoCopyWithImpl<$Res>
    implements $VisionBlockDtoCopyWith<$Res> {
  _$VisionBlockDtoCopyWithImpl(this._self, this._then);

  final VisionBlockDto _self;
  final $Res Function(VisionBlockDto) _then;

/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredients = freezed,Object? estimatedTotalNutrients = freezed,Object? assumptions = freezed,}) {
  return _then(_self.copyWith(
ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as VisionIngredientsDto?,estimatedTotalNutrients: freezed == estimatedTotalNutrients ? _self.estimatedTotalNutrients : estimatedTotalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,assumptions: freezed == assumptions ? _self.assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionIngredientsDtoCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $VisionIngredientsDtoCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisionBlockDto].
extension VisionBlockDtoPatterns on VisionBlockDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionBlockDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionBlockDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionBlockDto value)  $default,){
final _that = this;
switch (_that) {
case _VisionBlockDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionBlockDto value)?  $default,){
final _that = this;
switch (_that) {
case _VisionBlockDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VisionIngredientsDto? ingredients, @JsonKey(name: 'estimated_total_nutrients')  Map<String, dynamic>? estimatedTotalNutrients,  List<String>? assumptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionBlockDto() when $default != null:
return $default(_that.ingredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VisionIngredientsDto? ingredients, @JsonKey(name: 'estimated_total_nutrients')  Map<String, dynamic>? estimatedTotalNutrients,  List<String>? assumptions)  $default,) {final _that = this;
switch (_that) {
case _VisionBlockDto():
return $default(_that.ingredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VisionIngredientsDto? ingredients, @JsonKey(name: 'estimated_total_nutrients')  Map<String, dynamic>? estimatedTotalNutrients,  List<String>? assumptions)?  $default,) {final _that = this;
switch (_that) {
case _VisionBlockDto() when $default != null:
return $default(_that.ingredients,_that.estimatedTotalNutrients,_that.assumptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionBlockDto implements VisionBlockDto {
  const _VisionBlockDto({this.ingredients, @JsonKey(name: 'estimated_total_nutrients') final  Map<String, dynamic>? estimatedTotalNutrients, final  List<String>? assumptions}): _estimatedTotalNutrients = estimatedTotalNutrients,_assumptions = assumptions;
  factory _VisionBlockDto.fromJson(Map<String, dynamic> json) => _$VisionBlockDtoFromJson(json);

@override final  VisionIngredientsDto? ingredients;
 final  Map<String, dynamic>? _estimatedTotalNutrients;
@override@JsonKey(name: 'estimated_total_nutrients') Map<String, dynamic>? get estimatedTotalNutrients {
  final value = _estimatedTotalNutrients;
  if (value == null) return null;
  if (_estimatedTotalNutrients is EqualUnmodifiableMapView) return _estimatedTotalNutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _assumptions;
@override List<String>? get assumptions {
  final value = _assumptions;
  if (value == null) return null;
  if (_assumptions is EqualUnmodifiableListView) return _assumptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionBlockDtoCopyWith<_VisionBlockDto> get copyWith => __$VisionBlockDtoCopyWithImpl<_VisionBlockDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionBlockDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisionBlockDto&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&const DeepCollectionEquality().equals(other._estimatedTotalNutrients, _estimatedTotalNutrients)&&const DeepCollectionEquality().equals(other._assumptions, _assumptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredients,const DeepCollectionEquality().hash(_estimatedTotalNutrients),const DeepCollectionEquality().hash(_assumptions));

@override
String toString() {
  return 'VisionBlockDto(ingredients: $ingredients, estimatedTotalNutrients: $estimatedTotalNutrients, assumptions: $assumptions)';
}


}

/// @nodoc
abstract mixin class _$VisionBlockDtoCopyWith<$Res> implements $VisionBlockDtoCopyWith<$Res> {
  factory _$VisionBlockDtoCopyWith(_VisionBlockDto value, $Res Function(_VisionBlockDto) _then) = __$VisionBlockDtoCopyWithImpl;
@override @useResult
$Res call({
 VisionIngredientsDto? ingredients,@JsonKey(name: 'estimated_total_nutrients') Map<String, dynamic>? estimatedTotalNutrients, List<String>? assumptions
});


@override $VisionIngredientsDtoCopyWith<$Res>? get ingredients;

}
/// @nodoc
class __$VisionBlockDtoCopyWithImpl<$Res>
    implements _$VisionBlockDtoCopyWith<$Res> {
  __$VisionBlockDtoCopyWithImpl(this._self, this._then);

  final _VisionBlockDto _self;
  final $Res Function(_VisionBlockDto) _then;

/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredients = freezed,Object? estimatedTotalNutrients = freezed,Object? assumptions = freezed,}) {
  return _then(_VisionBlockDto(
ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as VisionIngredientsDto?,estimatedTotalNutrients: freezed == estimatedTotalNutrients ? _self._estimatedTotalNutrients : estimatedTotalNutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,assumptions: freezed == assumptions ? _self._assumptions : assumptions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of VisionBlockDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionIngredientsDtoCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $VisionIngredientsDtoCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}


/// @nodoc
mixin _$FinalBlockDto {

 String? get source; Map<String, dynamic>? get nutrients;
/// Create a copy of FinalBlockDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinalBlockDtoCopyWith<FinalBlockDto> get copyWith => _$FinalBlockDtoCopyWithImpl<FinalBlockDto>(this as FinalBlockDto, _$identity);

  /// Serializes this FinalBlockDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinalBlockDto&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.nutrients, nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,const DeepCollectionEquality().hash(nutrients));

@override
String toString() {
  return 'FinalBlockDto(source: $source, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class $FinalBlockDtoCopyWith<$Res>  {
  factory $FinalBlockDtoCopyWith(FinalBlockDto value, $Res Function(FinalBlockDto) _then) = _$FinalBlockDtoCopyWithImpl;
@useResult
$Res call({
 String? source, Map<String, dynamic>? nutrients
});




}
/// @nodoc
class _$FinalBlockDtoCopyWithImpl<$Res>
    implements $FinalBlockDtoCopyWith<$Res> {
  _$FinalBlockDtoCopyWithImpl(this._self, this._then);

  final FinalBlockDto _self;
  final $Res Function(FinalBlockDto) _then;

/// Create a copy of FinalBlockDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? nutrients = freezed,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinalBlockDto].
extension FinalBlockDtoPatterns on FinalBlockDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinalBlockDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinalBlockDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinalBlockDto value)  $default,){
final _that = this;
switch (_that) {
case _FinalBlockDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinalBlockDto value)?  $default,){
final _that = this;
switch (_that) {
case _FinalBlockDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? source,  Map<String, dynamic>? nutrients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinalBlockDto() when $default != null:
return $default(_that.source,_that.nutrients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? source,  Map<String, dynamic>? nutrients)  $default,) {final _that = this;
switch (_that) {
case _FinalBlockDto():
return $default(_that.source,_that.nutrients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? source,  Map<String, dynamic>? nutrients)?  $default,) {final _that = this;
switch (_that) {
case _FinalBlockDto() when $default != null:
return $default(_that.source,_that.nutrients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinalBlockDto implements FinalBlockDto {
  const _FinalBlockDto({this.source, final  Map<String, dynamic>? nutrients}): _nutrients = nutrients;
  factory _FinalBlockDto.fromJson(Map<String, dynamic> json) => _$FinalBlockDtoFromJson(json);

@override final  String? source;
 final  Map<String, dynamic>? _nutrients;
@override Map<String, dynamic>? get nutrients {
  final value = _nutrients;
  if (value == null) return null;
  if (_nutrients is EqualUnmodifiableMapView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of FinalBlockDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinalBlockDtoCopyWith<_FinalBlockDto> get copyWith => __$FinalBlockDtoCopyWithImpl<_FinalBlockDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinalBlockDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalBlockDto&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,const DeepCollectionEquality().hash(_nutrients));

@override
String toString() {
  return 'FinalBlockDto(source: $source, nutrients: $nutrients)';
}


}

/// @nodoc
abstract mixin class _$FinalBlockDtoCopyWith<$Res> implements $FinalBlockDtoCopyWith<$Res> {
  factory _$FinalBlockDtoCopyWith(_FinalBlockDto value, $Res Function(_FinalBlockDto) _then) = __$FinalBlockDtoCopyWithImpl;
@override @useResult
$Res call({
 String? source, Map<String, dynamic>? nutrients
});




}
/// @nodoc
class __$FinalBlockDtoCopyWithImpl<$Res>
    implements _$FinalBlockDtoCopyWith<$Res> {
  __$FinalBlockDtoCopyWithImpl(this._self, this._then);

  final _FinalBlockDto _self;
  final $Res Function(_FinalBlockDto) _then;

/// Create a copy of FinalBlockDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? nutrients = freezed,}) {
  return _then(_FinalBlockDto(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,nutrients: freezed == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
