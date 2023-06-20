import 'package:intl/intl.dart';

extension FormattedForecastDate on DateTime {
  String get formattedForecastDate => DateFormat.MMMd().format(this);
}
