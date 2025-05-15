part of 'change_theme_cubit.dart';

@immutable
sealed class ChangeThemeState {}

final class ChangeThemeInitial extends ChangeThemeState {}

final class AppChangeTheme extends ChangeThemeState {
  final String isChange;

  AppChangeTheme({required this.isChange});
}
