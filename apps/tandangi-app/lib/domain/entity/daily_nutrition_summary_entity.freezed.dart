// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_nutrition_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyNutritionSummariesEntity {

 DateTime get startDate; DateTime get endDate; List<DailyNutritionSummaryEntity> get summaries;
/// Create a copy of DailyNutritionSummariesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyNutritionSummariesEntityCopyWith<DailyNutritionSummariesEntity> get copyWith => _$DailyNutritionSummariesEntityCopyWithImpl<DailyNutritionSummariesEntity>(this as DailyNutritionSummariesEntity, _$identity);

  /// Serializes this DailyNutritionSummariesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyNutritionSummariesEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.summaries, summaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(summaries));

@override
String toString() {
  return 'DailyNutritionSummariesEntity(startDate: $startDate, endDate: $endDate, summaries: $summaries)';
}


}

/// @nodoc
abstract mixin class $DailyNutritionSummariesEntityCopyWith<$Res>  {
  factory $DailyNutritionSummariesEntityCopyWith(DailyNutritionSummariesEntity value, $Res Function(DailyNutritionSummariesEntity) _then) = _$DailyNutritionSummariesEntityCopyWithImpl;
@useResult
$Res call({
 DateTime startDate, DateTime endDate, List<DailyNutritionSummaryEntity> summaries
});




}
/// @nodoc
class _$DailyNutritionSummariesEntityCopyWithImpl<$Res>
    implements $DailyNutritionSummariesEntityCopyWith<$Res> {
  _$DailyNutritionSummariesEntityCopyWithImpl(this._self, this._then);

  final DailyNutritionSummariesEntity _self;
  final $Res Function(DailyNutritionSummariesEntity) _then;

/// Create a copy of DailyNutritionSummariesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = null,Object? endDate = null,Object? summaries = null,}) {
  return _then(_self.copyWith(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,summaries: null == summaries ? _self.summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<DailyNutritionSummaryEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyNutritionSummariesEntity].
extension DailyNutritionSummariesEntityPatterns on DailyNutritionSummariesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyNutritionSummariesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyNutritionSummariesEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyNutritionSummariesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime startDate,  DateTime endDate,  List<DailyNutritionSummaryEntity> summaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime startDate,  DateTime endDate,  List<DailyNutritionSummaryEntity> summaries)  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime startDate,  DateTime endDate,  List<DailyNutritionSummaryEntity> summaries)?  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummariesEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.summaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyNutritionSummariesEntity implements DailyNutritionSummariesEntity {
  const _DailyNutritionSummariesEntity({required this.startDate, required this.endDate, required final  List<DailyNutritionSummaryEntity> summaries}): _summaries = summaries;
  factory _DailyNutritionSummariesEntity.fromJson(Map<String, dynamic> json) => _$DailyNutritionSummariesEntityFromJson(json);

@override final  DateTime startDate;
@override final  DateTime endDate;
 final  List<DailyNutritionSummaryEntity> _summaries;
@override List<DailyNutritionSummaryEntity> get summaries {
  if (_summaries is EqualUnmodifiableListView) return _summaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_summaries);
}


/// Create a copy of DailyNutritionSummariesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyNutritionSummariesEntityCopyWith<_DailyNutritionSummariesEntity> get copyWith => __$DailyNutritionSummariesEntityCopyWithImpl<_DailyNutritionSummariesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyNutritionSummariesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyNutritionSummariesEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._summaries, _summaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(_summaries));

@override
String toString() {
  return 'DailyNutritionSummariesEntity(startDate: $startDate, endDate: $endDate, summaries: $summaries)';
}


}

/// @nodoc
abstract mixin class _$DailyNutritionSummariesEntityCopyWith<$Res> implements $DailyNutritionSummariesEntityCopyWith<$Res> {
  factory _$DailyNutritionSummariesEntityCopyWith(_DailyNutritionSummariesEntity value, $Res Function(_DailyNutritionSummariesEntity) _then) = __$DailyNutritionSummariesEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime startDate, DateTime endDate, List<DailyNutritionSummaryEntity> summaries
});




}
/// @nodoc
class __$DailyNutritionSummariesEntityCopyWithImpl<$Res>
    implements _$DailyNutritionSummariesEntityCopyWith<$Res> {
  __$DailyNutritionSummariesEntityCopyWithImpl(this._self, this._then);

  final _DailyNutritionSummariesEntity _self;
  final $Res Function(_DailyNutritionSummariesEntity) _then;

/// Create a copy of DailyNutritionSummariesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,Object? summaries = null,}) {
  return _then(_DailyNutritionSummariesEntity(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,summaries: null == summaries ? _self._summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<DailyNutritionSummaryEntity>,
  ));
}


}


/// @nodoc
mixin _$DailyNutritionSummaryEntity {

 int get id; DateTime get date; String get day; int get analysisCount; NutritionGradeEnum? get gradeEnum; int? get baseScore; int? get modifierScore; int? get totalScore; double get totalKcal; double get carbohydrateIntakeG; double get proteinIntakeG; double get fatIntakeG; double get sugarIntakeG; double get sodiumIntakeMg; NutritionSummaryTargetBasisEnum get summaryTargetBasisEnum; int get carbohydrateTargetG; int get proteinTargetG; int get fatTargetG; int get sugarLimitG; int get sodiumAdequateMg; int get sodiumRiskReductionMg; String get standardSource; int get eerKcal; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of DailyNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyNutritionSummaryEntityCopyWith<DailyNutritionSummaryEntity> get copyWith => _$DailyNutritionSummaryEntityCopyWithImpl<DailyNutritionSummaryEntity>(this as DailyNutritionSummaryEntity, _$identity);

  /// Serializes this DailyNutritionSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyNutritionSummaryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.gradeEnum, gradeEnum) || other.gradeEnum == gradeEnum)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.carbohydrateIntakeG, carbohydrateIntakeG) || other.carbohydrateIntakeG == carbohydrateIntakeG)&&(identical(other.proteinIntakeG, proteinIntakeG) || other.proteinIntakeG == proteinIntakeG)&&(identical(other.fatIntakeG, fatIntakeG) || other.fatIntakeG == fatIntakeG)&&(identical(other.sugarIntakeG, sugarIntakeG) || other.sugarIntakeG == sugarIntakeG)&&(identical(other.sodiumIntakeMg, sodiumIntakeMg) || other.sodiumIntakeMg == sodiumIntakeMg)&&(identical(other.summaryTargetBasisEnum, summaryTargetBasisEnum) || other.summaryTargetBasisEnum == summaryTargetBasisEnum)&&(identical(other.carbohydrateTargetG, carbohydrateTargetG) || other.carbohydrateTargetG == carbohydrateTargetG)&&(identical(other.proteinTargetG, proteinTargetG) || other.proteinTargetG == proteinTargetG)&&(identical(other.fatTargetG, fatTargetG) || other.fatTargetG == fatTargetG)&&(identical(other.sugarLimitG, sugarLimitG) || other.sugarLimitG == sugarLimitG)&&(identical(other.sodiumAdequateMg, sodiumAdequateMg) || other.sodiumAdequateMg == sodiumAdequateMg)&&(identical(other.sodiumRiskReductionMg, sodiumRiskReductionMg) || other.sodiumRiskReductionMg == sodiumRiskReductionMg)&&(identical(other.standardSource, standardSource) || other.standardSource == standardSource)&&(identical(other.eerKcal, eerKcal) || other.eerKcal == eerKcal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,day,analysisCount,gradeEnum,baseScore,modifierScore,totalScore,totalKcal,carbohydrateIntakeG,proteinIntakeG,fatIntakeG,sugarIntakeG,sodiumIntakeMg,summaryTargetBasisEnum,carbohydrateTargetG,proteinTargetG,fatTargetG,sugarLimitG,sodiumAdequateMg,sodiumRiskReductionMg,standardSource,eerKcal,createdAt,updatedAt]);

@override
String toString() {
  return 'DailyNutritionSummaryEntity(id: $id, date: $date, day: $day, analysisCount: $analysisCount, gradeEnum: $gradeEnum, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, totalKcal: $totalKcal, carbohydrateIntakeG: $carbohydrateIntakeG, proteinIntakeG: $proteinIntakeG, fatIntakeG: $fatIntakeG, sugarIntakeG: $sugarIntakeG, sodiumIntakeMg: $sodiumIntakeMg, summaryTargetBasisEnum: $summaryTargetBasisEnum, carbohydrateTargetG: $carbohydrateTargetG, proteinTargetG: $proteinTargetG, fatTargetG: $fatTargetG, sugarLimitG: $sugarLimitG, sodiumAdequateMg: $sodiumAdequateMg, sodiumRiskReductionMg: $sodiumRiskReductionMg, standardSource: $standardSource, eerKcal: $eerKcal, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DailyNutritionSummaryEntityCopyWith<$Res>  {
  factory $DailyNutritionSummaryEntityCopyWith(DailyNutritionSummaryEntity value, $Res Function(DailyNutritionSummaryEntity) _then) = _$DailyNutritionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int id, DateTime date, String day, int analysisCount, NutritionGradeEnum? gradeEnum, int? baseScore, int? modifierScore, int? totalScore, double totalKcal, double carbohydrateIntakeG, double proteinIntakeG, double fatIntakeG, double sugarIntakeG, double sodiumIntakeMg, NutritionSummaryTargetBasisEnum summaryTargetBasisEnum, int carbohydrateTargetG, int proteinTargetG, int fatTargetG, int sugarLimitG, int sodiumAdequateMg, int sodiumRiskReductionMg, String standardSource, int eerKcal, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$DailyNutritionSummaryEntityCopyWithImpl<$Res>
    implements $DailyNutritionSummaryEntityCopyWith<$Res> {
  _$DailyNutritionSummaryEntityCopyWithImpl(this._self, this._then);

  final DailyNutritionSummaryEntity _self;
  final $Res Function(DailyNutritionSummaryEntity) _then;

/// Create a copy of DailyNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? day = null,Object? analysisCount = null,Object? gradeEnum = freezed,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? totalKcal = null,Object? carbohydrateIntakeG = null,Object? proteinIntakeG = null,Object? fatIntakeG = null,Object? sugarIntakeG = null,Object? sodiumIntakeMg = null,Object? summaryTargetBasisEnum = null,Object? carbohydrateTargetG = null,Object? proteinTargetG = null,Object? fatTargetG = null,Object? sugarLimitG = null,Object? sodiumAdequateMg = null,Object? sodiumRiskReductionMg = null,Object? standardSource = null,Object? eerKcal = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,gradeEnum: freezed == gradeEnum ? _self.gradeEnum : gradeEnum // ignore: cast_nullable_to_non_nullable
as NutritionGradeEnum?,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrateIntakeG: null == carbohydrateIntakeG ? _self.carbohydrateIntakeG : carbohydrateIntakeG // ignore: cast_nullable_to_non_nullable
as double,proteinIntakeG: null == proteinIntakeG ? _self.proteinIntakeG : proteinIntakeG // ignore: cast_nullable_to_non_nullable
as double,fatIntakeG: null == fatIntakeG ? _self.fatIntakeG : fatIntakeG // ignore: cast_nullable_to_non_nullable
as double,sugarIntakeG: null == sugarIntakeG ? _self.sugarIntakeG : sugarIntakeG // ignore: cast_nullable_to_non_nullable
as double,sodiumIntakeMg: null == sodiumIntakeMg ? _self.sodiumIntakeMg : sodiumIntakeMg // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasisEnum: null == summaryTargetBasisEnum ? _self.summaryTargetBasisEnum : summaryTargetBasisEnum // ignore: cast_nullable_to_non_nullable
as NutritionSummaryTargetBasisEnum,carbohydrateTargetG: null == carbohydrateTargetG ? _self.carbohydrateTargetG : carbohydrateTargetG // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [DailyNutritionSummaryEntity].
extension DailyNutritionSummaryEntityPatterns on DailyNutritionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyNutritionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyNutritionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyNutritionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime date,  String day,  int analysisCount,  NutritionGradeEnum? gradeEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.gradeEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasisEnum,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime date,  String day,  int analysisCount,  NutritionGradeEnum? gradeEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity():
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.gradeEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasisEnum,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime date,  String day,  int analysisCount,  NutritionGradeEnum? gradeEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  double totalKcal,  double carbohydrateIntakeG,  double proteinIntakeG,  double fatIntakeG,  double sugarIntakeG,  double sodiumIntakeMg,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int carbohydrateTargetG,  int proteinTargetG,  int fatTargetG,  int sugarLimitG,  int sodiumAdequateMg,  int sodiumRiskReductionMg,  String standardSource,  int eerKcal,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyNutritionSummaryEntity() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.analysisCount,_that.gradeEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.totalKcal,_that.carbohydrateIntakeG,_that.proteinIntakeG,_that.fatIntakeG,_that.sugarIntakeG,_that.sodiumIntakeMg,_that.summaryTargetBasisEnum,_that.carbohydrateTargetG,_that.proteinTargetG,_that.fatTargetG,_that.sugarLimitG,_that.sodiumAdequateMg,_that.sodiumRiskReductionMg,_that.standardSource,_that.eerKcal,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyNutritionSummaryEntity implements DailyNutritionSummaryEntity {
  const _DailyNutritionSummaryEntity({required this.id, required this.date, required this.day, required this.analysisCount, this.gradeEnum, this.baseScore, this.modifierScore, this.totalScore, required this.totalKcal, required this.carbohydrateIntakeG, required this.proteinIntakeG, required this.fatIntakeG, required this.sugarIntakeG, required this.sodiumIntakeMg, required this.summaryTargetBasisEnum, required this.carbohydrateTargetG, required this.proteinTargetG, required this.fatTargetG, required this.sugarLimitG, required this.sodiumAdequateMg, required this.sodiumRiskReductionMg, required this.standardSource, required this.eerKcal, required this.createdAt, required this.updatedAt});
  factory _DailyNutritionSummaryEntity.fromJson(Map<String, dynamic> json) => _$DailyNutritionSummaryEntityFromJson(json);

@override final  int id;
@override final  DateTime date;
@override final  String day;
@override final  int analysisCount;
@override final  NutritionGradeEnum? gradeEnum;
@override final  int? baseScore;
@override final  int? modifierScore;
@override final  int? totalScore;
@override final  double totalKcal;
@override final  double carbohydrateIntakeG;
@override final  double proteinIntakeG;
@override final  double fatIntakeG;
@override final  double sugarIntakeG;
@override final  double sodiumIntakeMg;
@override final  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum;
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

/// Create a copy of DailyNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyNutritionSummaryEntityCopyWith<_DailyNutritionSummaryEntity> get copyWith => __$DailyNutritionSummaryEntityCopyWithImpl<_DailyNutritionSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyNutritionSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyNutritionSummaryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.gradeEnum, gradeEnum) || other.gradeEnum == gradeEnum)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.carbohydrateIntakeG, carbohydrateIntakeG) || other.carbohydrateIntakeG == carbohydrateIntakeG)&&(identical(other.proteinIntakeG, proteinIntakeG) || other.proteinIntakeG == proteinIntakeG)&&(identical(other.fatIntakeG, fatIntakeG) || other.fatIntakeG == fatIntakeG)&&(identical(other.sugarIntakeG, sugarIntakeG) || other.sugarIntakeG == sugarIntakeG)&&(identical(other.sodiumIntakeMg, sodiumIntakeMg) || other.sodiumIntakeMg == sodiumIntakeMg)&&(identical(other.summaryTargetBasisEnum, summaryTargetBasisEnum) || other.summaryTargetBasisEnum == summaryTargetBasisEnum)&&(identical(other.carbohydrateTargetG, carbohydrateTargetG) || other.carbohydrateTargetG == carbohydrateTargetG)&&(identical(other.proteinTargetG, proteinTargetG) || other.proteinTargetG == proteinTargetG)&&(identical(other.fatTargetG, fatTargetG) || other.fatTargetG == fatTargetG)&&(identical(other.sugarLimitG, sugarLimitG) || other.sugarLimitG == sugarLimitG)&&(identical(other.sodiumAdequateMg, sodiumAdequateMg) || other.sodiumAdequateMg == sodiumAdequateMg)&&(identical(other.sodiumRiskReductionMg, sodiumRiskReductionMg) || other.sodiumRiskReductionMg == sodiumRiskReductionMg)&&(identical(other.standardSource, standardSource) || other.standardSource == standardSource)&&(identical(other.eerKcal, eerKcal) || other.eerKcal == eerKcal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,date,day,analysisCount,gradeEnum,baseScore,modifierScore,totalScore,totalKcal,carbohydrateIntakeG,proteinIntakeG,fatIntakeG,sugarIntakeG,sodiumIntakeMg,summaryTargetBasisEnum,carbohydrateTargetG,proteinTargetG,fatTargetG,sugarLimitG,sodiumAdequateMg,sodiumRiskReductionMg,standardSource,eerKcal,createdAt,updatedAt]);

@override
String toString() {
  return 'DailyNutritionSummaryEntity(id: $id, date: $date, day: $day, analysisCount: $analysisCount, gradeEnum: $gradeEnum, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, totalKcal: $totalKcal, carbohydrateIntakeG: $carbohydrateIntakeG, proteinIntakeG: $proteinIntakeG, fatIntakeG: $fatIntakeG, sugarIntakeG: $sugarIntakeG, sodiumIntakeMg: $sodiumIntakeMg, summaryTargetBasisEnum: $summaryTargetBasisEnum, carbohydrateTargetG: $carbohydrateTargetG, proteinTargetG: $proteinTargetG, fatTargetG: $fatTargetG, sugarLimitG: $sugarLimitG, sodiumAdequateMg: $sodiumAdequateMg, sodiumRiskReductionMg: $sodiumRiskReductionMg, standardSource: $standardSource, eerKcal: $eerKcal, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyNutritionSummaryEntityCopyWith<$Res> implements $DailyNutritionSummaryEntityCopyWith<$Res> {
  factory _$DailyNutritionSummaryEntityCopyWith(_DailyNutritionSummaryEntity value, $Res Function(_DailyNutritionSummaryEntity) _then) = __$DailyNutritionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime date, String day, int analysisCount, NutritionGradeEnum? gradeEnum, int? baseScore, int? modifierScore, int? totalScore, double totalKcal, double carbohydrateIntakeG, double proteinIntakeG, double fatIntakeG, double sugarIntakeG, double sodiumIntakeMg, NutritionSummaryTargetBasisEnum summaryTargetBasisEnum, int carbohydrateTargetG, int proteinTargetG, int fatTargetG, int sugarLimitG, int sodiumAdequateMg, int sodiumRiskReductionMg, String standardSource, int eerKcal, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$DailyNutritionSummaryEntityCopyWithImpl<$Res>
    implements _$DailyNutritionSummaryEntityCopyWith<$Res> {
  __$DailyNutritionSummaryEntityCopyWithImpl(this._self, this._then);

  final _DailyNutritionSummaryEntity _self;
  final $Res Function(_DailyNutritionSummaryEntity) _then;

/// Create a copy of DailyNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? day = null,Object? analysisCount = null,Object? gradeEnum = freezed,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? totalKcal = null,Object? carbohydrateIntakeG = null,Object? proteinIntakeG = null,Object? fatIntakeG = null,Object? sugarIntakeG = null,Object? sodiumIntakeMg = null,Object? summaryTargetBasisEnum = null,Object? carbohydrateTargetG = null,Object? proteinTargetG = null,Object? fatTargetG = null,Object? sugarLimitG = null,Object? sodiumAdequateMg = null,Object? sodiumRiskReductionMg = null,Object? standardSource = null,Object? eerKcal = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DailyNutritionSummaryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,gradeEnum: freezed == gradeEnum ? _self.gradeEnum : gradeEnum // ignore: cast_nullable_to_non_nullable
as NutritionGradeEnum?,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,carbohydrateIntakeG: null == carbohydrateIntakeG ? _self.carbohydrateIntakeG : carbohydrateIntakeG // ignore: cast_nullable_to_non_nullable
as double,proteinIntakeG: null == proteinIntakeG ? _self.proteinIntakeG : proteinIntakeG // ignore: cast_nullable_to_non_nullable
as double,fatIntakeG: null == fatIntakeG ? _self.fatIntakeG : fatIntakeG // ignore: cast_nullable_to_non_nullable
as double,sugarIntakeG: null == sugarIntakeG ? _self.sugarIntakeG : sugarIntakeG // ignore: cast_nullable_to_non_nullable
as double,sodiumIntakeMg: null == sodiumIntakeMg ? _self.sodiumIntakeMg : sodiumIntakeMg // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasisEnum: null == summaryTargetBasisEnum ? _self.summaryTargetBasisEnum : summaryTargetBasisEnum // ignore: cast_nullable_to_non_nullable
as NutritionSummaryTargetBasisEnum,carbohydrateTargetG: null == carbohydrateTargetG ? _self.carbohydrateTargetG : carbohydrateTargetG // ignore: cast_nullable_to_non_nullable
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
