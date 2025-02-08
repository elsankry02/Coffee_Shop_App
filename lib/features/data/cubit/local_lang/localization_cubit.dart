import 'package:coffee_shop/core/enums/change_theme_enum.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cached/cached_hleper.dart';
import '../../../../core/enums/localization_enum.dart';

part 'localization_state.dart';

class ChangeLanguageAndThemeAppCubit
    extends Cubit<ChangeLanguageAndThemeAppState> {
  ChangeLanguageAndThemeAppCubit() : super(LocalizationInitial());

  changeLangFunc(LocalizationEnum localizationEnum) {
    switch (localizationEnum) {
      case LocalizationEnum.initial:
        if (CachedHleper.getString(key: 'Language') != null) {
          if (CachedHleper.getString(key: 'Language') == 'en') {
            emit(
              LocalizationChange(languageCode: 'en'),
            );
          } else {
            emit(
              LocalizationChange(languageCode: 'ar'),
            );
          }
        }
      case LocalizationEnum.arabic:
        CachedHleper.setString(key: 'Language', value: 'ar');
        emit(
          LocalizationChange(languageCode: 'ar'),
        );
      case LocalizationEnum.english:
        CachedHleper.setString(key: 'Language', value: 'en');
        emit(
          LocalizationChange(languageCode: 'en'),
        );
    }
  }

  changeThemeFunc(ChangeThemeEnum changeThemeEnum) {
    switch (changeThemeEnum) {
      case ChangeThemeEnum.initial:
        if (CachedHleper.getString(key: 'theme') != null) {
          if (CachedHleper.getString(key: 'theme') == 'light') {
            emit(AppChangeTheme(isChange: 'light'));
          } else {
            emit(AppChangeTheme(isChange: 'dark'));
          }
        }
      case ChangeThemeEnum.light:
        CachedHleper.setString(key: 'theme', value: 'light');
        emit(AppChangeTheme(isChange: 'light'));
      case ChangeThemeEnum.dark:
        CachedHleper.setString(key: 'theme', value: 'dark');
        emit(AppChangeTheme(isChange: 'dark'));
    }
  }
}
