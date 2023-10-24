import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/presentation/shop_screen/models/shop_model.dart';

class ShopController extends GetxController {
  Rx<ShopModel> shopModelObj = ShopModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
