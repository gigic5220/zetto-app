// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PagedListEntity<T> {

 List<T> get content; int get totalElements; int get totalPages; int get page; int get size; bool get last;
/// Create a copy of PagedListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagedListEntityCopyWith<T, PagedListEntity<T>> get copyWith => _$PagedListEntityCopyWithImpl<T, PagedListEntity<T>>(this as PagedListEntity<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PagedListEntity<T>&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.last, last) || other.last == last));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),totalElements,totalPages,page,size,last);

@override
String toString() {
  return 'PagedListEntity<$T>(content: $content, totalElements: $totalElements, totalPages: $totalPages, page: $page, size: $size, last: $last)';
}


}

/// @nodoc
abstract mixin class $PagedListEntityCopyWith<T,$Res>  {
  factory $PagedListEntityCopyWith(PagedListEntity<T> value, $Res Function(PagedListEntity<T>) _then) = _$PagedListEntityCopyWithImpl;
@useResult
$Res call({
 List<T> content, int totalElements, int totalPages, int page, int size, bool last
});




}
/// @nodoc
class _$PagedListEntityCopyWithImpl<T,$Res>
    implements $PagedListEntityCopyWith<T, $Res> {
  _$PagedListEntityCopyWithImpl(this._self, this._then);

  final PagedListEntity<T> _self;
  final $Res Function(PagedListEntity<T>) _then;

/// Create a copy of PagedListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? totalElements = null,Object? totalPages = null,Object? page = null,Object? size = null,Object? last = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<T>,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PagedListEntity].
extension PagedListEntityPatterns<T> on PagedListEntity<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PagedListEntity<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PagedListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PagedListEntity<T> value)  $default,){
final _that = this;
switch (_that) {
case _PagedListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PagedListEntity<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PagedListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> content,  int totalElements,  int totalPages,  int page,  int size,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PagedListEntity() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.page,_that.size,_that.last);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> content,  int totalElements,  int totalPages,  int page,  int size,  bool last)  $default,) {final _that = this;
switch (_that) {
case _PagedListEntity():
return $default(_that.content,_that.totalElements,_that.totalPages,_that.page,_that.size,_that.last);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> content,  int totalElements,  int totalPages,  int page,  int size,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _PagedListEntity() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.page,_that.size,_that.last);case _:
  return null;

}
}

}

/// @nodoc


class _PagedListEntity<T> implements PagedListEntity<T> {
  const _PagedListEntity({required final  List<T> content, required this.totalElements, required this.totalPages, required this.page, required this.size, required this.last}): _content = content;
  

 final  List<T> _content;
@override List<T> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int totalElements;
@override final  int totalPages;
@override final  int page;
@override final  int size;
@override final  bool last;

/// Create a copy of PagedListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagedListEntityCopyWith<T, _PagedListEntity<T>> get copyWith => __$PagedListEntityCopyWithImpl<T, _PagedListEntity<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PagedListEntity<T>&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.last, last) || other.last == last));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),totalElements,totalPages,page,size,last);

@override
String toString() {
  return 'PagedListEntity<$T>(content: $content, totalElements: $totalElements, totalPages: $totalPages, page: $page, size: $size, last: $last)';
}


}

/// @nodoc
abstract mixin class _$PagedListEntityCopyWith<T,$Res> implements $PagedListEntityCopyWith<T, $Res> {
  factory _$PagedListEntityCopyWith(_PagedListEntity<T> value, $Res Function(_PagedListEntity<T>) _then) = __$PagedListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<T> content, int totalElements, int totalPages, int page, int size, bool last
});




}
/// @nodoc
class __$PagedListEntityCopyWithImpl<T,$Res>
    implements _$PagedListEntityCopyWith<T, $Res> {
  __$PagedListEntityCopyWithImpl(this._self, this._then);

  final _PagedListEntity<T> _self;
  final $Res Function(_PagedListEntity<T>) _then;

/// Create a copy of PagedListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? totalElements = null,Object? totalPages = null,Object? page = null,Object? size = null,Object? last = null,}) {
  return _then(_PagedListEntity<T>(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<T>,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
