import 'package:coffee_shop/core/constants/image_manger.dart';
import 'package:coffee_shop/core/constants/svg_manger.dart';

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

List<CardModel> cardModel = [
  CardModel(
    titel: 'Caffe Mocha',
    subTitel: 'Deep Foam',
    description:
        'Although a mocha is often interpreted differently across the world, the basis is that a shot of espresso is combined with chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk.',
    rating: 250,
    rate: 4.8,
    image: ImageManger.kCoffee1,
    smallPrice: '2.53',
    mediumPrice: '4.53',
    largePrice: '6.53',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    titel: 'Flat White',
    subTitel: 'Espresso',
    image: ImageManger.kCoffee2,
    description:
        'shot of espresso. This microfoam is steamed milk infused with air which creates a smooth, velvety texture and creamy taste.',
    smallPrice: '1.5',
    mediumPrice: '3.5',
    largePrice: '5.5',
    rate: 4.7,
    rating: 300,
    icon: SvgManger.kPlus,
  ),
  CardModel(
    titel: 'Mocha Fusi',
    subTitel: 'Ice/Hot',
    description:
        'crushed ice and fusion powder, topped with cream and a dusting of chocolate powder.',
    rating: 225,
    rate: 4.8,
    image: ImageManger.kCoffee3,
    smallPrice: '6.5',
    mediumPrice: '8.5',
    largePrice: '10',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    titel: 'Irish Coffee',
    subTitel: 'Popular',
    description:
        ' consisting of Irish whiskey, hot coffee and sugar, which has been stirred and topped with cream (sometimes cream liqueur). The coffee is drunk through the cream.',
    rating: 275,
    rate: 4.6,
    image: ImageManger.kCoffee4,
    smallPrice: '3.5',
    mediumPrice: '5.5',
    largePrice: '7.5',
    icon: SvgManger.kPlus,
  ),
  CardModel(
    titel: 'Affogato',
    subTitel: 'Creamy',
    description:
        "Affogato translates to 'drowned' in Italian and is one of the simplest desserts you can create. It's a big scoop of vanilla ice cream with a hot espresso shot poured over it. When the affogato is ready to serve, the ice cream looks as if it has drowned in the coffee.",
    rating: 300,
    rate: 4.4,
    image: ImageManger.kCoffee5,
    smallPrice: '3.5',
    mediumPrice: '5.5',
    largePrice: '7.5',
    icon: SvgManger.kPlus,
  ),
];
