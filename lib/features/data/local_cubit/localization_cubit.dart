import '../../../core/cached/cached_hleper.dart';
import '../../../core/enums/localization_enum.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  localFunc(LocalizationEnum localizationEnum) {
    switch (localizationEnum) {
      case LocalizationEnum.intial:
        if (CachedHleper.getString(key: 'Language') != null) {
          if (CachedHleper.getString(key: 'Language') == 'ar') {
            emit(
              LocalizationChange(languageCode: 'ar'),
            );
          } else {
            emit(
              LocalizationChange(languageCode: 'en'),
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
}
