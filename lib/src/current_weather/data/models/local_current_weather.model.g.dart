// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_current_weather.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalCurrentWeatherModelCollection on Isar {
  IsarCollection<LocalCurrentWeatherModel> get localCurrentWeatherModels =>
      this.collection();
}

const LocalCurrentWeatherModelSchema = CollectionSchema(
  name: r'LocalCurrentWeatherModel',
  id: -6070197540142754388,
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
  estimateSize: _localCurrentWeatherModelEstimateSize,
  serialize: _localCurrentWeatherModelSerialize,
  deserialize: _localCurrentWeatherModelDeserialize,
  deserializeProp: _localCurrentWeatherModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _localCurrentWeatherModelGetId,
  getLinks: _localCurrentWeatherModelGetLinks,
  attach: _localCurrentWeatherModelAttach,
  version: '3.1.0+1',
);

int _localCurrentWeatherModelEstimateSize(
  LocalCurrentWeatherModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.weather.length * 3;
  return bytesCount;
}

void _localCurrentWeatherModelSerialize(
  LocalCurrentWeatherModel object,
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

LocalCurrentWeatherModel _localCurrentWeatherModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalCurrentWeatherModel(
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

P _localCurrentWeatherModelDeserializeProp<P>(
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

Id _localCurrentWeatherModelGetId(LocalCurrentWeatherModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localCurrentWeatherModelGetLinks(
    LocalCurrentWeatherModel object) {
  return [];
}

void _localCurrentWeatherModelAttach(
    IsarCollection<dynamic> col, Id id, LocalCurrentWeatherModel object) {}

extension LocalCurrentWeatherModelQueryWhereSort on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QWhere> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalCurrentWeatherModelQueryWhere on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QWhereClause> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterWhereClause> idBetween(
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

extension LocalCurrentWeatherModelQueryFilter on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QFilterCondition> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> tempEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> weatherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
      QAfterFilterCondition> weatherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel,
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

extension LocalCurrentWeatherModelQueryObject on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QFilterCondition> {}

extension LocalCurrentWeatherModelQueryLinks on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QFilterCondition> {}

extension LocalCurrentWeatherModelQuerySortBy on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QSortBy> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      sortByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension LocalCurrentWeatherModelQuerySortThenBy on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QSortThenBy> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QAfterSortBy>
      thenByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension LocalCurrentWeatherModelQueryWhereDistinct on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct> {
  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'humidity');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'perceivedTemp');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temp');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByWeather({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weather', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, LocalCurrentWeatherModel, QDistinct>
      distinctByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind');
    });
  }
}

extension LocalCurrentWeatherModelQueryProperty on QueryBuilder<
    LocalCurrentWeatherModel, LocalCurrentWeatherModel, QQueryProperty> {
  QueryBuilder<LocalCurrentWeatherModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, double, QQueryOperations>
      humidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'humidity');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, String, QQueryOperations>
      imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, double, QQueryOperations>
      perceivedTempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'perceivedTemp');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, int, QQueryOperations> tempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temp');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, String, QQueryOperations>
      weatherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weather');
    });
  }

  QueryBuilder<LocalCurrentWeatherModel, double, QQueryOperations>
      windProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind');
    });
  }
}
