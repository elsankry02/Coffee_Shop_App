import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/components/custom_button.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/router/router.dart';
import 'package:coffee_shop/features/data/models/onboarding_model.dart';
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
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: onboardingModelFunc().length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Image.asset(onboardingModelFunc()[index].image),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: h * 0.655),
                    child: Center(
                      //! titel
                      child: Text(
                        textAlign: TextAlign.center,
                        onboardingModelFunc()[index].titel,
                        style: textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: h * 0.020),
              //! Subtitel
              Text(
                textAlign: TextAlign.center,
                onboardingModelFunc()[index].subTitel,
                style: textTheme.labelLarge!.copyWith(color: ColorManger.k6),
              ),
              SizedBox(height: h * 0.020),
              //! Click
              GestureDetector(
                onTap: () {
                  context.router.push(NavBarRoute());
                },
                //! Custtom Button
                child: CustomButton(
                  titel: 'Get Started',
                  marginHorizontal: w * 0.050,
                  width: w * 0.327,
                  height: h * 0.056,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
