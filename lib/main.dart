import 'core/cached/cached_hleper.dart';
import 'core/constants/string_manger.dart';
import 'core/enums/localization_enum.dart';
import 'core/router/router.dart';
import 'features/data/local_cubit/localization_cubit.dart';
import 'l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachedHleper.getInatial();
  runApp(const CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LocalizationCubit()..localFunc(LocalizationEnum.intial),
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
        },
      ),
    );
  }
}
