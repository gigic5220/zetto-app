// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_nutrition_summaries_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyNutritionSummariesResponseDto {

@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime get startDate;@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime get endDate; List<DailyNutritionSummaryResponseDto> get summaries;
/// Create a copy of DailyNutritionSummariesResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyNutritionSummariesResponseDtoCopyWith<DailyNutritionSummariesResponseDto> get copyWith => _$DailyNutritionSummariesResponseDtoCopyWithImpl<DailyNutritionSummariesResponseDto>(this as DailyNutritionSummariesResponseDto, _$identity);

  /// Serializes this DailyNutritionSummariesResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyNutritionSummariesResponseDto&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.summaries, summaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(summaries));

@override
String toString() {
  return 'DailyNutritionSummariesResponseDto(startDate: $startDate, endDate: $endDate, summaries: $summaries)';
}


}

/// @nodoc
abstract mixin class $DailyNutritionSummariesResponseDtoCopyWith<$Res>  {
  factory $DailyNutritionSummariesResponseDtoCopyWith(DailyNutritionSummariesResponseDto value, $Res Function(DailyNutritionSummariesResponseDto) _then) = _$DailyNutritionSummariesResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime startDate,@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime endDate, List<DailyNutritionSummaryResponseDto> summaries
});




}
/// @nodoc
class _$DailyNutritionSummariesResponseDtoCopyWithImpl<$Res>
    implements $DailyNutritionSummariesResponseDtoCopyWith<$Res> {
  _$DailyNutritionSummariesResponseDtoCopyWithImpl(this._self, this._then);

  final DailyNutritionSummariesResponseDto _self;
  final $Res Function(DailyNutritionSummariesResponseDto) _then;

/// Create a copy of DailyNutritionSummariesResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = null,Object? endDate = null,Object? summaries = null,}) {
  return _then(_self.copyWith(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,summaries: null == summaries ? _self.summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<DailyNutritionSummaryResponseDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyNutritionSummariesResponseDto].
extension DailyNutritionSummariesResponseDtoPatterns on DailyNutritionSummariesResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyNutritionSummariesResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyNutritionSummariesResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyNutritionSummariesResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime startDate, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime endDate,  List<DailyNutritionSummaryResponseDto> summaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto() when $default != null:
return $default(_that.startDate,_that.endDate,_that.summaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime startDate, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime endDate,  List<DailyNutritionSummaryResponseDto> summaries)  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto():
return $default(_that.startDate,_that.endDate,_that.summaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime startDate, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime endDate,  List<DailyNutritionSummaryResponseDto> summaries)?  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesResponseDto() when $default != null:
return $default(_that.startDate,_that.endDate,_that.summaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyNutritionSummariesResponseDto implements DailyNutritionSummariesResponseDto {
  const _DailyNutritionSummariesResponseDto({@JsonKey(fromJson: dailySummaryLocalDateFromJson) required this.startDate, @JsonKey(fromJson: dailySummaryLocalDateFromJson) required this.endDate, required final  List<DailyNutritionSummaryResponseDto> summaries}): _summaries = summaries;
  factory _DailyNutritionSummariesResponseDto.fromJson(Map<String, dynamic> json) => _$DailyNutritionSummariesResponseDtoFromJson(json);

@override@JsonKey(fromJson: dailySummaryLocalDateFromJson) final  DateTime startDate;
@override@JsonKey(fromJson: dailySummaryLocalDateFromJson) final  DateTime endDate;
 final  List<DailyNutritionSummaryResponseDto> _summaries;
@override List<DailyNutritionSummaryResponseDto> get summaries {
  if (_summaries is EqualUnmodifiableListView) return _summaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_summaries);
}


/// Create a copy of DailyNutritionSummariesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyNutritionSummariesResponseDtoCopyWith<_DailyNutritionSummariesResponseDto> get copyWith => __$DailyNutritionSummariesResponseDtoCopyWithImpl<_DailyNutritionSummariesResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyNutritionSummariesResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyNutritionSummariesResponseDto&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._summaries, _summaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(_summaries));

@override
String toString() {
  return 'DailyNutritionSummariesResponseDto(startDate: $startDate, endDate: $endDate, summaries: $summaries)';
}


}

/// @nodoc
abstract mixin class _$DailyNutritionSummariesResponseDtoCopyWith<$Res> implements $DailyNutritionSummariesResponseDtoCopyWith<$Res> {
  factory _$DailyNutritionSummariesResponseDtoCopyWith(_DailyNutritionSummariesResponseDto value, $Res Function(_DailyNutritionSummariesResponseDto) _then) = __$DailyNutritionSummariesResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime startDate,@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime endDate, List<DailyNutritionSummaryResponseDto> summaries
});




}
/// @nodoc
class __$DailyNutritionSummariesResponseDtoCopyWithImpl<$Res>
    implements _$DailyNutritionSummariesResponseDtoCopyWith<$Res> {
  __$DailyNutritionSummariesResponseDtoCopyWithImpl(this._self, this._then);

  final _DailyNutritionSummariesResponseDto _self;
  final $Res Function(_DailyNutritionSummariesResponseDto) _then;

/// Create a copy of DailyNutritionSummariesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,Object? summaries = null,}) {
  return _then(_DailyNutritionSummariesResponseDto(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,summaries: null == summaries ? _self._summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<DailyNutritionSummaryResponseDto>,
  ));
}


}


/// @nodoc
mixin _$DailyNutritionSummaryResponseDto {

 int get id;@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime get date; String get day; int get analysisCount; String? get grade; int? get baseScore; int? get modifierScore; int? get totalScore; double get totalKcal; double get carbohydrateIntakeG; double get proteinIntakeG; double get fatIntakeG; double get sugarIntakeG; double get sodiumIntakeMg; String get summaryTargetBasis; int get carbohydrateTargetG; int get proteinTargetG; int get fatTargetG; int get sugarLimitG; int get sodiumAdequateMg; int get sodiumRiskReductionMg; String get standardSource; int get eerKcal; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of DailyNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyNutritionSummaryResponseDtoCopyWith<DailyNutritionSummaryResponseDto> get copyWith => _$DailyNutritionSummaryResponseDtoCopyWithImpl<DailyNutritionSummaryResponseDto>(this as DailyNutritionSummaryResponseDto, _$identity);

  /// Serializes this DailyNutritionSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyNutritionSummaryResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.carbohydrateIntakeG, carbohydrateIntakeG) || other.carbohydrateIntakeG == carbohydrateIntakeG)&&(identical(other.proteinIntakeG, proteinIntakeG) || other.proteinIntakeG == proteinIntakeG)&&(identical(other.fatIntakeG, fatIntakeG) || other.fatIntakeG == fatIntakeG)&&(identical(other.sugarIntakeG, sugarIntakeG) || other.sugarIntakeG == sugarIntakeG)&&(identical(other.sodiumIntakeMg, sodiumIntakeMg) || other.sodiumIntakeMg == sodiumIntakeMg)&&(identical(other.summaryTargetBasis, summaryTargetBasis) || other.summaryTargetBasis == summaryTargetBasis)&&(identical(other.carbohydrateTargetG, carbohydrateTargetG) || other.carbohydrateTargetG == carbohydrateTargetG)&&(identical(other.proteinTargetG, proteinTargetG) || other.proteinTargetG == proteinTargetG)&&(identical(other.fatTargetG, fatTargetG) || other.fatTargetG == fatTargetG)&&(identical(other.sugarLimitG, sugarLimitG) || other.sugarLimitG == sugarLimitG)&&(identical(other.sodiumAdequateMg, sodiumAdequateMg) || other.sodiumAdequateMg == sodiumAdequateMg)&&(identical(other.sodiumRiskReductionMg, sodiumRiskReductionMg) || other.sodiumRiskReductionMg == sodiumRiskReductionMg)&&(identical(other.standardSource, standardSource) || other.standardSource == standardSource)&&(identical(other.eerKcal, eerKcal) || other.eerKcal == eerKcal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,day,analysisCount,grade,baseScore,modifierScore,totalScore,totalKcal,carbohydrateIntakeG,proteinIntakeG,fatIntakeG,sugarIntakeG,sodiumIntakeMg,summaryTargetBasis,carbohydrateTargetG,proteinTargetG,fatTargetG,sugarLimitG,sodiumAdequateMg,sodiumRiskReductionMg,standardSource,eerKcal,createdAt,updatedAt]);

@override
String toString() {
  return 'DailyNutritionSummaryResponseDto(id: $id, date: $date, day: $day, analysisCount: $analysisCount, grade: $grade, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, totalKcal: $totalKcal, carbohydrateIntakeG: $carbohydrateIntakeG, proteinIntakeG: $proteinIntakeG, fatIntakeG: $fatIntakeG, sugarIntakeG: $sugarIntakeG, sodiumIntakeMg: $sodiumIntakeMg, summaryTargetBasis: $summaryTargetBasis, carbohydrateTargetG: $carbohydrateTargetG, proteinTargetG: $proteinTargetG, fatTargetG: $fatTargetG, sugarLimitG: $sugarLimitG, sodiumAdequateMg: $sodiumAdequateMg, sodiumRiskReductionMg: $sodiumRiskReductionMg, standardSource: $standardSource, eerKcal: $eerKcal, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DailyNutritionSummaryResponseDtoCopyWith<$Res>  {
  factory $DailyNutritionSummaryResponseDtoCopyWith(DailyNutritionSummaryResponseDto value, $Res Function(DailyNutritionSummaryResponseDto) _then) = _$DailyNutritionSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime date, String day, int analysisCount, String? grade, int? baseScore, int? modifierScore, int? totalScore, double totalKcal, double carbohydrateIntakeG, double proteinIntakeG, double fatIntakeG, double sugarIntakeG, double sodiumIntakeMg, String summaryTargetBasis, int carbohydrateTargetG, int proteinTargetG, int fatTargetG, int sugarLimitG, int sodiumAdequateMg, int sodiumRiskReductionMg, String standardSource, int eerKcal, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$DailyNutritionSummaryResponseDtoCopyWithImpl<$Res>
    implements $DailyNutritionSummaryResponseDtoCopyWith<$Res> {
  _$DailyNutritionSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final DailyNutritionSummaryResponseDto _self;
  final $Res Function(DailyNutritionSummaryResponseDto) _then;

/// Create a copy of DailyNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? day = null,Object? analysisCount = null,Object? grade = freezed,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? totalKcal = null,Object? carbohydrateIntakeG = null,Object? proteinIntakeG = null,Object? fatIntakeG = null,Object? sugarIntakeG = null,Object? sodiumIntakeMg = null,Object? summaryTargetBasis = null,Object? carbohydrateTargetG = null,Object? proteinTargetG = null,Object? fatTargetG = null,Object? sugarLimitG = null,Object? sodiumAdequateMg = null,Object? sodiumRiskReductionMg = null,Object? standardSource = null,Object? eerKcal = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrateIntakeG: null == carbohydrateIntakeG ? _self.carbohydrateIntakeG : carbohydrateIntakeG // ignore: cast_nullable_to_non_nullable
as double,proteinIntakeG: null == proteinIntakeG ? _self.proteinIntakeG : proteinIntakeG // ignore: cast_nullable_to_non_nullable
as double,fatIntakeG: null == fatIntakeG ? _self.fatIntakeG : fatIntakeG // ignore: cast_nullable_to_non_nullable
as double,sugarIntakeG: null == sugarIntakeG ? _self.sugarIntakeG : sugarIntakeG // ignore: cast_nullable_to_non_nullable
as double,sodiumIntakeMg: null == sodiumIntakeMg ? _self.sodiumIntakeMg : sodiumIntakeMg // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasis: null == summaryTargetBasis ? _self.summaryTargetBasis : summaryTargetBasis // ignore: cast_nullable_to_non_nullable
as String,carbohydrateTargetG: null == carbohydrateTargetG ? _self.carbohydrateTargetG : carbohydrateTargetG // ignore: cast_nullable_to_non_nullable
as int,proteinTargetG: null == proteinTargetG ? _self.proteinTargetG : proteinTargetG // ignore: cast_nullable_to_non_nullable
as int,fatTargetG: null == fatTargetG ? _self.fatTargetG : fatTargetG // ignore: cast_nullable_to_non_nullable
as int,sugarLimitG: null == sugarLimitG ? _self.sugarLimitG : sugarLimitG // ignore: cast_nullable_to_non_nullable
as int,sodiumAdequateMg: null == sodiumAdequateMg ? _self.sodiumAdequateMg : sodiumAdequateMg // ignore: cast_nullable_to_non_nullable
as int,sodiumRiskReductionMg: null == sodiumRiskReductionMg ? _self.sodiumRiskReductionMg : sodiumRiskReductionMg // ignore: cast_nullable_to_non_nullable
as int,standardSource: null == standardSource ? _self.standardSource : standardSource // ignore: cast_nullable_to_non_nullable
as String,eerKcal: null == eerKcal ? _self.eerKcal : eerKcal // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyNutritionSummaryResponseDto].
extension DailyNutritionSummaryResponseDtoPatterns on DailyNutritionSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyNutritionSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyNutritionSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyNutritionSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime date,  String day,  int analysisCount,  String? grade,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  String summaryTargetBasis,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.grade,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasis,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime date,  String day,  int analysisCount,  String? grade,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  String summaryTargetBasis,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto():
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.grade,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasis,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(fromJson: dailySummaryLocalDateFromJson)  DateTime date,  String day,  int analysisCount,  String? grade,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  String summaryTargetBasis,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryResponseDto() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.grade,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasis,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyNutritionSummaryResponseDto implements DailyNutritionSummaryResponseDto {
  const _DailyNutritionSummaryResponseDto({required this.id, @JsonKey(fromJson: dailySummaryLocalDateFromJson) required this.date, required this.day, required this.analysisCount, this.grade, this.baseScore, this.modifierScore, this.totalScore, required this.totalKcal, required this.carbohydrateIntakeG, required this.proteinIntakeG, required this.fatIntakeG, required this.sugarIntakeG, required this.sodiumIntakeMg, required this.summaryTargetBasis, required this.carbohydrateTargetG, required this.proteinTargetG, required this.fatTargetG, required this.sugarLimitG, required this.sodiumAdequateMg, required this.sodiumRiskReductionMg, required this.standardSource, required this.eerKcal, required this.createdAt, required this.updatedAt});
  factory _DailyNutritionSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$DailyNutritionSummaryResponseDtoFromJson(json);

@override final  int id;
@override@JsonKey(fromJson: dailySummaryLocalDateFromJson) final  DateTime date;
@override final  String day;
@override final  int analysisCount;
@override final  String? grade;
@override final  int? baseScore;
@override final  int? modifierScore;
@override final  int? totalScore;
@override final  double totalKcal;
@override final  double carbohydrateIntakeG;
@override final  double proteinIntakeG;
@override final  double fatIntakeG;
@override final  double sugarIntakeG;
@override final  double sodiumIntakeMg;
@override final  String summaryTargetBasis;
@override final  int carbohydrateTargetG;
@override final  int proteinTargetG;
@override final  int fatTargetG;
@override final  int sugarLimitG;
@override final  int sodiumAdequateMg;
@override final  int sodiumRiskReductionMg;
@override final  String standardSource;
@override final  int eerKcal;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of DailyNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyNutritionSummaryResponseDtoCopyWith<_DailyNutritionSummaryResponseDto> get copyWith => __$DailyNutritionSummaryResponseDtoCopyWithImpl<_DailyNutritionSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyNutritionSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyNutritionSummaryResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.carbohydrateIntakeG, carbohydrateIntakeG) || other.carbohydrateIntakeG == carbohydrateIntakeG)&&(identical(other.proteinIntakeG, proteinIntakeG) || other.proteinIntakeG == proteinIntakeG)&&(identical(other.fatIntakeG, fatIntakeG) || other.fatIntakeG == fatIntakeG)&&(identical(other.sugarIntakeG, sugarIntakeG) || other.sugarIntakeG == sugarIntakeG)&&(identical(other.sodiumIntakeMg, sodiumIntakeMg) || other.sodiumIntakeMg == sodiumIntakeMg)&&(identical(other.summaryTargetBasis, summaryTargetBasis) || other.summaryTargetBasis == summaryTargetBasis)&&(identical(other.carbohydrateTargetG, carbohydrateTargetG) || other.carbohydrateTargetG == carbohydrateTargetG)&&(identical(other.proteinTargetG, proteinTargetG) || other.proteinTargetG == proteinTargetG)&&(identical(other.fatTargetG, fatTargetG) || other.fatTargetG == fatTargetG)&&(identical(other.sugarLimitG, sugarLimitG) || other.sugarLimitG == sugarLimitG)&&(identical(other.sodiumAdequateMg, sodiumAdequateMg) || other.sodiumAdequateMg == sodiumAdequateMg)&&(identical(other.sodiumRiskReductionMg, sodiumRiskReductionMg) || other.sodiumRiskReductionMg == sodiumRiskReductionMg)&&(identical(other.standardSource, standardSource) || other.standardSource == standardSource)&&(identical(other.eerKcal, eerKcal) || other.eerKcal == eerKcal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,day,analysisCount,grade,baseScore,modifierScore,totalScore,totalKcal,carbohydrateIntakeG,proteinIntakeG,fatIntakeG,sugarIntakeG,sodiumIntakeMg,summaryTargetBasis,carbohydrateTargetG,proteinTargetG,fatTargetG,sugarLimitG,sodiumAdequateMg,sodiumRiskReductionMg,standardSource,eerKcal,createdAt,updatedAt]);

@override
String toString() {
  return 'DailyNutritionSummaryResponseDto(id: $id, date: $date, day: $day, analysisCount: $analysisCount, grade: $grade, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, totalKcal: $totalKcal, carbohydrateIntakeG: $carbohydrateIntakeG, proteinIntakeG: $proteinIntakeG, fatIntakeG: $fatIntakeG, sugarIntakeG: $sugarIntakeG, sodiumIntakeMg: $sodiumIntakeMg, summaryTargetBasis: $summaryTargetBasis, carbohydrateTargetG: $carbohydrateTargetG, proteinTargetG: $proteinTargetG, fatTargetG: $fatTargetG, sugarLimitG: $sugarLimitG, sodiumAdequateMg: $sodiumAdequateMg, sodiumRiskReductionMg: $sodiumRiskReductionMg, standardSource: $standardSource, eerKcal: $eerKcal, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyNutritionSummaryResponseDtoCopyWith<$Res> implements $DailyNutritionSummaryResponseDtoCopyWith<$Res> {
  factory _$DailyNutritionSummaryResponseDtoCopyWith(_DailyNutritionSummaryResponseDto value, $Res Function(_DailyNutritionSummaryResponseDto) _then) = __$DailyNutritionSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(fromJson: dailySummaryLocalDateFromJson) DateTime date, String day, int analysisCount, String? grade, int? baseScore, int? modifierScore, int? totalScore, double totalKcal, double carbohydrateIntakeG, double proteinIntakeG, double fatIntakeG, double sugarIntakeG, double sodiumIntakeMg, String summaryTargetBasis, int carbohydrateTargetG, int proteinTargetG, int fatTargetG, int sugarLimitG, int sodiumAdequateMg, int sodiumRiskReductionMg, String standardSource, int eerKcal, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$DailyNutritionSummaryResponseDtoCopyWithImpl<$Res>
    implements _$DailyNutritionSummaryResponseDtoCopyWith<$Res> {
  __$DailyNutritionSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _DailyNutritionSummaryResponseDto _self;
  final $Res Function(_DailyNutritionSummaryResponseDto) _then;

/// Create a copy of DailyNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? day = null,Object? analysisCount = null,Object? grade = freezed,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? totalKcal = null,Object? carbohydrateIntakeG = null,Object? proteinIntakeG = null,Object? fatIntakeG = null,Object? sugarIntakeG = null,Object? sodiumIntakeMg = null,Object? summaryTargetBasis = null,Object? carbohydrateTargetG = null,Object? proteinTargetG = null,Object? fatTargetG = null,Object? sugarLimitG = null,Object? sodiumAdequateMg = null,Object? sodiumRiskReductionMg = null,Object? standardSource = null,Object? eerKcal = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DailyNutritionSummaryResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrateIntakeG: null == carbohydrateIntakeG ? _self.carbohydrateIntakeG : carbohydrateIntakeG // ignore: cast_nullable_to_non_nullable
as double,proteinIntakeG: null == proteinIntakeG ? _self.proteinIntakeG : proteinIntakeG // ignore: cast_nullable_to_non_nullable
as double,fatIntakeG: null == fatIntakeG ? _self.fatIntakeG : fatIntakeG // ignore: cast_nullable_to_non_nullable
as double,sugarIntakeG: null == sugarIntakeG ? _self.sugarIntakeG : sugarIntakeG // ignore: cast_nullable_to_non_nullable
as double,sodiumIntakeMg: null == sodiumIntakeMg ? _self.sodiumIntakeMg : sodiumIntakeMg // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasis: null == summaryTargetBasis ? _self.summaryTargetBasis : summaryTargetBasis // ignore: cast_nullable_to_non_nullable
as String,carbohydrateTargetG: null == carbohydrateTargetG ? _self.carbohydrateTargetG : carbohydrateTargetG // ignore: cast_nullable_to_non_nullable
as int,proteinTargetG: null == proteinTargetG ? _self.proteinTargetG : proteinTargetG // ignore: cast_nullable_to_non_nullable
as int,fatTargetG: null == fatTargetG ? _self.fatTargetG : fatTargetG // ignore: cast_nullable_to_non_nullable
as int,sugarLimitG: null == sugarLimitG ? _self.sugarLimitG : sugarLimitG // ignore: cast_nullable_to_non_nullable
as int,sodiumAdequateMg: null == sodiumAdequateMg ? _self.sodiumAdequateMg : sodiumAdequateMg // ignore: cast_nullable_to_non_nullable
as int,sodiumRiskReductionMg: null == sodiumRiskReductionMg ? _self.sodiumRiskReductionMg : sodiumRiskReductionMg // ignore: cast_nullable_to_non_nullable
as int,standardSource: null == standardSource ? _self.standardSource : standardSource // ignore: cast_nullable_to_non_nullable
as String,eerKcal: null == eerKcal ? _self.eerKcal : eerKcal // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
