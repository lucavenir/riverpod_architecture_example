import 'package:intl/intl.dart';

import '../../domain/entities/current_weather.dart';

extension HumidityView on CurrentWeather {
  String get formattedHumidity {
    final integerHumidity = humidity.round();
    return '$integerHumidity %';
  }
}

extension WindView on CurrentWeather {
  String get formattedWind {
    final twoDecimalFormat = NumberFormat('###.##');
    final formattedWind = twoDecimalFormat.format(wind);
    return '$formattedWind km/h';
  }
}

extension TemperatureView on CurrentWeather {
  String get formattedTemp {
    final oneDecimalFormat = NumberFormat('##0.#');
    final formattedTemp = oneDecimalFormat.format(temp);
    return '$formattedTemp °C';
  }
}
