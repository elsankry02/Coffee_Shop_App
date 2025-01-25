import 'package:coffee_shop/core/constants/image_manger.dart';
import 'package:coffee_shop/core/constants/svg_manger.dart';

class CardModel {
  final String image;
  final String titel;
  final String subTitel;
  final String price;
  final String icon;

  CardModel(
      {required this.titel,
      required this.subTitel,
      required this.price,
      required this.icon,
      required this.image});
}

List<CardModel> cardModel = [
  CardModel(
    image: ImageManger.kCoffee1,
    titel: 'Caffe Mocha',
    subTitel: 'Deep Foam',
    price: '4.53',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee2,
    titel: 'Flat White',
    subTitel: 'Espresso',
    price: '3.53',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee3,
    titel: 'Mocha Fusi',
    subTitel: 'Ice/Hot',
    price: '8.53',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee4,
    titel: 'Irish Coffee',
    subTitel: 'Popular',
    price: '5.53',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee5,
    titel: 'Affogato',
    subTitel: 'Creamy',
    price: '5.53',
    icon: SvgManger.kPlus,
  ),
];
