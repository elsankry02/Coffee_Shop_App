import 'package:coffee_shop/core/cached/cached_hleper.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/core/enums/change_theme_enum.dart';
import 'package:coffee_shop/features/data/cubit/change_theme/change_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeWidget extends StatefulWidget {
  const ChangeThemeWidget({super.key});

  @override
  State<ChangeThemeWidget> createState() => _ChangeThemeWidgetState();
}

class _ChangeThemeWidgetState extends State<ChangeThemeWidget> {
  late String isSaved;

  void changeTheme() {
    isSaved = CachedHleper.getString(key: 'theme') ?? 'light';
  }

  @override
  void initState() {
    changeTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: h * 0.020),
        //! Dark
        MaterialButton(
          height: 50,
          minWidth: double.infinity,
          onPressed: () {
            context.read<ChangeThemeCubit>().changeTheme(ChangeThemeEnum.dark);
            setState(() {
              isSaved = 'dark';
            });
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark',
                  style: textTeme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600, color: ColorManger.kWhite),
                ),
                isSaved == 'dark'
                    ? Icon(Icons.check_box, color: ColorManger.kBlack)
                    : Icon(Icons.check_box_outline_blank,
                        color: ColorManger.kBlack),
              ],
            ),
          ),
        ),

        //! Light
        MaterialButton(
          height: 50,
          minWidth: double.infinity,
          onPressed: () {
            context.read<ChangeThemeCubit>().changeTheme(ChangeThemeEnum.light);

            setState(() {
              isSaved = 'light';
            });
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Light',
                  style: textTeme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600, color: ColorManger.kWhite),
                ),
                isSaved == 'light'
                    ? Icon(Icons.check_box, color: ColorManger.kBlack)
                    : Icon(Icons.check_box_outline_blank,
                        color: ColorManger.kBlack),
              ],
            ),
          ),
        ),
        SizedBox(height: h * 0.020),
      ],
    );
  }
}
