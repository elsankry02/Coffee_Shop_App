part of 'localization_cubit.dart';

@immutable
sealed class ChangeLanguageAndThemeAppState {}

final class LocalizationInitial extends ChangeLanguageAndThemeAppState {}

final class LocalizationChange extends ChangeLanguageAndThemeAppState {
  final String languageCode;

  LocalizationChange({required this.languageCode});
}

final class AppChangeTheme extends ChangeLanguageAndThemeAppState {
  final String isChange;

  AppChangeTheme({required this.isChange});
}
