import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/pages/setting_page/widget/change_lang_widget.dart';
import 'package:coffee_shop/features/pages/setting_page/widget/change_theme_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: Column(
          children: [
            //! Change Language
            GestureDetector(
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
                decoration: BoxDecoration(),
                child: Text('Change Language'),
              ),
            ),
            SizedBox(
              height: h * 0.030,
            ),

            //! Change Theme
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: ColorManger.kMaterialColor,
                  context: context,
                  builder: (context) {
                    return ChangeThemeWidget();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(),
                child: Text('Change Theme'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
