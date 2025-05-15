import 'package:coffee_shop/cached/cached_hleper.dart';
import 'package:coffee_shop/enums/change_theme_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());
  changeTheme(ChangeThemeEnum changeThemeEnum) {
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
