import '../../../../core/constants/image_manger.dart';
import '../../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class OnboardingModel {
  final String image;
  final String titel;
  final String subTitel;

  OnboardingModel(
      {required this.image, required this.titel, required this.subTitel});
}

List<OnboardingModel> onboardingModelFunc(BuildContext context) {
  final local = AppLocalizations.of(context)!;
  return [
    OnboardingModel(
      image: ImageManger.kOnBoardingImage,
      titel: local.fallInLoveWithCoffeeInBlissfulDelight,
      subTitel:
          local.welcomeToOurCozyCoffeeCornerwhereeverycupisADelightfulForYou,
    ),
  ];
}
