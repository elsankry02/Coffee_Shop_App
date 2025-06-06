import 'package:coffee_shop/core/constants/string_manger.dart';
import 'package:coffee_shop/core/enums/localization_enum.dart';
import 'package:coffee_shop/featrues/home_page/data/cubit/local_lang/localization_cubit.dart';
import 'package:coffee_shop/l10n/app_localizations.dart';
import 'package:coffee_shop/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              LocalizationCubit()..localFunc(LocalizationEnum.initial),
        ),
      ],
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
          builder: (context, state) {
        if (state is LocalizationChange) {
          return MaterialApp.router(
            locale: Locale(state.languageCode),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router.config(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: kSora),
          );
        }
        return MaterialApp.router(
          locale: Locale('en'),
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router.config(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: kSora),
        );
      }),
    );
  }
}
