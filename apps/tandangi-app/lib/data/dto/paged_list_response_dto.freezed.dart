// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PagedListResponseDto<T extends Object?> {

 List<T> get content; int get page; int get size; int get totalElements; int get totalPages; bool get first; bool get last;
/// Create a copy of PagedListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagedListResponseDtoCopyWith<T, PagedListResponseDto<T>> get copyWith => _$PagedListResponseDtoCopyWithImpl<T, PagedListResponseDto<T>>(this as PagedListResponseDto<T>, _$identity);

  /// Serializes this PagedListResponseDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PagedListResponseDto<T>&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),page,size,totalElements,totalPages,first,last);

@override
String toString() {
  return 'PagedListResponseDto<$T>(content: $content, page: $page, size: $size, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class $PagedListResponseDtoCopyWith<T extends Object?,$Res>  {
  factory $PagedListResponseDtoCopyWith(PagedListResponseDto<T> value, $Res Function(PagedListResponseDto<T>) _then) = _$PagedListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<T> content, int page, int size, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class _$PagedListResponseDtoCopyWithImpl<T extends Object?,$Res>
    implements $PagedListResponseDtoCopyWith<T, $Res> {
  _$PagedListResponseDtoCopyWithImpl(this._self, this._then);

  final PagedListResponseDto<T> _self;
  final $Res Function(PagedListResponseDto<T>) _then;

/// Create a copy of PagedListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? page = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<T>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PagedListResponseDto].
extension PagedListResponseDtoPatterns<T extends Object?> on PagedListResponseDto<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PagedListResponseDto<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PagedListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PagedListResponseDto<T> value)  $default,){
final _that = this;
switch (_that) {
case _PagedListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PagedListResponseDto<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PagedListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> content,  int page,  int size,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PagedListResponseDto() when $default != null:
return $default(_that.content,_that.page,_that.size,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> content,  int page,  int size,  int totalElements,  int totalPages,  bool first,  bool last)  $default,) {final _that = this;
switch (_that) {
case _PagedListResponseDto():
return $default(_that.content,_that.page,_that.size,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> content,  int page,  int size,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _PagedListResponseDto() when $default != null:
return $default(_that.content,_that.page,_that.size,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PagedListResponseDto<T extends Object?> implements PagedListResponseDto<T> {
  const _PagedListResponseDto({required final  List<T> content, required this.page, required this.size, required this.totalElements, required this.totalPages, required this.first, required this.last}): _content = content;
  factory _PagedListResponseDto.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PagedListResponseDtoFromJson(json,fromJsonT);

 final  List<T> _content;
@override List<T> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int page;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;
@override final  bool first;
@override final  bool last;

/// Create a copy of PagedListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagedListResponseDtoCopyWith<T, _PagedListResponseDto<T>> get copyWith => __$PagedListResponseDtoCopyWithImpl<T, _PagedListResponseDto<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PagedListResponseDtoToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PagedListResponseDto<T>&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),page,size,totalElements,totalPages,first,last);

@override
String toString() {
  return 'PagedListResponseDto<$T>(content: $content, page: $page, size: $size, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class _$PagedListResponseDtoCopyWith<T extends Object?,$Res> implements $PagedListResponseDtoCopyWith<T, $Res> {
  factory _$PagedListResponseDtoCopyWith(_PagedListResponseDto<T> value, $Res Function(_PagedListResponseDto<T>) _then) = __$PagedListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<T> content, int page, int size, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class __$PagedListResponseDtoCopyWithImpl<T extends Object?,$Res>
    implements _$PagedListResponseDtoCopyWith<T, $Res> {
  __$PagedListResponseDtoCopyWithImpl(this._self, this._then);

  final _PagedListResponseDto<T> _self;
  final $Res Function(_PagedListResponseDto<T>) _then;

/// Create a copy of PagedListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? page = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_PagedListResponseDto<T>(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<T>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
