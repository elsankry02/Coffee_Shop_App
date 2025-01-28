import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.titel,
    required this.marginHorizontal,
    required this.height,
    required this.width,
  });

  final String titel;
  final double height;
  final double width;
  final double marginHorizontal;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: marginHorizontal),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(16),
          color: ColorManger.kMaterialColor),
      child: Center(
        child: Text(
          //! Container Text
          titel,
          style: textTheme.labelMedium!
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
