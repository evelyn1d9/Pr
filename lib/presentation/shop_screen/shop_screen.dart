import 'controller/shop_controller.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:evelyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:evelyn_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShopScreen extends GetWidget<ShopController> {
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
                      onTapArrowleft1();
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
                padding: getPadding(left: 22, top: 24, right: 22, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 2),
                          child: Text("lbl_shop".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayItalicRegular40Gray800)),
                      Padding(
                          padding: getPadding(left: 3, top: 1),
                          child: Text("msg_hollywood_hairs".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPlayfairDisplayMedium14Gray800)),
                      Padding(
                          padding: getPadding(left: 2, top: 68),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: getHorizontalSize(169),
                                    text: "lbl_sort".tr,
                                    margin: getMargin(bottom: 4),
                                    prefixWidget: Container(
                                        margin: getMargin(right: 10),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgMenu))),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    width: getHorizontalSize(177),
                                    text: "lbl_filter".tr,
                                    variant: ButtonVariant.FillGray800,
                                    fontStyle: ButtonFontStyle
                                        .PlayfairDisplayMedium22WhiteA700,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 10),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFilter)))
                              ])),
                      Padding(
                          padding:
                              getPadding(left: 2, top: 27, right: 2, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(right: 8),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle9237x1751,
                                                  height: getVerticalSize(237),
                                                  width: getHorizontalSize(175),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(30))),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Text(
                                                      "lbl_surge_short".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlayfairDisplayMedium16Gray800)),
                                              Text("lbl_68_usd2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlayfairDisplayMedium16Gray60003)
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 8),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle10237x1751,
                                                  height: getVerticalSize(237),
                                                  width: getHorizontalSize(175),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(30))),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Text(
                                                      "msg_sweat_jogger_fr".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlayfairDisplayMedium16Gray800)),
                                              Text("lbl_68_usd2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlayfairDisplayMedium16Gray60003)
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
