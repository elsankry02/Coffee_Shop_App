import 'package:coffee_shop/core/constants/image_manger.dart';

class OnboardingModel {
  final String image;
  final String titel;
  final String subTitel;

  OnboardingModel(
      {required this.image, required this.titel, required this.subTitel});
}

List<OnboardingModel> onboardingModelFunc() {
  return [
    OnboardingModel(
      image: ImageManger.kOnBoardingImage,
      titel: 'Fall in Love with\n Coffee in Blissful\n Delight!',
      subTitel:
          'Welcome to our cozy coffee corner, where\n every cup is a delightful for you.',
    ),
  ];
}
