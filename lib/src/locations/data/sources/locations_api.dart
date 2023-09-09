import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../base/json.dart';
import '../../../../client/dio.dart';

part 'locations_api.g.dart';

@riverpod
LocationsApi locationsApi(LocationsApiRef ref) {
  final client = ref.watch(httpClientProvider(loggerLabel: 'LocationsApi'));

  return LocationsApi(client);
}

class LocationsApi {
  const LocationsApi(this.dio);
  final Dio dio;

  Future<Iterable<Json>> locations({required String q}) async {
    final result = await dio.get<List<dynamic>>(
      '/search.json',
      queryParameters: {'q': q},
    );
    final data = result.data!;
    return data.map((e) => e as Json);
  }
}
