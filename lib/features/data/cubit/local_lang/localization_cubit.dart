import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cached/cached_hleper.dart';
import '../../../../core/enums/localization_enum.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  localFunc(LocalizationEnum localizationEnum) {
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
}
