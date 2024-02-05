import 'package:flutter/widgets.dart';
import 'gen/riverpod_weather_app_localizations.dart';

export 'gen/riverpod_weather_app_localizations.dart';

extension RiverpodWeatherLocalizationsX on BuildContext {
  RiverpodWeatherLocalizations get l10n => RiverpodWeatherLocalizations.of(this);
}
