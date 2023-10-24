import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/presentation/product_screen/models/product_model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModelObj = ProductModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
