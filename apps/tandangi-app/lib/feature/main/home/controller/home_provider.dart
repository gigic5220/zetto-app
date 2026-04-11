import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/user_character_detail_entity.dart';
import 'package:tandangi/domain/repository/character_repository.dart';

part 'home_action_mixin.dart';
part 'home_provider.g.dart';
part 'home_state_mixin.dart';

@riverpod
class _UserCharacterDetail extends _$UserCharacterDetail {
  @override
  Future<UserCharacterDetailEntity> build() async {
    return await getIt<CharacterRepository>().getUserCharacterDetail();
  }
}
