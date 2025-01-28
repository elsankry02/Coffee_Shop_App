import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptrionWidget extends StatelessWidget {
  const DescriptrionWidget({
    super.key,
    required this.cardModel,
    required this.textTeme,
  });

  final CardModel cardModel;
  final TextTheme textTeme;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      cardModel.description,
      trimMode: TrimMode.Line,
      delimiterStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
      trimLines: 2,
      //! Read More
      trimCollapsedText: 'Read More',
      moreStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
      //! Read less
      trimExpandedText: 'Read less',
      lessStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
    );
  }
}
