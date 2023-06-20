import '../../data/dto/forecast_day_dto.dart';
import '../entities/forecast_day.dart';

extension ForecastDayFromDto on ForecastDayDto {
  ForecastDay toDomain() {
    final truncatedUrl = day.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return ForecastDay(
      temp: day.avgtempC,
      weather: day.condition.text,
      date: date,
      image: imageUrl,
    );
  }
}
