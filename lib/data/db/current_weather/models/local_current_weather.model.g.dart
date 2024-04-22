// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_current_weather.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCurrentWeatherDbModelCollection on Isar {
  IsarCollection<CurrentWeatherDbModel> get currentWeatherDbModels =>
      this.collection();
}

const CurrentWeatherDbModelSchema = CollectionSchema(
  name: r'CurrentWeatherDbModel',
  id: -5661034877847071844,
  properties: {
    r'humidity': PropertySchema(
      id: 0,
      name: r'humidity',
      type: IsarType.double,
    ),
    r'image': PropertySchema(
      id: 1,
      name: r'image',
      type: IsarType.string,
    ),
    r'perceivedTemp': PropertySchema(
      id: 2,
      name: r'perceivedTemp',
      type: IsarType.double,
    ),
    r'temp': PropertySchema(
      id: 3,
      name: r'temp',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'weather': PropertySchema(
      id: 5,
      name: r'weather',
      type: IsarType.string,
    ),
    r'wind': PropertySchema(
      id: 6,
      name: r'wind',
      type: IsarType.double,
    )
  },
  estimateSize: _currentWeatherDbModelEstimateSize,
  serialize: _currentWeatherDbModelSerialize,
  deserialize: _currentWeatherDbModelDeserialize,
  deserializeProp: _currentWeatherDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _currentWeatherDbModelGetId,
  getLinks: _currentWeatherDbModelGetLinks,
  attach: _currentWeatherDbModelAttach,
  version: '3.1.0+1',
);

int _currentWeatherDbModelEstimateSize(
  CurrentWeatherDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.weather.length * 3;
  return bytesCount;
}

void _currentWeatherDbModelSerialize(
  CurrentWeatherDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.humidity);
  writer.writeString(offsets[1], object.image);
  writer.writeDouble(offsets[2], object.perceivedTemp);
  writer.writeLong(offsets[3], object.temp);
  writer.writeDateTime(offsets[4], object.updatedAt);
  writer.writeString(offsets[5], object.weather);
  writer.writeDouble(offsets[6], object.wind);
}

CurrentWeatherDbModel _currentWeatherDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrentWeatherDbModel(
    humidity: reader.readDouble(offsets[0]),
    id: id,
    image: reader.readString(offsets[1]),
    perceivedTemp: reader.readDouble(offsets[2]),
    temp: reader.readLong(offsets[3]),
    updatedAt: reader.readDateTime(offsets[4]),
    weather: reader.readString(offsets[5]),
    wind: reader.readDouble(offsets[6]),
  );
  return object;
}

P _currentWeatherDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _currentWeatherDbModelGetId(CurrentWeatherDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _currentWeatherDbModelGetLinks(
    CurrentWeatherDbModel object) {
  return [];
}

void _currentWeatherDbModelAttach(
    IsarCollection<dynamic> col, Id id, CurrentWeatherDbModel object) {}

extension CurrentWeatherDbModelQueryWhereSort
    on QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QWhere> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CurrentWeatherDbModelQueryWhere on QueryBuilder<CurrentWeatherDbModel,
    CurrentWeatherDbModel, QWhereClause> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CurrentWeatherDbModelQueryFilter on QueryBuilder<
    CurrentWeatherDbModel, CurrentWeatherDbModel, QFilterCondition> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> humidityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> humidityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> humidityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> humidityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'humidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
          QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
          QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> perceivedTempEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'perceivedTemp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> perceivedTempGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'perceivedTemp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> perceivedTempLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'perceivedTemp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> perceivedTempBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'perceivedTemp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> tempEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> tempGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temp',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> tempLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temp',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> tempBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weather',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
          QAfterFilterCondition>
      weatherContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weather',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
          QAfterFilterCondition>
      weatherMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weather',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> weatherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> windEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wind',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> windGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wind',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> windLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wind',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel,
      QAfterFilterCondition> windBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CurrentWeatherDbModelQueryObject on QueryBuilder<
    CurrentWeatherDbModel, CurrentWeatherDbModel, QFilterCondition> {}

extension CurrentWeatherDbModelQueryLinks on QueryBuilder<CurrentWeatherDbModel,
    CurrentWeatherDbModel, QFilterCondition> {}

extension CurrentWeatherDbModelQuerySortBy
    on QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QSortBy> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      sortByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension CurrentWeatherDbModelQuerySortThenBy
    on QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QSortThenBy> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QAfterSortBy>
      thenByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension CurrentWeatherDbModelQueryWhereDistinct
    on QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct> {
  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'humidity');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'perceivedTemp');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temp');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByWeather({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weather', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentWeatherDbModel, CurrentWeatherDbModel, QDistinct>
      distinctByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind');
    });
  }
}

extension CurrentWeatherDbModelQueryProperty on QueryBuilder<
    CurrentWeatherDbModel, CurrentWeatherDbModel, QQueryProperty> {
  QueryBuilder<CurrentWeatherDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, double, QQueryOperations>
      humidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'humidity');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, String, QQueryOperations>
      imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, double, QQueryOperations>
      perceivedTempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'perceivedTemp');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, int, QQueryOperations> tempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temp');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, String, QQueryOperations>
      weatherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weather');
    });
  }

  QueryBuilder<CurrentWeatherDbModel, double, QQueryOperations> windProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind');
    });
  }
}
