import 'package:auto_route/auto_route.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/constants/color_manger.dart';
import '../../../../core/router/router.dart';
import '../../data/model/onboarding_model.dart';
import '../../../../l10n/app_localizations.dart';
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
        itemCount: onboardingModelFunc(context).length,
        itemBuilder: (context, index) {
          //!
          final local = AppLocalizations.of(context)!;
          return Column(
            children: [
              Stack(
                children: [
                  Image.asset(onboardingModelFunc(context)[index].image),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: h * 0.655),
                    child: Center(
                      //! titel
                      child: Text(
                        textAlign: TextAlign.center,
                        onboardingModelFunc(context)[index].titel,
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
                onboardingModelFunc(context)[index].subTitel,
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
                  titel: local.getStarted,
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
