import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/constants/svg_manger.dart';
import 'package:coffee_shop/features/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.h,
    required this.textTeme,
    required this.cardModel,
  });

  final double h;
  final TextTheme textTeme;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //! SvgPicture kVector
        SvgPicture.asset(
          height: h * 0.020,
          SvgManger.kVector,
          fit: BoxFit.cover,
        ),
        RichText(
          text: TextSpan(
            style: textTeme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
            children: [
              //! rate
              TextSpan(text: " ${cardModel.rate} "),
              //! rating
              TextSpan(
                  text: "(${cardModel.rating})",
                  style: textTeme.bodySmall!.copyWith(color: ColorManger.k6)),
            ],
          ),
        ),
      ],
    );
  }
}
