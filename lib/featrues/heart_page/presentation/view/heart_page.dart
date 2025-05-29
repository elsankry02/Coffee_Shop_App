import 'package:coffee_shop/core/constants/image_manger.dart';
import 'package:flutter/material.dart';

class HeartPage extends StatelessWidget {
  const HeartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(ImageManger.kHeart),
          )
        ],
      ),
    );
  }
}
