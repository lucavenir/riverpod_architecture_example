// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_current_weather_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalCurrentWeatherDtoCollection on Isar {
  IsarCollection<LocalCurrentWeatherDto> get localCurrentWeatherDtos =>
      this.collection();
}

const LocalCurrentWeatherDtoSchema = CollectionSchema(
  name: r'LocalCurrentWeatherDto',
  id: 3400579101497303452,
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
  estimateSize: _localCurrentWeatherDtoEstimateSize,
  serialize: _localCurrentWeatherDtoSerialize,
  deserialize: _localCurrentWeatherDtoDeserialize,
  deserializeProp: _localCurrentWeatherDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _localCurrentWeatherDtoGetId,
  getLinks: _localCurrentWeatherDtoGetLinks,
  attach: _localCurrentWeatherDtoAttach,
  version: '3.1.0+1',
);

int _localCurrentWeatherDtoEstimateSize(
  LocalCurrentWeatherDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.weather.length * 3;
  return bytesCount;
}

void _localCurrentWeatherDtoSerialize(
  LocalCurrentWeatherDto object,
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

LocalCurrentWeatherDto _localCurrentWeatherDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalCurrentWeatherDto(
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

P _localCurrentWeatherDtoDeserializeProp<P>(
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

Id _localCurrentWeatherDtoGetId(LocalCurrentWeatherDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localCurrentWeatherDtoGetLinks(
    LocalCurrentWeatherDto object) {
  return [];
}

void _localCurrentWeatherDtoAttach(
    IsarCollection<dynamic> col, Id id, LocalCurrentWeatherDto object) {}

extension LocalCurrentWeatherDtoQueryWhereSort
    on QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QWhere> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalCurrentWeatherDtoQueryWhere on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QWhereClause> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

extension LocalCurrentWeatherDtoQueryFilter on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QFilterCondition> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> tempEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> weatherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
      QAfterFilterCondition> weatherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weather',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto,
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

extension LocalCurrentWeatherDtoQueryObject on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QFilterCondition> {}

extension LocalCurrentWeatherDtoQueryLinks on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QFilterCondition> {}

extension LocalCurrentWeatherDtoQuerySortBy
    on QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QSortBy> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      sortByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension LocalCurrentWeatherDtoQuerySortThenBy on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QSortThenBy> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByPerceivedTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'perceivedTemp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByWeather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByWeatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather', Sort.desc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QAfterSortBy>
      thenByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension LocalCurrentWeatherDtoQueryWhereDistinct
    on QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct> {
  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'humidity');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByPerceivedTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'perceivedTemp');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temp');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByWeather({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weather', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, LocalCurrentWeatherDto, QDistinct>
      distinctByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind');
    });
  }
}

extension LocalCurrentWeatherDtoQueryProperty on QueryBuilder<
    LocalCurrentWeatherDto, LocalCurrentWeatherDto, QQueryProperty> {
  QueryBuilder<LocalCurrentWeatherDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, double, QQueryOperations>
      humidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'humidity');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, String, QQueryOperations>
      imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, double, QQueryOperations>
      perceivedTempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'perceivedTemp');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, int, QQueryOperations> tempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temp');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, String, QQueryOperations>
      weatherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weather');
    });
  }

  QueryBuilder<LocalCurrentWeatherDto, double, QQueryOperations>
      windProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind');
    });
  }
}
