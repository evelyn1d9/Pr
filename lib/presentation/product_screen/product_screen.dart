import '../product_screen/widgets/product_item_widget.dart';
import 'controller/product_controller.dart';
import 'models/product_item_model.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:evelyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends GetWidget<ProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray30001,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgGroup36,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearchBlueGray900,
                      margin: getMargin(left: 24, top: 13, right: 13)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgBag,
                      margin: getMargin(left: 24, top: 13, right: 13)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgMenuBlueGray900,
                      margin: getMargin(left: 24, top: 13, right: 37))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 27, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 22),
                          child: Text("lbl_boyfriend_tee".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayItalicRegular40Bluegray900)),
                      Container(
                          height: getVerticalSize(424),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(top: 24),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.productModelObj.value
                                  .productItemList.value.length,
                              itemBuilder: (context, index) {
                                ProductItemModel model = controller
                                    .productModelObj
                                    .value
                                    .productItemList
                                    .value[index];
                                return ProductItemWidget(model);
                              }))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 41, right: 15, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getSize(46),
                                        padding: getPadding(
                                            left: 17,
                                            top: 7,
                                            right: 17,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .txtOutlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder10),
                                        child: Text("lbl_s".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlayfairDisplayMedium22)),
                                    Container(
                                        width: getHorizontalSize(45),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 13,
                                            top: 7,
                                            right: 13,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .txtOutlineBlack9003f
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder10),
                                        child: Text("lbl_m".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlayfairDisplayMedium22WhiteA700)),
                                    Container(
                                        width: getSize(46),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 7,
                                            right: 16,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .txtOutlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder10),
                                        child: Text("lbl_l".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlayfairDisplayMedium22)),
                                    Container(
                                        width: getHorizontalSize(45),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 8,
                                            top: 7,
                                            right: 8,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .txtOutlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder10),
                                        child: Text("lbl_xl".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlayfairDisplayMedium22)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVolumeGray800,
                                        height: getVerticalSize(46),
                                        width: getHorizontalSize(33)),
                                    Container(
                                        width: getHorizontalSize(41),
                                        padding: getPadding(
                                            left: 18,
                                            top: 13,
                                            right: 18,
                                            bottom: 13),
                                        decoration:
                                            AppDecoration.txtOutlineGray800,
                                        child: Text("lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular12)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFile,
                                        height: getVerticalSize(46),
                                        width: getHorizontalSize(33))
                                  ])))
                    ])),
            bottomNavigationBar: GestureDetector(
                onTap: () {
                  onTapColumnaddtocart();
                },
                child: Container(
                    padding:
                        getPadding(left: 149, top: 33, right: 149, bottom: 33),
                    decoration: AppDecoration.fillBluegray900,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("lbl_add_to_cart".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlayfairDisplayRomanBold22),
                          CustomImageView(
                              svgPath: ImageConstant.imgTelevision,
                              height: getVerticalSize(13),
                              width: getHorizontalSize(91),
                              margin: getMargin(top: 6, bottom: 3))
                        ])))));
  }

  onTapColumnaddtocart() {
    Get.toNamed(
      AppRoutes.myOrderScreen,
    );
  }

  onTapArrowleft3() {
    Get.back();
  }
}
