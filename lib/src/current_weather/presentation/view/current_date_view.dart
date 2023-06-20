import 'package:intl/intl.dart';

extension FormattedCurrentDate on DateTime {
  String get formattedCurrentDate => DateFormat.yMMMd().format(this);
}
