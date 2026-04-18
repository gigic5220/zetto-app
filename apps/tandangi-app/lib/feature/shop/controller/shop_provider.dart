import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/entity/product_entity.dart';
import 'package:tandangi/domain/repository/product_repository.dart';

part 'shop_action_mixin.dart';
part 'shop_provider.g.dart';
part 'shop_state_mixin.dart';

@riverpod
class _IsStoreAvailable extends _$IsStoreAvailable {
  @override
  Future<bool> build() async {
    return await InAppPurchase.instance.isAvailable();
  }
}

@riverpod
class _Products extends _$Products {
  @override
  Future<List<ProductEntity>> build() async {
    final InAppPurchase _inAppPurchase = InAppPurchase.instance;

    final PagedListEntity<ProductEntity> productEntities =
        await getIt<ProductRepository>().getProducts();

    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();

      await iosPlatformAddition.setDelegate(TandangiPaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse = await _inAppPurchase
        .queryProductDetails(
          productEntities.content
              .map((productEntity) => productEntity.storeId)
              .toSet(),
        );
    return productEntities.content
        .where(
          (productEntity) => productDetailResponse.productDetails.any(
            (productDetail) => productDetail.id == productEntity.storeId,
          ),
        )
        .toList();
  }
}

class TandangiPaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
    SKPaymentTransactionWrapper transaction,
    SKStorefrontWrapper storefront,
  ) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}
