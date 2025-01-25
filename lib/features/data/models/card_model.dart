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
    price: '',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee2,
    titel: '',
    subTitel: '',
    price: '',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee3,
    titel: 'Flat White',
    subTitel: '',
    price: '',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee4,
    titel: '',
    subTitel: '',
    price: '',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    image: ImageManger.kCoffee5,
    titel: '',
    subTitel: '',
    price: '',
    icon: SvgManger.kPlus,
  ),
];
