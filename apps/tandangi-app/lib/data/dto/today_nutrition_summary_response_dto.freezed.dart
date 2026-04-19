// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_nutrition_summary_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayNutritionSummaryResponseDto {

 DateTime get date; String get timezone; int get analysisCount; double get totalKcal; int? get baseScore; int? get modifierScore; int? get totalScore; String? get grade; NutrientSummaryResponseDto get carbohydrate; NutrientSummaryResponseDto get protein; NutrientSummaryResponseDto get fat; SugarSummaryResponseDto get sugar; SodiumSummaryResponseDto get sodium;
/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayNutritionSummaryResponseDtoCopyWith<TodayNutritionSummaryResponseDto> get copyWith => _$TodayNutritionSummaryResponseDtoCopyWithImpl<TodayNutritionSummaryResponseDto>(this as TodayNutritionSummaryResponseDto, _$identity);

  /// Serializes this TodayNutritionSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayNutritionSummaryResponseDto&&(identical(other.date, date) || other.date == date)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timezone,analysisCount,totalKcal,baseScore,modifierScore,totalScore,grade,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'TodayNutritionSummaryResponseDto(date: $date, timezone: $timezone, analysisCount: $analysisCount, totalKcal: $totalKcal, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, grade: $grade, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class $TodayNutritionSummaryResponseDtoCopyWith<$Res>  {
  factory $TodayNutritionSummaryResponseDtoCopyWith(TodayNutritionSummaryResponseDto value, $Res Function(TodayNutritionSummaryResponseDto) _then) = _$TodayNutritionSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 DateTime date, String timezone, int analysisCount, double totalKcal, int? baseScore, int? modifierScore, int? totalScore, String? grade, NutrientSummaryResponseDto carbohydrate, NutrientSummaryResponseDto protein, NutrientSummaryResponseDto fat, SugarSummaryResponseDto sugar, SodiumSummaryResponseDto sodium
});


$NutrientSummaryResponseDtoCopyWith<$Res> get carbohydrate;$NutrientSummaryResponseDtoCopyWith<$Res> get protein;$NutrientSummaryResponseDtoCopyWith<$Res> get fat;$SugarSummaryResponseDtoCopyWith<$Res> get sugar;$SodiumSummaryResponseDtoCopyWith<$Res> get sodium;

}
/// @nodoc
class _$TodayNutritionSummaryResponseDtoCopyWithImpl<$Res>
    implements $TodayNutritionSummaryResponseDtoCopyWith<$Res> {
  _$TodayNutritionSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final TodayNutritionSummaryResponseDto _self;
  final $Res Function(TodayNutritionSummaryResponseDto) _then;

/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? timezone = null,Object? analysisCount = null,Object? totalKcal = null,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? grade = freezed,Object? carbohydrate = null,Object? protein = null,Object? fat = null,Object? sugar = null,Object? sodium = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarSummaryResponseDto,sodium: null == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumSummaryResponseDto,
  ));
}
/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get carbohydrate {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get protein {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get fat {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarSummaryResponseDtoCopyWith<$Res> get sugar {
  
  return $SugarSummaryResponseDtoCopyWith<$Res>(_self.sugar, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumSummaryResponseDtoCopyWith<$Res> get sodium {
  
  return $SodiumSummaryResponseDtoCopyWith<$Res>(_self.sodium, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// Adds pattern-matching-related methods to [TodayNutritionSummaryResponseDto].
extension TodayNutritionSummaryResponseDtoPatterns on TodayNutritionSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayNutritionSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayNutritionSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayNutritionSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  int? baseScore,  int? modifierScore,  int? totalScore,  String? grade,  NutrientSummaryResponseDto carbohydrate,  NutrientSummaryResponseDto protein,  NutrientSummaryResponseDto fat,  SugarSummaryResponseDto sugar,  SodiumSummaryResponseDto sodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto() when $default != null:
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.baseScore,_that.modifierScore,_that.totalScore,_that.grade,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  int? baseScore,  int? modifierScore,  int? totalScore,  String? grade,  NutrientSummaryResponseDto carbohydrate,  NutrientSummaryResponseDto protein,  NutrientSummaryResponseDto fat,  SugarSummaryResponseDto sugar,  SodiumSummaryResponseDto sodium)  $default,) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto():
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.baseScore,_that.modifierScore,_that.totalScore,_that.grade,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String timezone,  int analysisCount,  double totalKcal,  int? baseScore,  int? modifierScore,  int? totalScore,  String? grade,  NutrientSummaryResponseDto carbohydrate,  NutrientSummaryResponseDto protein,  NutrientSummaryResponseDto fat,  SugarSummaryResponseDto sugar,  SodiumSummaryResponseDto sodium)?  $default,) {final _that = this;
switch (_that) {
case _TodayNutritionSummaryResponseDto() when $default != null:
return $default(_that.date,_that.timezone,_that.analysisCount,_that.totalKcal,_that.baseScore,_that.modifierScore,_that.totalScore,_that.grade,_that.carbohydrate,_that.protein,_that.fat,_that.sugar,_that.sodium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayNutritionSummaryResponseDto implements TodayNutritionSummaryResponseDto {
  const _TodayNutritionSummaryResponseDto({required this.date, required this.timezone, required this.analysisCount, required this.totalKcal, this.baseScore, this.modifierScore, this.totalScore, this.grade, required this.carbohydrate, required this.protein, required this.fat, required this.sugar, required this.sodium});
  factory _TodayNutritionSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$TodayNutritionSummaryResponseDtoFromJson(json);

@override final  DateTime date;
@override final  String timezone;
@override final  int analysisCount;
@override final  double totalKcal;
@override final  int? baseScore;
@override final  int? modifierScore;
@override final  int? totalScore;
@override final  String? grade;
@override final  NutrientSummaryResponseDto carbohydrate;
@override final  NutrientSummaryResponseDto protein;
@override final  NutrientSummaryResponseDto fat;
@override final  SugarSummaryResponseDto sugar;
@override final  SodiumSummaryResponseDto sodium;

/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayNutritionSummaryResponseDtoCopyWith<_TodayNutritionSummaryResponseDto> get copyWith => __$TodayNutritionSummaryResponseDtoCopyWithImpl<_TodayNutritionSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayNutritionSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayNutritionSummaryResponseDto&&(identical(other.date, date) || other.date == date)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.analysisCount, analysisCount) || other.analysisCount == analysisCount)&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal)&&(identical(other.baseScore, baseScore) || other.baseScore == baseScore)&&(identical(other.modifierScore, modifierScore) || other.modifierScore == modifierScore)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.sodium, sodium) || other.sodium == sodium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,timezone,analysisCount,totalKcal,baseScore,modifierScore,totalScore,grade,carbohydrate,protein,fat,sugar,sodium);

@override
String toString() {
  return 'TodayNutritionSummaryResponseDto(date: $date, timezone: $timezone, analysisCount: $analysisCount, totalKcal: $totalKcal, baseScore: $baseScore, modifierScore: $modifierScore, totalScore: $totalScore, grade: $grade, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, sugar: $sugar, sodium: $sodium)';
}


}

/// @nodoc
abstract mixin class _$TodayNutritionSummaryResponseDtoCopyWith<$Res> implements $TodayNutritionSummaryResponseDtoCopyWith<$Res> {
  factory _$TodayNutritionSummaryResponseDtoCopyWith(_TodayNutritionSummaryResponseDto value, $Res Function(_TodayNutritionSummaryResponseDto) _then) = __$TodayNutritionSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String timezone, int analysisCount, double totalKcal, int? baseScore, int? modifierScore, int? totalScore, String? grade, NutrientSummaryResponseDto carbohydrate, NutrientSummaryResponseDto protein, NutrientSummaryResponseDto fat, SugarSummaryResponseDto sugar, SodiumSummaryResponseDto sodium
});


@override $NutrientSummaryResponseDtoCopyWith<$Res> get carbohydrate;@override $NutrientSummaryResponseDtoCopyWith<$Res> get protein;@override $NutrientSummaryResponseDtoCopyWith<$Res> get fat;@override $SugarSummaryResponseDtoCopyWith<$Res> get sugar;@override $SodiumSummaryResponseDtoCopyWith<$Res> get sodium;

}
/// @nodoc
class __$TodayNutritionSummaryResponseDtoCopyWithImpl<$Res>
    implements _$TodayNutritionSummaryResponseDtoCopyWith<$Res> {
  __$TodayNutritionSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _TodayNutritionSummaryResponseDto _self;
  final $Res Function(_TodayNutritionSummaryResponseDto) _then;

/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? timezone = null,Object? analysisCount = null,Object? totalKcal = null,Object? baseScore = freezed,Object? modifierScore = freezed,Object? totalScore = freezed,Object? grade = freezed,Object? carbohydrate = null,Object? protein = null,Object? fat = null,Object? sugar = null,Object? sodium = null,}) {
  return _then(_TodayNutritionSummaryResponseDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,analysisCount: null == analysisCount ? _self.analysisCount : analysisCount // ignore: cast_nullable_to_non_nullable
as int,totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as double,baseScore: freezed == baseScore ? _self.baseScore : baseScore // ignore: cast_nullable_to_non_nullable
as int?,modifierScore: freezed == modifierScore ? _self.modifierScore : modifierScore // ignore: cast_nullable_to_non_nullable
as int?,totalScore: freezed == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutrientSummaryResponseDto,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as SugarSummaryResponseDto,sodium: null == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as SodiumSummaryResponseDto,
  ));
}

/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get carbohydrate {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get protein {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<$Res> get fat {
  
  return $NutrientSummaryResponseDtoCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SugarSummaryResponseDtoCopyWith<$Res> get sugar {
  
  return $SugarSummaryResponseDtoCopyWith<$Res>(_self.sugar, (value) {
    return _then(_self.copyWith(sugar: value));
  });
}/// Create a copy of TodayNutritionSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SodiumSummaryResponseDtoCopyWith<$Res> get sodium {
  
  return $SodiumSummaryResponseDtoCopyWith<$Res>(_self.sodium, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}
}


/// @nodoc
mixin _$NutrientSummaryResponseDto {

 double get intakeG; int get minG; int get targetG; int get maxG; double get achievementPercent; int? get score; String get status;
/// Create a copy of NutrientSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientSummaryResponseDtoCopyWith<NutrientSummaryResponseDto> get copyWith => _$NutrientSummaryResponseDtoCopyWithImpl<NutrientSummaryResponseDto>(this as NutrientSummaryResponseDto, _$identity);

  /// Serializes this NutrientSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientSummaryResponseDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.minG, minG) || other.minG == minG)&&(identical(other.targetG, targetG) || other.targetG == targetG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.achievementPercent, achievementPercent) || other.achievementPercent == achievementPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,minG,targetG,maxG,achievementPercent,score,status);

@override
String toString() {
  return 'NutrientSummaryResponseDto(intakeG: $intakeG, minG: $minG, targetG: $targetG, maxG: $maxG, achievementPercent: $achievementPercent, score: $score, status: $status)';
}


}

/// @nodoc
abstract mixin class $NutrientSummaryResponseDtoCopyWith<$Res>  {
  factory $NutrientSummaryResponseDtoCopyWith(NutrientSummaryResponseDto value, $Res Function(NutrientSummaryResponseDto) _then) = _$NutrientSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 double intakeG, int minG, int targetG, int maxG, double achievementPercent, int? score, String status
});




}
/// @nodoc
class _$NutrientSummaryResponseDtoCopyWithImpl<$Res>
    implements $NutrientSummaryResponseDtoCopyWith<$Res> {
  _$NutrientSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final NutrientSummaryResponseDto _self;
  final $Res Function(NutrientSummaryResponseDto) _then;

/// Create a copy of NutrientSummaryResponseDto
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
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientSummaryResponseDto].
extension NutrientSummaryResponseDtoPatterns on NutrientSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  String status)  $default,) {final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeG,  int minG,  int targetG,  int maxG,  double achievementPercent,  int? score,  String status)?  $default,) {final _that = this;
switch (_that) {
case _NutrientSummaryResponseDto() when $default != null:
return $default(_that.intakeG,_that.minG,_that.targetG,_that.maxG,_that.achievementPercent,_that.score,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientSummaryResponseDto implements NutrientSummaryResponseDto {
  const _NutrientSummaryResponseDto({required this.intakeG, required this.minG, required this.targetG, required this.maxG, required this.achievementPercent, this.score, required this.status});
  factory _NutrientSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$NutrientSummaryResponseDtoFromJson(json);

@override final  double intakeG;
@override final  int minG;
@override final  int targetG;
@override final  int maxG;
@override final  double achievementPercent;
@override final  int? score;
@override final  String status;

/// Create a copy of NutrientSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientSummaryResponseDtoCopyWith<_NutrientSummaryResponseDto> get copyWith => __$NutrientSummaryResponseDtoCopyWithImpl<_NutrientSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientSummaryResponseDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.minG, minG) || other.minG == minG)&&(identical(other.targetG, targetG) || other.targetG == targetG)&&(identical(other.maxG, maxG) || other.maxG == maxG)&&(identical(other.achievementPercent, achievementPercent) || other.achievementPercent == achievementPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,minG,targetG,maxG,achievementPercent,score,status);

@override
String toString() {
  return 'NutrientSummaryResponseDto(intakeG: $intakeG, minG: $minG, targetG: $targetG, maxG: $maxG, achievementPercent: $achievementPercent, score: $score, status: $status)';
}


}

/// @nodoc
abstract mixin class _$NutrientSummaryResponseDtoCopyWith<$Res> implements $NutrientSummaryResponseDtoCopyWith<$Res> {
  factory _$NutrientSummaryResponseDtoCopyWith(_NutrientSummaryResponseDto value, $Res Function(_NutrientSummaryResponseDto) _then) = __$NutrientSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 double intakeG, int minG, int targetG, int maxG, double achievementPercent, int? score, String status
});




}
/// @nodoc
class __$NutrientSummaryResponseDtoCopyWithImpl<$Res>
    implements _$NutrientSummaryResponseDtoCopyWith<$Res> {
  __$NutrientSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _NutrientSummaryResponseDto _self;
  final $Res Function(_NutrientSummaryResponseDto) _then;

/// Create a copy of NutrientSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = null,Object? minG = null,Object? targetG = null,Object? maxG = null,Object? achievementPercent = null,Object? score = freezed,Object? status = null,}) {
  return _then(_NutrientSummaryResponseDto(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,minG: null == minG ? _self.minG : minG // ignore: cast_nullable_to_non_nullable
as int,targetG: null == targetG ? _self.targetG : targetG // ignore: cast_nullable_to_non_nullable
as int,maxG: null == maxG ? _self.maxG : maxG // ignore: cast_nullable_to_non_nullable
as int,achievementPercent: null == achievementPercent ? _self.achievementPercent : achievementPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SugarSummaryResponseDto {

 double get intakeG; int get noPenaltyThresholdG; int get limitG; int get hardLimitG; double get limitPercent; int? get score; int get modifier; String get status;
/// Create a copy of SugarSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SugarSummaryResponseDtoCopyWith<SugarSummaryResponseDto> get copyWith => _$SugarSummaryResponseDtoCopyWithImpl<SugarSummaryResponseDto>(this as SugarSummaryResponseDto, _$identity);

  /// Serializes this SugarSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SugarSummaryResponseDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.noPenaltyThresholdG, noPenaltyThresholdG) || other.noPenaltyThresholdG == noPenaltyThresholdG)&&(identical(other.limitG, limitG) || other.limitG == limitG)&&(identical(other.hardLimitG, hardLimitG) || other.hardLimitG == hardLimitG)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,noPenaltyThresholdG,limitG,hardLimitG,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SugarSummaryResponseDto(intakeG: $intakeG, noPenaltyThresholdG: $noPenaltyThresholdG, limitG: $limitG, hardLimitG: $hardLimitG, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class $SugarSummaryResponseDtoCopyWith<$Res>  {
  factory $SugarSummaryResponseDtoCopyWith(SugarSummaryResponseDto value, $Res Function(SugarSummaryResponseDto) _then) = _$SugarSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 double intakeG, int noPenaltyThresholdG, int limitG, int hardLimitG, double limitPercent, int? score, int modifier, String status
});




}
/// @nodoc
class _$SugarSummaryResponseDtoCopyWithImpl<$Res>
    implements $SugarSummaryResponseDtoCopyWith<$Res> {
  _$SugarSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final SugarSummaryResponseDto _self;
  final $Res Function(SugarSummaryResponseDto) _then;

/// Create a copy of SugarSummaryResponseDto
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
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SugarSummaryResponseDto].
extension SugarSummaryResponseDtoPatterns on SugarSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SugarSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SugarSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SugarSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SugarSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SugarSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SugarSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SugarSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  String status)  $default,) {final _that = this;
switch (_that) {
case _SugarSummaryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeG,  int noPenaltyThresholdG,  int limitG,  int hardLimitG,  double limitPercent,  int? score,  int modifier,  String status)?  $default,) {final _that = this;
switch (_that) {
case _SugarSummaryResponseDto() when $default != null:
return $default(_that.intakeG,_that.noPenaltyThresholdG,_that.limitG,_that.hardLimitG,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SugarSummaryResponseDto implements SugarSummaryResponseDto {
  const _SugarSummaryResponseDto({required this.intakeG, required this.noPenaltyThresholdG, required this.limitG, required this.hardLimitG, required this.limitPercent, this.score, required this.modifier, required this.status});
  factory _SugarSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$SugarSummaryResponseDtoFromJson(json);

@override final  double intakeG;
@override final  int noPenaltyThresholdG;
@override final  int limitG;
@override final  int hardLimitG;
@override final  double limitPercent;
@override final  int? score;
@override final  int modifier;
@override final  String status;

/// Create a copy of SugarSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SugarSummaryResponseDtoCopyWith<_SugarSummaryResponseDto> get copyWith => __$SugarSummaryResponseDtoCopyWithImpl<_SugarSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SugarSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SugarSummaryResponseDto&&(identical(other.intakeG, intakeG) || other.intakeG == intakeG)&&(identical(other.noPenaltyThresholdG, noPenaltyThresholdG) || other.noPenaltyThresholdG == noPenaltyThresholdG)&&(identical(other.limitG, limitG) || other.limitG == limitG)&&(identical(other.hardLimitG, hardLimitG) || other.hardLimitG == hardLimitG)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeG,noPenaltyThresholdG,limitG,hardLimitG,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SugarSummaryResponseDto(intakeG: $intakeG, noPenaltyThresholdG: $noPenaltyThresholdG, limitG: $limitG, hardLimitG: $hardLimitG, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SugarSummaryResponseDtoCopyWith<$Res> implements $SugarSummaryResponseDtoCopyWith<$Res> {
  factory _$SugarSummaryResponseDtoCopyWith(_SugarSummaryResponseDto value, $Res Function(_SugarSummaryResponseDto) _then) = __$SugarSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 double intakeG, int noPenaltyThresholdG, int limitG, int hardLimitG, double limitPercent, int? score, int modifier, String status
});




}
/// @nodoc
class __$SugarSummaryResponseDtoCopyWithImpl<$Res>
    implements _$SugarSummaryResponseDtoCopyWith<$Res> {
  __$SugarSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _SugarSummaryResponseDto _self;
  final $Res Function(_SugarSummaryResponseDto) _then;

/// Create a copy of SugarSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeG = null,Object? noPenaltyThresholdG = null,Object? limitG = null,Object? hardLimitG = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_SugarSummaryResponseDto(
intakeG: null == intakeG ? _self.intakeG : intakeG // ignore: cast_nullable_to_non_nullable
as double,noPenaltyThresholdG: null == noPenaltyThresholdG ? _self.noPenaltyThresholdG : noPenaltyThresholdG // ignore: cast_nullable_to_non_nullable
as int,limitG: null == limitG ? _self.limitG : limitG // ignore: cast_nullable_to_non_nullable
as int,hardLimitG: null == hardLimitG ? _self.hardLimitG : hardLimitG // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SodiumSummaryResponseDto {

 double get intakeMg; int get adequateMg; int get riskReductionMg; int get hardLimitMg; double get limitPercent; int? get score; int get modifier; String get status;
/// Create a copy of SodiumSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SodiumSummaryResponseDtoCopyWith<SodiumSummaryResponseDto> get copyWith => _$SodiumSummaryResponseDtoCopyWithImpl<SodiumSummaryResponseDto>(this as SodiumSummaryResponseDto, _$identity);

  /// Serializes this SodiumSummaryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SodiumSummaryResponseDto&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.hardLimitMg, hardLimitMg) || other.hardLimitMg == hardLimitMg)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,hardLimitMg,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SodiumSummaryResponseDto(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, hardLimitMg: $hardLimitMg, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class $SodiumSummaryResponseDtoCopyWith<$Res>  {
  factory $SodiumSummaryResponseDtoCopyWith(SodiumSummaryResponseDto value, $Res Function(SodiumSummaryResponseDto) _then) = _$SodiumSummaryResponseDtoCopyWithImpl;
@useResult
$Res call({
 double intakeMg, int adequateMg, int riskReductionMg, int hardLimitMg, double limitPercent, int? score, int modifier, String status
});




}
/// @nodoc
class _$SodiumSummaryResponseDtoCopyWithImpl<$Res>
    implements $SodiumSummaryResponseDtoCopyWith<$Res> {
  _$SodiumSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final SodiumSummaryResponseDto _self;
  final $Res Function(SodiumSummaryResponseDto) _then;

/// Create a copy of SodiumSummaryResponseDto
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
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SodiumSummaryResponseDto].
extension SodiumSummaryResponseDtoPatterns on SodiumSummaryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SodiumSummaryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SodiumSummaryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SodiumSummaryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  String status)  $default,) {final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double intakeMg,  int adequateMg,  int riskReductionMg,  int hardLimitMg,  double limitPercent,  int? score,  int modifier,  String status)?  $default,) {final _that = this;
switch (_that) {
case _SodiumSummaryResponseDto() when $default != null:
return $default(_that.intakeMg,_that.adequateMg,_that.riskReductionMg,_that.hardLimitMg,_that.limitPercent,_that.score,_that.modifier,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SodiumSummaryResponseDto implements SodiumSummaryResponseDto {
  const _SodiumSummaryResponseDto({required this.intakeMg, required this.adequateMg, required this.riskReductionMg, required this.hardLimitMg, required this.limitPercent, this.score, required this.modifier, required this.status});
  factory _SodiumSummaryResponseDto.fromJson(Map<String, dynamic> json) => _$SodiumSummaryResponseDtoFromJson(json);

@override final  double intakeMg;
@override final  int adequateMg;
@override final  int riskReductionMg;
@override final  int hardLimitMg;
@override final  double limitPercent;
@override final  int? score;
@override final  int modifier;
@override final  String status;

/// Create a copy of SodiumSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumSummaryResponseDtoCopyWith<_SodiumSummaryResponseDto> get copyWith => __$SodiumSummaryResponseDtoCopyWithImpl<_SodiumSummaryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SodiumSummaryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumSummaryResponseDto&&(identical(other.intakeMg, intakeMg) || other.intakeMg == intakeMg)&&(identical(other.adequateMg, adequateMg) || other.adequateMg == adequateMg)&&(identical(other.riskReductionMg, riskReductionMg) || other.riskReductionMg == riskReductionMg)&&(identical(other.hardLimitMg, hardLimitMg) || other.hardLimitMg == hardLimitMg)&&(identical(other.limitPercent, limitPercent) || other.limitPercent == limitPercent)&&(identical(other.score, score) || other.score == score)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intakeMg,adequateMg,riskReductionMg,hardLimitMg,limitPercent,score,modifier,status);

@override
String toString() {
  return 'SodiumSummaryResponseDto(intakeMg: $intakeMg, adequateMg: $adequateMg, riskReductionMg: $riskReductionMg, hardLimitMg: $hardLimitMg, limitPercent: $limitPercent, score: $score, modifier: $modifier, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SodiumSummaryResponseDtoCopyWith<$Res> implements $SodiumSummaryResponseDtoCopyWith<$Res> {
  factory _$SodiumSummaryResponseDtoCopyWith(_SodiumSummaryResponseDto value, $Res Function(_SodiumSummaryResponseDto) _then) = __$SodiumSummaryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 double intakeMg, int adequateMg, int riskReductionMg, int hardLimitMg, double limitPercent, int? score, int modifier, String status
});




}
/// @nodoc
class __$SodiumSummaryResponseDtoCopyWithImpl<$Res>
    implements _$SodiumSummaryResponseDtoCopyWith<$Res> {
  __$SodiumSummaryResponseDtoCopyWithImpl(this._self, this._then);

  final _SodiumSummaryResponseDto _self;
  final $Res Function(_SodiumSummaryResponseDto) _then;

/// Create a copy of SodiumSummaryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intakeMg = null,Object? adequateMg = null,Object? riskReductionMg = null,Object? hardLimitMg = null,Object? limitPercent = null,Object? score = freezed,Object? modifier = null,Object? status = null,}) {
  return _then(_SodiumSummaryResponseDto(
intakeMg: null == intakeMg ? _self.intakeMg : intakeMg // ignore: cast_nullable_to_non_nullable
as double,adequateMg: null == adequateMg ? _self.adequateMg : adequateMg // ignore: cast_nullable_to_non_nullable
as int,riskReductionMg: null == riskReductionMg ? _self.riskReductionMg : riskReductionMg // ignore: cast_nullable_to_non_nullable
as int,hardLimitMg: null == hardLimitMg ? _self.hardLimitMg : hardLimitMg // ignore: cast_nullable_to_non_nullable
as int,limitPercent: null == limitPercent ? _self.limitPercent : limitPercent // ignore: cast_nullable_to_non_nullable
as double,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
