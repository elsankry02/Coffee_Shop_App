import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/enums/localization_enum.dart';
import 'package:coffee_shop/features/data/local_cubit/localization_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguageWidget extends StatefulWidget {
  const ChangeLanguageWidget({super.key});

  @override
  State<ChangeLanguageWidget> createState() => _ChangeLanguageWidgetState();
}

class _ChangeLanguageWidgetState extends State<ChangeLanguageWidget> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
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
                context.router.maybePop();
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      'اللغة العربية',
                      style: textTeme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorManger.kWhite),
                    ),
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
                context.router.maybePop();
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      'English',
                      style: textTeme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorManger.kWhite),
                    ),
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
