import '../controller/favorite_controller.dart';
import '../models/favorite_item_model.dart';
import 'package:evelyn_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(this.favoriteItemModelObj);

  FavoriteItemModel favoriteItemModelObj;

  var controller = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle12180x1751,
          height: getVerticalSize(
            180,
          ),
          width: getHorizontalSize(
            175,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              30,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 12,
          ),
          child: Obx(
            () => Text(
              favoriteItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPlayfairDisplayMedium16Bluegray400,
            ),
          ),
        ),
      ],
    );
  }
}
