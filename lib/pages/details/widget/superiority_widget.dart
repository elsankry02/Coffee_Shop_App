import 'package:flutter/material.dart';

import '../../../constants/image_manger.dart';

class SuperiorityWidget extends StatelessWidget {
  const SuperiorityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
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
