import '../../../home_page/data/models/card_model.dart';
import 'package:flutter/material.dart';

class DetailsImageWidget extends StatelessWidget {
  const DetailsImageWidget({
    super.key,
    required this.h,
    required this.cardModel,
  });

  final double h;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        width: double.infinity,
        height: h * 0.202,
        cardModel.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
