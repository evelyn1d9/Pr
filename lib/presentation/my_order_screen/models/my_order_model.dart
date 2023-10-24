import 'package:get/get.dart';
import 'myorder_item_model.dart';

class MyOrderModel {
  Rx<List<MyorderItemModel>> myorderItemList =
      Rx(List.generate(3, (index) => MyorderItemModel()));
}
