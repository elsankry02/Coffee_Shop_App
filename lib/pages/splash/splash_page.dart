import 'package:auto_route/auto_route.dart';
import '../../constants/image_manger.dart';
import '../../router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    splashCoffeeShopFunc();
    super.initState();
  }

  @override
  void dispose() {
    splashCoffeeShopFunc();
    super.dispose();
  }

  splashCoffeeShopFunc() {
    Future.delayed(Duration(seconds: 2), () {
      context.router.replace(OnboardingRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            //! Image
            child: Image.asset(
              fit: BoxFit.cover,
              ImageManger.kOnBoardingImage,
            ),
          ),
        ],
      ),
    );
  }
}
