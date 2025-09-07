import '../../../../core/components/custom_button.dart';
import '../../../../core/constants/color_manger.dart';
import '../../../data/models/card_model.dart';
import '../../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ShowModelBottomShertWidget extends StatelessWidget {
  const ShowModelBottomShertWidget(
      {super.key, required this.cardModel, required this.priceSheet});

  final CardModel cardModel;
  final String priceSheet;

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final local = AppLocalizations.of(context)!;

    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      height: h * 0.120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          color: ColorManger.kWhite),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //! price
                  Text(
                    local.price,
                    style: textTeme.bodyLarge!.copyWith(
                      color: ColorManger.k7,
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: RichText(
                      text: TextSpan(
                        style: textTeme.titleMedium!.copyWith(
                            color: ColorManger.kMaterialColor,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(text: r'$ '),
                          TextSpan(text: priceSheet),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                  titel: local.buyNow,
                  marginHorizontal: 2,
                  height: h * 0.056,
                  width: w * 0.600)
            ],
          ),
        ],
      ),
    );
  }
}
