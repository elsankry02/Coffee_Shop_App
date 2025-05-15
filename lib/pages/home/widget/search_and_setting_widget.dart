import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/router/router.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_manger.dart';
import '../../../l10n/app_localizations.dart';

class SearchAndSettingWidget extends StatelessWidget {
  const SearchAndSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //! TextFormField
          Expanded(
            child: TextFormField(
              cursorColor: ColorManger.k2,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.search, size: h * 0.040, color: Colors.white),
                hintText: local.searchCoffee,
                hintStyle: textTeme.titleSmall!.copyWith(color: ColorManger.k7),
                enabledBorder: outlineInputBorder(),
                focusedBorder: outlineInputBorder(),
                border: outlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: w * 0.020),
          //! Change Lang
          GestureDetector(
            onTap: () {
              context.router.push(SettingRoute());
            },
            child: Container(
              padding: EdgeInsetsDirectional.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorManger.kMaterialColor),
              child: Center(
                child: Icon(Icons.language, color: ColorManger.kWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: ColorManger.kBlack),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
