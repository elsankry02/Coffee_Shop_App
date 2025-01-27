import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/svg_manger.dart';
import 'package:coffee_shop/features/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    // final textTeme = Theme.of(context).textTheme;
    // final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(SvgManger.kArrowLeft),
        title: Text(
          'Detail',
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset(SvgManger.kHeart),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [],
          );
        },
      ),
    );
  }
}
