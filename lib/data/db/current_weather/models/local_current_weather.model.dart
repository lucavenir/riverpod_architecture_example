import 'package:drift/drift.dart';

class CurrentWeatherDbModel extends Table {
  IntColumn get id => integer()();
  TextColumn get weather => text()();
  TextColumn get image => text()();
  DateTimeColumn get updatedAt => dateTime()();
  IntColumn get temp => integer()();
  RealColumn get wind => real()();
  RealColumn get humidity => real()();
  RealColumn get perceivedTemp => real()();
}
