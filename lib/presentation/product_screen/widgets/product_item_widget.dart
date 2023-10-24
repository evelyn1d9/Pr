import '../controller/product_controller.dart';
import '../models/product_item_model.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(this.productItemModelObj);

  ProductItemModel productItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          400,
        ),
        width: getHorizontalSize(
          335,
        ),
        margin: getMargin(
          right: 16,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle14400x3351,
              height: getVerticalSize(
                400,
              ),
              width: getHorizontalSize(
                335,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  30,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 34,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                36,
                              ),
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_5".tr.toUpperCase(),
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                36,
                              ),
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_8".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                36,
                              ),
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 171,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomIconButton(
                          height: 55,
                          width: 55,
                          margin: getMargin(
                            top: 70,
                            bottom: 24,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgFavorite,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup48,
                          height: getVerticalSize(
                            149,
                          ),
                          width: getHorizontalSize(
                            158,
                          ),
                          margin: getMargin(
                            left: 98,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
