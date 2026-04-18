part of 'shop_provider.dart';

mixin ShopStateMixin {
  AsyncValue<List<ProductEntity>> watchProducts(WidgetRef ref) {
    return ref.watch(_productsProvider);
  }
}
