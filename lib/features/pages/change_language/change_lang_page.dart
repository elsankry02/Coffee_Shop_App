import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/pages/change_language/widget/change_lang_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChangeLangPage extends StatefulWidget {
  const ChangeLangPage({super.key});

  @override
  State<ChangeLangPage> createState() => _ChangeLangPageState();
}

class _ChangeLangPageState extends State<ChangeLangPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: w * 0.050),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: ColorManger.kMaterialColor,
              context: context,
              builder: (context) {
                return ChangeLanguageWidget();
              },
            );
          },
          child: Container(
            height: h * 0.050,
            width: w * 0.120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorManger.kMaterialColor),
            child: Center(
              child: Icon(Icons.language, color: ColorManger.kWhite),
            ),
          ),
        ));
  }
}
