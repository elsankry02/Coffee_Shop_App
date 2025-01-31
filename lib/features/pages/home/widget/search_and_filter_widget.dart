import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/pages/home/widget/change_lang_widget.dart';
import 'package:coffee_shop/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SearchAndFilterWidget extends StatelessWidget {
  const SearchAndFilterWidget({super.key});

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
