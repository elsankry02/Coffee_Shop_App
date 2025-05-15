import '../../constants/image_manger.dart';
import '../../constants/svg_manger.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CardModel {
  final String titel;
  final String subTitel;
  final String image;
  final String smallPrice;
  final String mediumPrice;
  final String largePrice;
  final String description;
  final String icon;
  final double rate;
  final int rating;

  CardModel(
      {required this.titel,
      required this.subTitel,
      required this.mediumPrice,
      required this.largePrice,
      required this.smallPrice,
      required this.icon,
      required this.rate,
      required this.description,
      required this.rating,
      required this.image});
}

List<CardModel> cardModel(BuildContext context) {
  final local = AppLocalizations.of(context)!;

  return [
    CardModel(
      titel: local.caffeMocha,
      subTitel: local.deepFoam,
      description: local.discirptionCaffeMocha,
      rating: 250,
      rate: 4.8,
      image: ImageManger.kCoffee1,
      smallPrice: '2.53',
      mediumPrice: '4.53',
      largePrice: '6.53',
      icon: SvgManger.kPlus,
    ),
    CardModel(
      titel: local.flatWhite,
      subTitel: local.espresso,
      image: ImageManger.kCoffee2,
      description: local.discirptionFlatWhite,
      smallPrice: '1.5',
      mediumPrice: '3.5',
      largePrice: '5.5',
      rate: 4.7,
      rating: 300,
      icon: SvgManger.kPlus,
    ),
    CardModel(
      titel: local.mochaFusi,
      subTitel: local.iceHot,
      description: local.discirptionMochaFusi,
      rating: 225,
      rate: 4.8,
      image: ImageManger.kCoffee3,
      smallPrice: '6.5',
      mediumPrice: '8.5',
      largePrice: '10',
      icon: SvgManger.kPlus,
    ),
    CardModel(
      titel: local.irishCoffee,
      subTitel: local.popular,
      description: local.discirptionIrishCoffee,
      rating: 275,
      rate: 4.6,
      image: ImageManger.kCoffee4,
      smallPrice: '3.5',
      mediumPrice: '5.5',
      largePrice: '7.5',
      icon: SvgManger.kPlus,
    ),
    CardModel(
      titel: local.affogato,
      subTitel: local.creamy,
      description: local.discirptionAffogato,
      rating: 300,
      rate: 4.4,
      image: ImageManger.kCoffee5,
      smallPrice: '3.5',
      mediumPrice: '5.5',
      largePrice: '7.5',
      icon: SvgManger.kPlus,
    ),
  ];
}
