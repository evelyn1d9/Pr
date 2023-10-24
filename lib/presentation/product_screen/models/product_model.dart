import 'package:get/get.dart';
import 'product_item_model.dart';

class ProductModel {
  Rx<List<ProductItemModel>> productItemList =
      Rx(List.generate(3, (index) => ProductItemModel()));
}
