import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/presentation/my_order_screen/models/my_order_model.dart';

class MyOrderController extends GetxController {
  Rx<MyOrderModel> myOrderModelObj = MyOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
