import 'package:flutter/material.dart';

import '../../../../core/constants/color_manger.dart';
import '../../../home_page/data/models/card_model.dart';
import 'show_model_bottom_shert_widget.dart';

enum Choice { small, medium, large }

class ChoiceSizeWidget extends StatefulWidget {
  const ChoiceSizeWidget({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  State<ChoiceSizeWidget> createState() => _ChoiceSizeWidgetState();
}

class _ChoiceSizeWidgetState extends State<ChoiceSizeWidget> {
  Choice isChoice = Choice.medium;
  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //! Small Tap
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ShowModelBottomShertWidget(
                    priceSheet: widget.cardModel.smallPrice,
                    cardModel: widget.cardModel,
                  );
                },
              );
              setState(() {
                isChoice = Choice.small;
              });
            },
            child: Container(
              height: h * 0.045,
              width: w * 0.300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 1.5,
                    color: isChoice == Choice.small
                        ? ColorManger.kMaterialColor
                        : ColorManger.kBorderEnum),
                color: isChoice == Choice.small
                    ? ColorManger.kBackGroundEnum
                    : ColorManger.kWhite,
              ),
              child: Center(
                child: Text(
                  'S',
                  style: textTeme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isChoice == Choice.small
                          ? ColorManger.kMaterialColor
                          : ColorManger.kBlack),
                ),
              ),
            ),
          ),
          //! Medium Tap
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ShowModelBottomShertWidget(
                    priceSheet: widget.cardModel.mediumPrice,
                    cardModel: widget.cardModel,
                  );
                },
              );
              setState(() {
                isChoice = Choice.medium;
              });
            },
            child: Container(
              height: h * 0.045,
              width: w * 0.300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //! Border Color
                  border: Border.all(
                      width: 1.5,
                      color: isChoice == Choice.medium
                          ? ColorManger.kMaterialColor
                          : ColorManger.kBorderEnum),
                  //! BackGround Color
                  color: isChoice == Choice.medium
                      ? ColorManger.kBackGroundEnum
                      : ColorManger.kWhite),
              child: Center(
                //! Text Color
                child: Text(
                  'M',
                  style: textTeme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isChoice == Choice.medium
                          ? ColorManger.kMaterialColor
                          : ColorManger.kBlack),
                ),
              ),
            ),
          ),
          //! Large Tap
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  //! Show Model Bottom Shert Widget
                  return ShowModelBottomShertWidget(
                    priceSheet: widget.cardModel.largePrice,
                    cardModel: widget.cardModel,
                  );
                },
              );
              setState(() {
                isChoice = Choice.large;
              });
            },
            child: Container(
              height: h * 0.045,
              width: w * 0.250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //! Border Color
                  border: Border.all(
                      width: 1.5,
                      color: isChoice == Choice.large
                          ? ColorManger.kMaterialColor
                          : ColorManger.kBorderEnum),
                  //! BackGround Color
                  color: isChoice == Choice.large
                      ? ColorManger.kBackGroundEnum
                      : ColorManger.kWhite),
              child: Center(
                //! Text Color
                child: Text(
                  'L',
                  style: textTeme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isChoice == Choice.large
                          ? ColorManger.kMaterialColor
                          : ColorManger.kBlack),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
