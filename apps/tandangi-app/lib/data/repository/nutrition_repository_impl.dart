import 'package:tandangi/data/data_source/nutrition_remote_data_source.dart';
import 'package:tandangi/data/dto/user_nutrition_summary_target_basis_update_request_dto.dart';
import 'package:tandangi/data/mapper/nutrition_mapper.dart';
import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';
import 'package:tandangi/domain/entity/today_nutrition_summary_entity.dart';
import 'package:tandangi/domain/enum/nutrition_summary_target_basis_enum.dart';
import 'package:tandangi/domain/repository/nutrition_repository.dart';

class NutritionRepositoryImpl implements NutritionRepository {
  final NutritionRemoteDataSource remote;

  NutritionRepositoryImpl(this.remote);

  @override
  Future<NutritionStandardEntity> getNutritionStandard() async {
    final response = await remote.getNutritionStandard();
    return NutritionMapper.toNutritionStandardEntity(response);
  }

  @override
  Future<TodayNutritionSummaryEntity> getTodayNutritionSummary() async {
    final response = await remote.getTodayNutritionSummary();
    return NutritionMapper.toTodayNutritionSummaryEntity(response);
  }

  @override
  Future<NutritionStandardEntity> updateSummaryTargetBasis(
    NutritionSummaryTargetBasisEnum summaryTargetBasis,
  ) async {
    final request = UserNutritionSummaryTargetBasisUpdateRequestDto(
      summaryTargetBasis: summaryTargetBasis.value,
    );
    final response = await remote.patchSummaryTargetBasis(request);
    return NutritionMapper.toNutritionStandardEntity(response);
  }
}
