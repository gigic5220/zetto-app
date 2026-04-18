import 'dart:async';
import 'dart:io';

import 'package:core_app/components/async_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:tandangi/feature/shop/controller/shop_provider.dart';

const String _kMonthlySubscriptionId = 'tandangi_monthly_test';

const List<String> _kSubscriptionProductIds = <String>[_kMonthlySubscriptionId];

class ShopPage extends ConsumerStatefulWidget {
  const ShopPage({super.key});

  static const routeName = 'shop';

  @override
  ConsumerState<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends ConsumerState<ShopPage>
    with ShopStateMixin, ShopActionMixin {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  late final StreamSubscription<List<PurchaseDetails>> _subscription;

  bool _isAvailable = false;
  bool _purchasePending = false;
  bool _loading = true;

  String? _queryProductError;

  List<String> _notFoundIds = <String>[];
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];

  @override
  void initState() {
    super.initState();

    _subscription = _inAppPurchase.purchaseStream.listen(
      _listenToPurchaseUpdated,
      onDone: () {
        _subscription.cancel();
      },
      onError: (Object error) {
        setState(() {
          _purchasePending = false;
        });
      },
    );

    initStoreInfo();
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();

    if (!isAvailable) {
      setState(() {
        _isAvailable = false;
        _products = <ProductDetails>[];
        _purchases = <PurchaseDetails>[];
        _notFoundIds = <String>[];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();

      await iosPlatformAddition.setDelegate(TandangiPaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse = await _inAppPurchase
        .queryProductDetails(_kSubscriptionProductIds.toSet());

    if (productDetailResponse.error != null) {
      setState(() {
        _queryProductError = productDetailResponse.error!.message;
        _isAvailable = isAvailable;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _notFoundIds = productDetailResponse.notFoundIDs;
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    print(productDetailResponse.productDetails);

    setState(() {
      _queryProductError = null;
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _notFoundIds = productDetailResponse.notFoundIDs;
      _purchasePending = false;
      _loading = false;
    });
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();

      iosPlatformAddition.setDelegate(null);
    }

    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> stack = <Widget>[];

    if (_queryProductError == null) {
      stack.add(
        ListView(
          children: <Widget>[
            _buildConnectionCheckTile(),
            _buildSubscriptionList(),
            _buildRestoreButton(),
          ],
        ),
      );
    } else {
      stack.add(Center(child: Text(_queryProductError!)));
    }

    if (_purchasePending) {
      stack.add(
        const Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.3,
              child: ModalBarrier(dismissible: false, color: Colors.grey),
            ),
            Center(child: CircularProgressIndicator()),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('구독')),
      body: Stack(
        children: [
          ...stack,
          Consumer(
            builder: (context, ref, child) {
              final products = watchProducts(ref);
              return AsyncWidget(
                asyncValue: products,
                builder: (products) {
                  return _buildSubscriptionList();
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Card _buildConnectionCheckTile() {
    if (_loading) {
      return const Card(child: ListTile(title: Text('스토어 연결 확인 중...')));
    }

    final Widget storeHeader = ListTile(
      leading: Icon(
        _isAvailable ? Icons.check : Icons.block,
        color: _isAvailable
            ? Colors.green
            : ThemeData.light().colorScheme.error,
      ),
      title: Text(_isAvailable ? '스토어 연결 가능' : '스토어 연결 불가'),
    );

    final List<Widget> children = <Widget>[storeHeader];

    if (!_isAvailable) {
      children.addAll(<Widget>[
        const Divider(),
        ListTile(
          title: Text(
            '결제 시스템에 연결할 수 없습니다.',
            style: TextStyle(color: ThemeData.light().colorScheme.error),
          ),
          subtitle: const Text('상품 등록, 앱 배포 상태, 테스트 계정 설정을 확인해주세요.'),
        ),
      ]);
    }

    return Card(child: Column(children: children));
  }

  Card _buildSubscriptionList() {
    if (_loading) {
      return const Card(
        child: ListTile(
          leading: CircularProgressIndicator(),
          title: Text('구독 상품을 불러오는 중...'),
        ),
      );
    }

    if (!_isAvailable) {
      return const Card();
    }

    final List<Widget> children = <Widget>[
      const ListTile(
        title: Text('탄단지 프리미엄'),
        subtitle: Text('광고 제거, 분석 횟수 증가, 리포트 확장'),
      ),
      const Divider(),
    ];

    if (_notFoundIds.isNotEmpty) {
      children.add(
        ListTile(
          title: Text(
            '[${_notFoundIds.join(", ")}] 상품을 찾을 수 없습니다.',
            style: TextStyle(color: ThemeData.light().colorScheme.error),
          ),
          subtitle: const Text(
            'App Store Connect 또는 Play Console에 등록된 상품 ID와 코드의 상품 ID가 일치하는지 확인해주세요.',
          ),
        ),
      );
    }

    final Map<String, PurchaseDetails> purchases =
        Map<String, PurchaseDetails>.fromEntries(
          _purchases.map((PurchaseDetails purchase) {
            return MapEntry<String, PurchaseDetails>(
              purchase.productID,
              purchase,
            );
          }),
        );

    final List<ProductDetails> sortedProducts = [..._products]
      ..sort((a, b) {
        const order = {_kMonthlySubscriptionId: 0};

        return (order[a.id] ?? 99).compareTo(order[b.id] ?? 99);
      });

    children.addAll(
      sortedProducts.map((ProductDetails productDetails) {
        final PurchaseDetails? previousPurchase = purchases[productDetails.id];

        final bool isPurchased =
            previousPurchase?.status == PurchaseStatus.purchased ||
            previousPurchase?.status == PurchaseStatus.restored;

        return ListTile(
          title: Text(_getProductTitle(productDetails)),
          subtitle: Text(productDetails.description),
          trailing: isPurchased && Platform.isIOS
              ? IconButton(
                  onPressed: () => confirmPriceChange(context),
                  icon: const Icon(Icons.upgrade),
                )
              : TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _purchasePending
                      ? null
                      : () => _buySubscription(
                          productDetails: productDetails,
                          purchases: purchases,
                        ),
                  child: Text(productDetails.price),
                ),
        );
      }),
    );

    return Card(child: Column(children: children));
  }

  String _getProductTitle(ProductDetails productDetails) {
    switch (productDetails.id) {
      case _kMonthlySubscriptionId:
        return '프리미엄 월간 구독';
      default:
        return productDetails.title;
    }
  }

  Widget _buildRestoreButton() {
    if (_loading) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            onPressed: _purchasePending
                ? null
                : () {
                    _inAppPurchase.restorePurchases();
                  },
            child: const Text('구매 복원'),
          ),
          const SizedBox(height: 8),
          const Text(
            '구독은 자동 갱신되며, 각 스토어 계정 설정에서 언제든 해지할 수 있습니다.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Future<void> _buySubscription({
    required ProductDetails productDetails,
    required Map<String, PurchaseDetails> purchases,
  }) async {
    late final PurchaseParam purchaseParam;

    if (Platform.isAndroid) {
      final GooglePlayPurchaseDetails? oldSubscription = _getOldSubscription(
        productDetails: productDetails,
        purchases: purchases,
      );

      purchaseParam = GooglePlayPurchaseParam(
        productDetails: productDetails,
        changeSubscriptionParam: oldSubscription != null
            ? ChangeSubscriptionParam(
                oldPurchaseDetails: oldSubscription,
                replacementMode: ReplacementMode.withTimeProration,
              )
            : null,
      );
    } else {
      purchaseParam = PurchaseParam(productDetails: productDetails);
    }

    await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
  }

  void showPendingUI() {
    setState(() {
      _purchasePending = true;
    });
  }

  void handleError(IAPError error) {
    setState(() {
      _purchasePending = false;
    });
  }

  Future<void> deliverSubscription(PurchaseDetails purchaseDetails) async {
    setState(() {
      final int index = _purchases.indexWhere(
        (PurchaseDetails item) => item.productID == purchaseDetails.productID,
      );

      if (index >= 0) {
        _purchases[index] = purchaseDetails;
      } else {
        _purchases.add(purchaseDetails);
      }

      _purchasePending = false;
    });
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // TODO:
    // 실제 서비스에서는 여기서 바로 true를 반환하면 안 됨.
    //
    // 서버로 아래 값을 전달해서 검증해야 함.
    //
    // purchaseDetails.productID
    // purchaseDetails.purchaseID
    // purchaseDetails.verificationData.source
    // purchaseDetails.verificationData.serverVerificationData
    //
    // 서버 검증 후 구독 상태를 DB에 저장하고,
    // user/me 같은 API에서 isPremium 값을 내려주는 구조를 추천.
    return true;
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {
    setState(() {
      _purchasePending = false;
    });

    // TODO:
    // 검증 실패 안내 처리
  }

  Future<void> _listenToPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        showPendingUI();
        continue;
      }

      if (purchaseDetails.status == PurchaseStatus.error) {
        handleError(purchaseDetails.error!);
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        final bool valid = await _verifyPurchase(purchaseDetails);

        if (valid) {
          await deliverSubscription(purchaseDetails);
        } else {
          _handleInvalidPurchase(purchaseDetails);
          continue;
        }
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        setState(() {
          _purchasePending = false;
        });
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  Future<void> confirmPriceChange(BuildContext context) async {
    if (!Platform.isIOS) {
      return;
    }

    final InAppPurchaseStoreKitPlatformAddition iapStoreKitPlatformAddition =
        _inAppPurchase
            .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();

    await iapStoreKitPlatformAddition.showPriceConsentIfNeeded();
  }

  GooglePlayPurchaseDetails? _getOldSubscription({
    required ProductDetails productDetails,
    required Map<String, PurchaseDetails> purchases,
  }) {
    // Android에서 월간 <-> 연간 구독 변경 시 기존 구독 정보를 넘기기 위한 로직.
    //
    // iOS는 App Store Connect의 Subscription Group 안에서 처리되므로
    // 별도 oldSubscription 전달이 필요하지 않음.

    // if (productDetails.id == _kMonthlySubscriptionId &&
    //     purchases[_kYearlySubscriptionId] != null) {
    //   return purchases[_kYearlySubscriptionId]! as GooglePlayPurchaseDetails;
    // }

    // if (productDetails.id == _kYearlySubscriptionId &&
    //     purchases[_kMonthlySubscriptionId] != null) {
    //   return purchases[_kMonthlySubscriptionId]! as GooglePlayPurchaseDetails;
    // }

    return null;
  }
}
