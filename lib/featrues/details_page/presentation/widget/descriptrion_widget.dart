import '../../../../core/constants/color_manger.dart';
import '../../../home_page/data/models/card_model.dart';
import '../../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptrionWidget extends StatelessWidget {
  const DescriptrionWidget({
    super.key,
    required this.cardModel,
    required this.textTeme,
  });

  final CardModel cardModel;
  final TextTheme textTeme;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return ReadMoreText(
      cardModel.description,
      trimMode: TrimMode.Line,
      delimiterStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
      trimLines: 2,
      //! Read More
      trimCollapsedText: local.readMore,
      moreStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
      //! Read less
      trimExpandedText: local.readLess,
      lessStyle: textTeme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600, color: ColorManger.kMaterialColor),
    );
  }
}
