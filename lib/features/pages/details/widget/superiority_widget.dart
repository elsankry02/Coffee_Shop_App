import '../../../../core/constants/image_manger.dart';
import 'package:flutter/material.dart';

class SuperiorityWidget extends StatelessWidget {
  const SuperiorityWidget({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //! kFastDelivery
        Image.asset(height: h * 0.044, ImageManger.kFastDelivery),
        SizedBox(width: w * 0.020),
        //! kQualityBean
        Image.asset(height: h * 0.044, ImageManger.kQualityBean),
        SizedBox(width: w * 0.020),
        //! kExtraMilk
        Image.asset(height: h * 0.044, ImageManger.kExtraMilk),
      ],
    );
  }
}
