import 'package:coffee_shop/core/cached/cached_hleper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/color_manger.dart';
import '../../../../core/enums/localization_enum.dart';
import '../../../data/cubits/local_lang/localization_cubit.dart';

class ChangeLanguageWidget extends StatefulWidget {
  const ChangeLanguageWidget({super.key});

  @override
  State<ChangeLanguageWidget> createState() => _ChangeLanguageWidgetState();
}

class _ChangeLanguageWidgetState extends State<ChangeLanguageWidget> {
  late String changeLang;
  void getLangFunc() {
    changeLang = CachedHleper.getString(key: 'Language') ?? 'en';
  }

  @override
  void initState() {
    getLangFunc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final spaceBetween = MainAxisAlignment.spaceBetween;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.horizontal(
          start: Radius.circular(12),
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: h * 0.020),
            //! Arabic
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              onPressed: () {
                context
                    .read<LocalizationCubit>()
                    .localFunc(LocalizationEnum.arabic);
                setState(() {
                  changeLang = 'ar';
                });
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: spaceBetween,
                  children: [
                    Text(
                      'اللغة العربية',
                      style: textTeme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorManger.kWhite),
                    ),
                    changeLang == 'ar'
                        ? Icon(Icons.check_box, color: ColorManger.kBlack)
                        : Icon(Icons.check_box_outline_blank,
                            color: ColorManger.kBlack)
                  ],
                ),
              ),
            ),

            //! Enlish
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              onPressed: () {
                context
                    .read<LocalizationCubit>()
                    .localFunc(LocalizationEnum.english);
                setState(() {
                  changeLang = 'en';
                });
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: spaceBetween,
                  children: [
                    Text(
                      'English',
                      style: textTeme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorManger.kWhite),
                    ),
                    changeLang == 'en'
                        ? Icon(Icons.check_box, color: ColorManger.kBlack)
                        : Icon(Icons.check_box_outline_blank,
                            color: ColorManger.kBlack),
                  ],
                ),
              ),
            ),
            SizedBox(height: h * 0.020),
          ],
        ),
      ),
    );
  }
}
