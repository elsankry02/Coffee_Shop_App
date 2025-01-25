import 'package:coffee_shop/core/constants/image_manger.dart';
import 'package:flutter/material.dart';

class BannerImageWidget extends StatelessWidget {
  const BannerImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Image.asset(ImageManger.kBanner),
    );
  }
}
