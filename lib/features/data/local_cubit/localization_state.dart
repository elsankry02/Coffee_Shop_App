part of 'localization_cubit.dart';

@immutable
sealed class LocalizationState {}

final class LocalizationInitial extends LocalizationState {}

final class LocalizationChange extends LocalizationState {
  final String languageCode;

  LocalizationChange({required this.languageCode});
}
