// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_nutrition_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayNutritionSummaryEntity {

 DateTime get date; String get timezone; int get analysisCount; double get totalKcal; NutritionSummaryTargetBasisEnum get summaryTargetBasisEnum; int? get baseScore; int? get modifierScore; int? get totalScore; NutritionGradeEnum? get gradeEnum; NutrientSummaryEntity get carbohydrate; NutrientSummaryEntity get protein; NutrientSummaryEntity get fat; SugarSummaryEntity get sugar; SodiumSummaryEntity get sodium;
/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayNutritionSummaryEntityCopyWith<TodayNutritionSummaryEntity> get copyWith => _$TodayNutritionSummaryEntityCopyWithImpl<TodayNutritionSummaryEntity>(this as TodayNutritionSummaryEntity, _$identity);

  /// Serializes this TodayNutritionSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayNutritionSummaryEntity&&(identical(other.date, date) || other.date == date)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.summaryTargetBasisEnum, summaryTargetBasisEnum) || other.summaryTargetBasisEnum == summaryTargetBasisEnum)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.gradeEnum, gradeEnum) || other.gradeEnum == gradeEnum)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timezone,analysisCount,totalKcal,summaryTargetBasisEnum,baseScore,modifierScore,totalScore,gradeEnum,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'TodayNutritionSummaryEntity(date: $date, timezone: $timezone, analysisCount: $analysisCount, totalKcal: $totalKcal, summaryTargetBasisEnum: $summaryTargetBasisEnum, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, gradeEnum: $gradeEnum, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $TodayNutritionSummaryEntityCopyWith<$Res>  {
  factory $TodayNutritionSummaryEntityCopyWith(TodayNutritionSummaryEntity value, $Res Function(TodayNutritionSummaryEntity) _then) = _$TodayNutritionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 DateTime date, String timezone, int analysisCount, double totalKcal, NutritionSummaryTargetBasisEnum summaryTargetBasisEnum, int? baseScore, int? modifierScore, int? totalScore, NutritionGradeEnum? gradeEnum, NutrientSummaryEntity carbohydrate, NutrientSummaryEntity protein, NutrientSummaryEntity fat, SugarSummaryEntity sugar, SodiumSummaryEntity sodium
});


$NutrientSummaryEntityCopyWith<$Res> get carbohydrate;$NutrientSummaryEntityCopyWith<$Res> get protein;$NutrientSummaryEntityCopyWith<$Res> get fat;$SugarSummaryEntityCopyWith<$Res> get sugar;$SodiumSummaryEntityCopyWith<$Res> get sodium;

}
/// @nodoc
class _$TodayNutritionSummaryEntityCopyWithImpl<$Res>
    implements $TodayNutritionSummaryEntityCopyWith<$Res> {
  _$TodayNutritionSummaryEntityCopyWithImpl(this._self, this._then);

  final TodayNutritionSummaryEntity _self;
  final $Res Function(TodayNutritionSummaryEntity) _then;

/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? timezone = null,Object? analysisCount = null,Object? totalKcal = null,Object? summaryTargetBasisEnum = null,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? gradeEnum = freezed,Object? carbohydrate = null,Object? protein = null,Object? fat = null,Object? sugar = null,Object? sodium = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasisEnum: null == summaryTargetBasisEnum ? _self.summaryTargetBasisEnum : summaryTargetBasisEnum // ignore: cast_nullable_to_non_nullable
as NutritionSummaryTargetBasisEnum,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,gradeEnum: freezed == gradeEnum ? _self.gradeEnum : gradeEnum // ignore: cast_nullable_to_non_nullable
as NutritionGradeEnum?,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarSummaryEntity,sodium: null == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumSummaryEntity,
  ));
}
/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get carbohydrate {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get protein {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get fat {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarSummaryEntityCopyWith<$Res> get sugar {
  
  return $SugarSummaryEntityCopyWith<$Res>(_self.sugar, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumSummaryEntityCopyWith<$Res> get sodium {
  
  return $SodiumSummaryEntityCopyWith<$Res>(_self.sodium, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [TodayNutritionSummaryEntity].
extension TodayNutritionSummaryEntityPatterns on TodayNutritionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayNutritionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayNutritionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayNutritionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  NutritionGradeEnum? gradeEnum,  NutrientSummaryEntity carbohydrate,  NutrientSummaryEntity protein,  NutrientSummaryEntity fat,  SugarSummaryEntity sugar,  SodiumSummaryEntity sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity() when $default != null:
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.summaryTargetBasisEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.gradeEnum,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  NutritionGradeEnum? gradeEnum,  NutrientSummaryEntity carbohydrate,  NutrientSummaryEntity protein,  NutrientSummaryEntity fat,  SugarSummaryEntity sugar,  SodiumSummaryEntity sodium)  $default,) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity():
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.summaryTargetBasisEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.gradeEnum,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,  int? baseScore,  int? modifierScore,  int? totalScore,  NutritionGradeEnum? gradeEnum,  NutrientSummaryEntity carbohydrate,  NutrientSummaryEntity protein,  NutrientSummaryEntity fat,  SugarSummaryEntity sugar,  SodiumSummaryEntity sodium)?  $default,) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryEntity() when $default != null:
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.summaryTargetBasisEnum,_that.baseScore,_that.modifierScore,_that.totalScore,_that.gradeEnum,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayNutritionSummaryEntity implements TodayNutritionSummaryEntity {
  const _TodayNutritionSummaryEntity({required this.date, required this.timezone, required this.analysisCount, required this.totalKcal, required this.summaryTargetBasisEnum, required this.baseScore, required this.modifierScore, required this.totalScore, required this.gradeEnum, required this.carbohydrate, required this.protein, required this.fat, required this.sugar, required this.sodium});
  factory _TodayNutritionSummaryEntity.fromJson(Map<String, dynamic> json) => _$TodayNutritionSummaryEntityFromJson(json);

@override final  DateTime date;
@override final  String timezone;
@override final  int analysisCount;
@override final  double totalKcal;
@override final  NutritionSummaryTargetBasisEnum summaryTargetBasisEnum;
@override final  int? baseScore;
@override final  int? modifierScore;
@override final  int? totalScore;
@override final  NutritionGradeEnum? gradeEnum;
@override final  NutrientSummaryEntity carbohydrate;
@override final  NutrientSummaryEntity protein;
@override final  NutrientSummaryEntity fat;
@override final  SugarSummaryEntity sugar;
@override final  SodiumSummaryEntity sodium;

/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayNutritionSummaryEntityCopyWith<_TodayNutritionSummaryEntity> get copyWith => __$TodayNutritionSummaryEntityCopyWithImpl<_TodayNutritionSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayNutritionSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayNutritionSummaryEntity&&(identical(other.date, date) || other.date == date)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.summaryTargetBasisEnum, summaryTargetBasisEnum) || other.summaryTargetBasisEnum == summaryTargetBasisEnum)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.gradeEnum, gradeEnum) || other.gradeEnum == gradeEnum)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timezone,analysisCount,totalKcal,summaryTargetBasisEnum,baseScore,modifierScore,totalScore,gradeEnum,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'TodayNutritionSummaryEntity(date: $date, timezone: $timezone, analysisCount: $analysisCount, totalKcal: $totalKcal, summaryTargetBasisEnum: $summaryTargetBasisEnum, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, gradeEnum: $gradeEnum, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$TodayNutritionSummaryEntityCopyWith<$Res> implements $TodayNutritionSummaryEntityCopyWith<$Res> {
  factory _$TodayNutritionSummaryEntityCopyWith(_TodayNutritionSummaryEntity value, $Res Function(_TodayNutritionSummaryEntity) _then) = __$TodayNutritionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String timezone, int analysisCount, double totalKcal, NutritionSummaryTargetBasisEnum summaryTargetBasisEnum, int? baseScore, int? modifierScore, int? totalScore, NutritionGradeEnum? gradeEnum, NutrientSummaryEntity carbohydrate, NutrientSummaryEntity protein, NutrientSummaryEntity fat, SugarSummaryEntity sugar, SodiumSummaryEntity sodium
});


@override $NutrientSummaryEntityCopyWith<$Res> get carbohydrate;@override $NutrientSummaryEntityCopyWith<$Res> get protein;@override $NutrientSummaryEntityCopyWith<$Res> get fat;@override $SugarSummaryEntityCopyWith<$Res> get sugar;@override $SodiumSummaryEntityCopyWith<$Res> get sodium;

}
/// @nodoc
class __$TodayNutritionSummaryEntityCopyWithImpl<$Res>
    implements _$TodayNutritionSummaryEntityCopyWith<$Res> {
  __$TodayNutritionSummaryEntityCopyWithImpl(this._self, this._then);

  final _TodayNutritionSummaryEntity _self;
  final $Res Function(_TodayNutritionSummaryEntity) _then;

/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? timezone = null,Object? analysisCount = null,Object? totalKcal = null,Object? summaryTargetBasisEnum = null,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? gradeEnum = freezed,Object? carbohydrate = null,Object? protein = null,Object? fat = null,Object? sugar = null,Object? sodium = null,}) {
  return _then(_TodayNutritionSummaryEntity(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,summaryTargetBasisEnum: null == summaryTargetBasisEnum ? _self.summaryTargetBasisEnum : summaryTargetBasisEnum // ignore: cast_nullable_to_non_nullable
as NutritionSummaryTargetBasisEnum,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,gradeEnum: freezed == gradeEnum ? _self.gradeEnum : gradeEnum // ignore: cast_nullable_to_non_nullable
as NutritionGradeEnum?,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientSummaryEntity,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarSummaryEntity,sodium: null == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumSummaryEntity,
  ));
}

/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get carbohydrate {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get protein {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<$Res> get fat {
  
  return $NutrientSummaryEntityCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarSummaryEntityCopyWith<$Res> get sugar {
  
  return $SugarSummaryEntityCopyWith<$Res>(_self.sugar, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of TodayNutritionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumSummaryEntityCopyWith<$Res> get sodium {
  
  return $SodiumSummaryEntityCopyWith<$Res>(_self.sodium, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientSummaryEntity {

 double get intakeG; int get minG; int get targetG; int get maxG; double get achievementPercent; int? get score; NutritionStatusEnum get status;
/// Create a copy of NutrientSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientSummaryEntityCopyWith<NutrientSummaryEntity> get copyWith => _$NutrientSummaryEntityCopyWithImpl<NutrientSummaryEntity>(this as NutrientSummaryEntity, _$identity);

  /// Serializes this NutrientSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientSummaryEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.minG, minG) || other.minG == minG)&&(identical(other.targetG, targetG) || other.targetG == targetG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.achievementPercent, achievementPercent) || other.achievementPercent == achievementPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,minG,targetG,maxG,achievementPercent,score,status);

@override
String toString() {
  return 'NutrientSummaryEntity(intakeG: $intakeG, minG: $minG, targetG: $targetG, maxG: $maxG, achievementPercent: $achievementPercent, score: $score, status: $status)';
}


}

/// @nodoc
abstract mixin class $NutrientSummaryEntityCopyWith<$Res>  {
  factory $NutrientSummaryEntityCopyWith(NutrientSummaryEntity value, $Res Function(NutrientSummaryEntity) _then) = _$NutrientSummaryEntityCopyWithImpl;
@useResult
$Res call({
 double intakeG, int minG, int targetG, int maxG, double achievementPercent, int? score, NutritionStatusEnum status
});




}
/// @nodoc
class _$NutrientSummaryEntityCopyWithImpl<$Res>
    implements $NutrientSummaryEntityCopyWith<$Res> {
  _$NutrientSummaryEntityCopyWithImpl(this._self, this._then);

  final NutrientSummaryEntity _self;
  final $Res Function(NutrientSummaryEntity) _then;

/// Create a copy of NutrientSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeG = null,Object? minG = null,Object? targetG = null,Object? maxG = null,Object? achievementPercent = null,Object? score = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,minG: null == minG ? _self.minG : minG // ignore: cast_nullable_to_non_nullable
as int,targetG: null == targetG ? _self.targetG : targetG // ignore: cast_nullable_to_non_nullable
as int,maxG: null == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int,achievementPercent: null == achievementPercent ? _self.achievementPercent : achievementPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientSummaryEntity].
extension NutrientSummaryEntityPatterns on NutrientSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _NutrientSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  NutritionStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientSummaryEntity() when $default != null:
return $default(_that.intakeG,_that.minG,_that.targetG,_that.maxG,_that.achievementPercent,_that.score,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  NutritionStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _NutrientSummaryEntity():
return $default(_that.intakeG,_that.minG,_that.targetG,_that.maxG,_that.achievementPercent,_that.score,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  NutritionStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _NutrientSummaryEntity() when $default != null:
return $default(_that.intakeG,_that.minG,_that.targetG,_that.maxG,_that.achievementPercent,_that.score,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientSummaryEntity implements NutrientSummaryEntity {
  const _NutrientSummaryEntity({required this.intakeG, required this.minG, required this.targetG, required this.maxG, required this.achievementPercent, required this.score, required this.status});
  factory _NutrientSummaryEntity.fromJson(Map<String, dynamic> json) => _$NutrientSummaryEntityFromJson(json);

@override final  double intakeG;
@override final  int minG;
@override final  int targetG;
@override final  int maxG;
@override final  double achievementPercent;
@override final  int? score;
@override final  NutritionStatusEnum status;

/// Create a copy of NutrientSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientSummaryEntityCopyWith<_NutrientSummaryEntity> get copyWith => __$NutrientSummaryEntityCopyWithImpl<_NutrientSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientSummaryEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.minG, minG) || other.minG == minG)&&(identical(other.targetG, targetG) || other.targetG == targetG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.achievementPercent, achievementPercent) || other.achievementPercent == achievementPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,minG,targetG,maxG,achievementPercent,score,status);

@override
String toString() {
  return 'NutrientSummaryEntity(intakeG: $intakeG, minG: $minG, targetG: $targetG, maxG: $maxG, achievementPercent: $achievementPercent, score: $score, status: $status)';
}


}

/// @nodoc
abstract mixin class _$NutrientSummaryEntityCopyWith<$Res> implements $NutrientSummaryEntityCopyWith<$Res> {
  factory _$NutrientSummaryEntityCopyWith(_NutrientSummaryEntity value, $Res Function(_NutrientSummaryEntity) _then) = __$NutrientSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 double intakeG, int minG, int targetG, int maxG, double achievementPercent, int? score, NutritionStatusEnum status
});




}
/// @nodoc
class __$NutrientSummaryEntityCopyWithImpl<$Res>
    implements _$NutrientSummaryEntityCopyWith<$Res> {
  __$NutrientSummaryEntityCopyWithImpl(this._self, this._then);

  final _NutrientSummaryEntity _self;
  final $Res Function(_NutrientSummaryEntity) _then;

/// Create a copy of NutrientSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = null,Object? minG = null,Object? targetG = null,Object? maxG = null,Object? achievementPercent = null,Object? score = freezed,Object? status = null,}) {
  return _then(_NutrientSummaryEntity(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,minG: null == minG ? _self.minG : minG // ignore: cast_nullable_to_non_nullable
as int,targetG: null == targetG ? _self.targetG : targetG // ignore: cast_nullable_to_non_nullable
as int,maxG: null == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int,achievementPercent: null == achievementPercent ? _self.achievementPercent : achievementPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}


}


/// @nodoc
mixin _$SugarSummaryEntity {

 double get intakeG; int get noPenaltyThresholdG; int get limitG; int get hardLimitG; double get limitPercent; int? get score; int get modifier; NutritionStatusEnum get status;
/// Create a copy of SugarSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarSummaryEntityCopyWith<SugarSummaryEntity> get copyWith => _$SugarSummaryEntityCopyWithImpl<SugarSummaryEntity>(this as SugarSummaryEntity, _$identity);

  /// Serializes this SugarSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarSummaryEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.noPenaltyThresholdG, noPenaltyThresholdG) || other.noPenaltyThresholdG == noPenaltyThresholdG)&&(identical(other.limitG, limitG) || other.limitG == limitG)&&(identical(other.hardLimitG, hardLimitG) || other.hardLimitG == hardLimitG)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,noPenaltyThresholdG,limitG,hardLimitG,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SugarSummaryEntity(intakeG: $intakeG, noPenaltyThresholdG: $noPenaltyThresholdG, limitG: $limitG, hardLimitG: $hardLimitG, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class $SugarSummaryEntityCopyWith<$Res>  {
  factory $SugarSummaryEntityCopyWith(SugarSummaryEntity value, $Res Function(SugarSummaryEntity) _then) = _$SugarSummaryEntityCopyWithImpl;
@useResult
$Res call({
 double intakeG, int noPenaltyThresholdG, int limitG, int hardLimitG, double limitPercent, int? score, int modifier, NutritionStatusEnum status
});




}
/// @nodoc
class _$SugarSummaryEntityCopyWithImpl<$Res>
    implements $SugarSummaryEntityCopyWith<$Res> {
  _$SugarSummaryEntityCopyWithImpl(this._self, this._then);

  final SugarSummaryEntity _self;
  final $Res Function(SugarSummaryEntity) _then;

/// Create a copy of SugarSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeG = null,Object? noPenaltyThresholdG = null,Object? limitG = null,Object? hardLimitG = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_self.copyWith(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,noPenaltyThresholdG: null == noPenaltyThresholdG ? _self.noPenaltyThresholdG : noPenaltyThresholdG // ignore: cast_nullable_to_non_nullable
as int,limitG: null == limitG ? _self.limitG : limitG // ignore: cast_nullable_to_non_nullable
as int,hardLimitG: null == hardLimitG ? _self.hardLimitG : hardLimitG // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarSummaryEntity].
extension SugarSummaryEntityPatterns on SugarSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SugarSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SugarSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarSummaryEntity() when $default != null:
return $default(_that.intakeG,_that.noPenaltyThresholdG,_that.limitG,_that.hardLimitG,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _SugarSummaryEntity():
return $default(_that.intakeG,_that.noPenaltyThresholdG,_that.limitG,_that.hardLimitG,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _SugarSummaryEntity() when $default != null:
return $default(_that.intakeG,_that.noPenaltyThresholdG,_that.limitG,_that.hardLimitG,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarSummaryEntity implements SugarSummaryEntity {
  const _SugarSummaryEntity({required this.intakeG, required this.noPenaltyThresholdG, required this.limitG, required this.hardLimitG, required this.limitPercent, required this.score, required this.modifier, required this.status});
  factory _SugarSummaryEntity.fromJson(Map<String, dynamic> json) => _$SugarSummaryEntityFromJson(json);

@override final  double intakeG;
@override final  int noPenaltyThresholdG;
@override final  int limitG;
@override final  int hardLimitG;
@override final  double limitPercent;
@override final  int? score;
@override final  int modifier;
@override final  NutritionStatusEnum status;

/// Create a copy of SugarSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarSummaryEntityCopyWith<_SugarSummaryEntity> get copyWith => __$SugarSummaryEntityCopyWithImpl<_SugarSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarSummaryEntity&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.noPenaltyThresholdG, noPenaltyThresholdG) || other.noPenaltyThresholdG == noPenaltyThresholdG)&&(identical(other.limitG, limitG) || other.limitG == limitG)&&(identical(other.hardLimitG, hardLimitG) || other.hardLimitG == hardLimitG)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,noPenaltyThresholdG,limitG,hardLimitG,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SugarSummaryEntity(intakeG: $intakeG, noPenaltyThresholdG: $noPenaltyThresholdG, limitG: $limitG, hardLimitG: $hardLimitG, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SugarSummaryEntityCopyWith<$Res> implements $SugarSummaryEntityCopyWith<$Res> {
  factory _$SugarSummaryEntityCopyWith(_SugarSummaryEntity value, $Res Function(_SugarSummaryEntity) _then) = __$SugarSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 double intakeG, int noPenaltyThresholdG, int limitG, int hardLimitG, double limitPercent, int? score, int modifier, NutritionStatusEnum status
});




}
/// @nodoc
class __$SugarSummaryEntityCopyWithImpl<$Res>
    implements _$SugarSummaryEntityCopyWith<$Res> {
  __$SugarSummaryEntityCopyWithImpl(this._self, this._then);

  final _SugarSummaryEntity _self;
  final $Res Function(_SugarSummaryEntity) _then;

/// Create a copy of SugarSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = null,Object? noPenaltyThresholdG = null,Object? limitG = null,Object? hardLimitG = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_SugarSummaryEntity(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,noPenaltyThresholdG: null == noPenaltyThresholdG ? _self.noPenaltyThresholdG : noPenaltyThresholdG // ignore: cast_nullable_to_non_nullable
as int,limitG: null == limitG ? _self.limitG : limitG // ignore: cast_nullable_to_non_nullable
as int,hardLimitG: null == hardLimitG ? _self.hardLimitG : hardLimitG // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}


}


/// @nodoc
mixin _$SodiumSummaryEntity {

 double get intakeMg; int get adequateMg; int get riskReductionMg; int get hardLimitMg; double get limitPercent; int? get score; int get modifier; NutritionStatusEnum get status;
/// Create a copy of SodiumSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumSummaryEntityCopyWith<SodiumSummaryEntity> get copyWith => _$SodiumSummaryEntityCopyWithImpl<SodiumSummaryEntity>(this as SodiumSummaryEntity, _$identity);

  /// Serializes this SodiumSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumSummaryEntity&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.hardLimitMg, hardLimitMg) || other.hardLimitMg == hardLimitMg)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,hardLimitMg,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SodiumSummaryEntity(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, hardLimitMg: $hardLimitMg, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class $SodiumSummaryEntityCopyWith<$Res>  {
  factory $SodiumSummaryEntityCopyWith(SodiumSummaryEntity value, $Res Function(SodiumSummaryEntity) _then) = _$SodiumSummaryEntityCopyWithImpl;
@useResult
$Res call({
 double intakeMg, int adequateMg, int riskReductionMg, int hardLimitMg, double limitPercent, int? score, int modifier, NutritionStatusEnum status
});




}
/// @nodoc
class _$SodiumSummaryEntityCopyWithImpl<$Res>
    implements $SodiumSummaryEntityCopyWith<$Res> {
  _$SodiumSummaryEntityCopyWithImpl(this._self, this._then);

  final SodiumSummaryEntity _self;
  final $Res Function(SodiumSummaryEntity) _then;

/// Create a copy of SodiumSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intakeMg = null,Object? adequateMg = null,Object? riskReductionMg = null,Object? hardLimitMg = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_self.copyWith(
intakeMg: null == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double,adequateMg: null == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int,riskReductionMg: null == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int,hardLimitMg: null == hardLimitMg ? _self.hardLimitMg : hardLimitMg // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumSummaryEntity].
extension SodiumSummaryEntityPatterns on SodiumSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SodiumSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumSummaryEntity() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.hardLimitMg,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _SodiumSummaryEntity():
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.hardLimitMg,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  NutritionStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _SodiumSummaryEntity() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.hardLimitMg,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumSummaryEntity implements SodiumSummaryEntity {
  const _SodiumSummaryEntity({required this.intakeMg, required this.adequateMg, required this.riskReductionMg, required this.hardLimitMg, required this.limitPercent, required this.score, required this.modifier, required this.status});
  factory _SodiumSummaryEntity.fromJson(Map<String, dynamic> json) => _$SodiumSummaryEntityFromJson(json);

@override final  double intakeMg;
@override final  int adequateMg;
@override final  int riskReductionMg;
@override final  int hardLimitMg;
@override final  double limitPercent;
@override final  int? score;
@override final  int modifier;
@override final  NutritionStatusEnum status;

/// Create a copy of SodiumSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumSummaryEntityCopyWith<_SodiumSummaryEntity> get copyWith => __$SodiumSummaryEntityCopyWithImpl<_SodiumSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumSummaryEntity&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.hardLimitMg, hardLimitMg) || other.hardLimitMg == hardLimitMg)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,hardLimitMg,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SodiumSummaryEntity(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, hardLimitMg: $hardLimitMg, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SodiumSummaryEntityCopyWith<$Res> implements $SodiumSummaryEntityCopyWith<$Res> {
  factory _$SodiumSummaryEntityCopyWith(_SodiumSummaryEntity value, $Res Function(_SodiumSummaryEntity) _then) = __$SodiumSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 double intakeMg, int adequateMg, int riskReductionMg, int hardLimitMg, double limitPercent, int? score, int modifier, NutritionStatusEnum status
});




}
/// @nodoc
class __$SodiumSummaryEntityCopyWithImpl<$Res>
    implements _$SodiumSummaryEntityCopyWith<$Res> {
  __$SodiumSummaryEntityCopyWithImpl(this._self, this._then);

  final _SodiumSummaryEntity _self;
  final $Res Function(_SodiumSummaryEntity) _then;

/// Create a copy of SodiumSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeMg = null,Object? adequateMg = null,Object? riskReductionMg = null,Object? hardLimitMg = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_SodiumSummaryEntity(
intakeMg: null == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double,adequateMg: null == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int,riskReductionMg: null == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int,hardLimitMg: null == hardLimitMg ? _self.hardLimitMg : hardLimitMg // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NutritionStatusEnum,
  ));
}


}

// dart format on
