// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductResponseDto {

 int get id; String get name; String get storeId; double get price; double get discountRate; double get originPrice; bool get active; String get createdAt; String get updatedAt;
/// Create a copy of ProductResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseDtoCopyWith<ProductResponseDto> get copyWith => _$ProductResponseDtoCopyWithImpl<ProductResponseDto>(this as ProductResponseDto, _$identity);

  /// Serializes this ProductResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.originPrice, originPrice) || other.originPrice == originPrice)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,storeId,price,discountRate,originPrice,active,createdAt,updatedAt);

@override
String toString() {
  return 'ProductResponseDto(id: $id, name: $name, storeId: $storeId, price: $price, discountRate: $discountRate, originPrice: $originPrice, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductResponseDtoCopyWith<$Res>  {
  factory $ProductResponseDtoCopyWith(ProductResponseDto value, $Res Function(ProductResponseDto) _then) = _$ProductResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String storeId, double price, double discountRate, double originPrice, bool active, String createdAt, String updatedAt
});




}
/// @nodoc
class _$ProductResponseDtoCopyWithImpl<$Res>
    implements $ProductResponseDtoCopyWith<$Res> {
  _$ProductResponseDtoCopyWithImpl(this._self, this._then);

  final ProductResponseDto _self;
  final $Res Function(ProductResponseDto) _then;

/// Create a copy of ProductResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? storeId = null,Object? price = null,Object? discountRate = null,Object? originPrice = null,Object? active = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountRate: null == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as double,originPrice: null == originPrice ? _self.originPrice : originPrice // ignore: cast_nullable_to_non_nullable
as double,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductResponseDto].
extension ProductResponseDtoPatterns on ProductResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String storeId,  double price,  double discountRate,  double originPrice,  bool active,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductResponseDto() when $default != null:
return $default(_that.id,_that.name,_that.storeId,_that.price,_that.discountRate,_that.originPrice,_that.active,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String storeId,  double price,  double discountRate,  double originPrice,  bool active,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductResponseDto():
return $default(_that.id,_that.name,_that.storeId,_that.price,_that.discountRate,_that.originPrice,_that.active,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String storeId,  double price,  double discountRate,  double originPrice,  bool active,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductResponseDto() when $default != null:
return $default(_that.id,_that.name,_that.storeId,_that.price,_that.discountRate,_that.originPrice,_that.active,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductResponseDto implements ProductResponseDto {
  const _ProductResponseDto({required this.id, required this.name, required this.storeId, required this.price, required this.discountRate, required this.originPrice, required this.active, required this.createdAt, required this.updatedAt});
  factory _ProductResponseDto.fromJson(Map<String, dynamic> json) => _$ProductResponseDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String storeId;
@override final  double price;
@override final  double discountRate;
@override final  double originPrice;
@override final  bool active;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ProductResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductResponseDtoCopyWith<_ProductResponseDto> get copyWith => __$ProductResponseDtoCopyWithImpl<_ProductResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.originPrice, originPrice) || other.originPrice == originPrice)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,storeId,price,discountRate,originPrice,active,createdAt,updatedAt);

@override
String toString() {
  return 'ProductResponseDto(id: $id, name: $name, storeId: $storeId, price: $price, discountRate: $discountRate, originPrice: $originPrice, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseDtoCopyWith<$Res> implements $ProductResponseDtoCopyWith<$Res> {
  factory _$ProductResponseDtoCopyWith(_ProductResponseDto value, $Res Function(_ProductResponseDto) _then) = __$ProductResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String storeId, double price, double discountRate, double originPrice, bool active, String createdAt, String updatedAt
});




}
/// @nodoc
class __$ProductResponseDtoCopyWithImpl<$Res>
    implements _$ProductResponseDtoCopyWith<$Res> {
  __$ProductResponseDtoCopyWithImpl(this._self, this._then);

  final _ProductResponseDto _self;
  final $Res Function(_ProductResponseDto) _then;

/// Create a copy of ProductResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? storeId = null,Object? price = null,Object? discountRate = null,Object? originPrice = null,Object? active = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ProductResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountRate: null == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as double,originPrice: null == originPrice ? _self.originPrice : originPrice // ignore: cast_nullable_to_non_nullable
as double,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
