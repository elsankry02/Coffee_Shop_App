import 'package:auto_route/annotations.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/constants/image_manger.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                //! Image
                Image.asset(
                  ImageManger.kOnBoardingImage,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: h * 0.61, start: w * 0.10),
                  //! title
                  child: Text(
                    textAlign: TextAlign.center,
                    'Fall in Love with\n Coffee in Blissful\n Delight!',
                    style:
                        textTheme.headlineLarge!.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.020),
            //! SubTitel
            Text(
              textAlign: TextAlign.center,
              'Welcome to our cozy coffee corner, where\n every cup is a delightful for you.',
              style: textTheme.labelLarge!.copyWith(color: ColorManger.k6),
            ),
            SizedBox(height: h * 0.050),
            //! Click
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                
              },
              //! Custtom Button
              child: Container(
                height: h * 0.060,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: ColorManger.k1),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: textTheme.labelMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
