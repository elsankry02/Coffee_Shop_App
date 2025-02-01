import 'package:auto_route/auto_route.dart';
import '../../../core/constants/color_manger.dart';
import '../../../core/constants/svg_manger.dart';
import '../../data/models/card_model.dart';
import 'widget/choice_size_widget.dart';
import 'widget/descriptrion_widget.dart';
import 'widget/details_image_widget.dart';
import 'widget/rating_widget.dart';
import 'widget/superiority_widget.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class DetailsItemPage extends StatelessWidget {
  const DetailsItemPage({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        //! AppBar Text
        title: Text(
          AppLocalizations.of(context)!.detail,
          style: textTeme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        //! Action Heart
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: w * 0.024),
            child: SvgPicture.asset(SvgManger.kHeart),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
            horizontal: h * 0.024, vertical: w * 0.024),
        child: ListView(
          children: [
            //! Details Image Widget
            DetailsImageWidget(h: h, cardModel: cardModel),
            SizedBox(height: h * 0.023),
            //! Titel
            Text(
              cardModel.titel,
              style: textTeme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //! sub Titel
                Text(
                  cardModel.subTitel,
                  style: textTeme.bodySmall!.copyWith(color: ColorManger.k7),
                ),
                //! Superiority Widget
                SuperiorityWidget(h: h, w: w),
              ],
            ),
            //! Rating Widget
            RatingWidget(h: h, textTeme: textTeme, cardModel: cardModel),
            SizedBox(height: h * 0.005),
            //! Divider
            Divider(
              color: ColorManger.k7,
              thickness: 0.3,
              endIndent: w * 0,
            ),
            //! Description Text
            Text(
              local.description,
              style: textTeme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: h * 0.010),
            //! Descriptrion Widget
            DescriptrionWidget(cardModel: cardModel, textTeme: textTeme),
            SizedBox(height: h * 0.024),
            //! Size
            Text(
              local.size,
              style: textTeme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: h * 0.016),
            //! Choice Size Widget
            ChoiceSizeWidget(
              cardModel: cardModel,
            ),
            SizedBox(height: h * 0.040),
          ],
        ),
      ),
    );
  }
}
