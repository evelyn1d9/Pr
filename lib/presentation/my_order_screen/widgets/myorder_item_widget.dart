import '../controller/my_order_controller.dart';
import '../models/myorder_item_model.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyorderItemWidget extends StatelessWidget {
  MyorderItemWidget(this.myorderItemModelObj);

  MyorderItemModel myorderItemModelObj;

  var controller = Get.find<MyOrderController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle10237x1751,
            height: getVerticalSize(
              203,
            ),
            width: getHorizontalSize(
              150,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                30,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 34,
              bottom: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    101,
                  ),
                  child: Text(
                    "msg_vertlune_boyfri".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlayfairDisplayMedium16Bluegray900,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    37,
                  ),
                  margin: getMargin(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_yellow_size_8".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlayfairDisplayRomanBold12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 9,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    28,
                                  ),
                                  fontFamily: 'Playfair Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "lbl_5".tr.toUpperCase(),
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    28,
                                  ),
                                  fontFamily: 'Playfair Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "lbl_8".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    28,
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
                          left: 89,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_1".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    36,
                                  ),
                                  fontFamily: 'Playfair Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "lbl_x".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    18,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
