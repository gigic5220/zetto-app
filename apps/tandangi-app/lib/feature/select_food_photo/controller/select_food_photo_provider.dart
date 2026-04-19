import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:core_app/core/notifier/notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';
import 'package:tandangi/flavors.dart';
import 'package:path/path.dart' as p;

part 'select_food_photo_action_mixin.dart';
part 'select_food_photo_provider.g.dart';
part 'select_food_photo_state_mixin.dart';

enum PhotoUploadType { camera, gallery }

@riverpod
class _PageInitCompleter extends _$PageInitCompleter {
  @override
  Completer<void> build() {
    return Completer<void>();
  }

  void complete() {
    state.complete();
  }
}

@riverpod
class _PhotoUploadType extends _$PhotoUploadType {
  @override
  PhotoUploadType build() {
    return PhotoUploadType.camera;
  }

  void set(PhotoUploadType value) {
    state = value;
  }
}

@riverpod
class _AlbumAssets extends InfinityScrollNotifier<AssetEntity> {
  AssetPathEntity? _album;
  int _page = 0;
  int _totalCount = 0;

  @override
  Future<List<AssetEntity>> refreshItems() async {
    _page = 0;
    return await _getAlbumAssets();
  }

  @override
  List<AssetEntity>? get skeletonMockItems => List.generate(
    20,
    (index) =>
        AssetEntity(id: index.toString(), typeInt: 0, width: 0, height: 0),
  );

  @override
  Future<List<AssetEntity>> build() async {
    final permission = await _requestPermission();
    if (!permission) {
      return [];
    }
    _album ??= await _getAlbums().then((albums) async {
      for (final album in albums) {
        final count = await album.assetCountAsync;
        debugPrint('album: ${album.name}, count: $count, id: ${album.id}');
      }
      return albums.first;
    });
    _totalCount = await _album!.assetCountAsync;
    return await _getAlbumAssets();
  }

  Future<bool> _requestPermission() async {
    final PermissionState permission =
        await PhotoManager.requestPermissionExtend();

    if (permission.isAuth || permission == PermissionState.limited) {
      return true;
    }

    await PhotoManager.openSetting();

    return false;
  }

  Future<List<AssetPathEntity>> _getAlbums() async {
    return PhotoManager.getAssetPathList(
      type: RequestType.image,
      hasAll: true,
      filterOption: FilterOptionGroup(
        orders: [
          const OrderOption(type: OrderOptionType.createDate, asc: false),
        ],
      ),
    );
  }

  Future<List<AssetEntity>> _getAlbumAssets() async {
    if (_album == null) {
      return [];
    }
    return _album!.getAssetListPaged(page: _page, size: 60);
  }

  @override
  bool get isLoadMore => _totalCount > (_page + 1) * 60;

  @override
  Future<List<AssetEntity>> loadMoreItems() async {
    _page++;
    return await _getAlbumAssets();
  }
}

@riverpod
class _SelectedAlbumAsset extends _$SelectedAlbumAsset {
  @override
  AssetEntity? build() {
    return null;
  }

  void set(AssetEntity? value) {
    state = value;
  }
}
