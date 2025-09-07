import 'package:coffee_shop/core/constants/string_manger.dart';
import 'package:coffee_shop/core/enums/localization_enum.dart';
import 'package:coffee_shop/core/router/router.dart';
import 'package:coffee_shop/featrues/data/cubits/local_lang/localization_cubit.dart';
import 'package:coffee_shop/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router.config(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: kSora),
          );
        }
        return MaterialApp.router(
          locale: Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router.config(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: kSora),
        );
      }),
    );
  }
}
