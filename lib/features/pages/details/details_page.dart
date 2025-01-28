import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/constants/svg_manger.dart';
import 'package:coffee_shop/features/data/models/card_model.dart';
import 'package:coffee_shop/features/pages/details/widget/choice_size_widget.dart';
import 'package:coffee_shop/features/pages/details/widget/descriptrion_widget.dart';
import 'package:coffee_shop/features/pages/details/widget/details_image_widget.dart';
import 'package:coffee_shop/features/pages/details/widget/rating_widget.dart';
import 'package:coffee_shop/features/pages/details/widget/superiority_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: context.router.maybePop,
          child: UnconstrainedBox(
            child: SvgPicture.asset(SvgManger.kArrowLeft),
          ),
        ),
        //! AppBar Text
        title: Text(
          'Detail',
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
              'Description',
              style: textTeme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: h * 0.010),
            //! Descriptrion Widget
            DescriptrionWidget(cardModel: cardModel, textTeme: textTeme),
            SizedBox(height: h * 0.024),
            //! Size
            Text(
              'Size',
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
