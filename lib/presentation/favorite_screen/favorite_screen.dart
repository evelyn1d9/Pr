import '../favorite_screen/widgets/favorite_item_widget.dart';
import 'controller/favorite_controller.dart';
import 'models/favorite_item_model.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:evelyn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:evelyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends GetWidget<FavoriteController> {
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
                      onTapArrowleft2();
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
                padding: getPadding(left: 22, top: 25, right: 22, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_favorite".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtPlayfairDisplayItalicRegular40Gray800),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 17, top: 19, right: 17),
                              padding: getPadding(
                                  left: 84, top: 25, right: 84, bottom: 25),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgCoupon),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_coupon".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlayfairDisplayRomanBold45))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 30, right: 1),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(215),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.favoriteModelObj.value
                                  .favoriteItemList.value.length,
                              itemBuilder: (context, index) {
                                FavoriteItemModel model = controller
                                    .favoriteModelObj
                                    .value
                                    .favoriteItemList
                                    .value[index];
                                return FavoriteItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
