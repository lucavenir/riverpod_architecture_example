import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../clients/http.client.dart';
import '../../../../../data/json.dart';
import 'models/location.model.dart';

part 'search.api.g.dart';

/// Label used for logging, useful for testing purposes
const locationsApiDebugLogLabel = 'LocationsApi';

@riverpod
SearchApi locationsApi(LocationsApiRef ref) {
  final client = ref.watch(httpClientProvider());

  return SearchApi(client);
}

class SearchApi {
  const SearchApi(this.dio);
  final Dio dio;

  Future<Iterable<LocationApiModel>> locations({required String q}) async {
    final result = await dio.get<List<Object?>>(
      searchUri,
      queryParameters: {'q': q},
    );
    return result.data! //
        .map((e) => e! as Json)
        .map(LocationApiModel.fromJson);
  }

  static const searchUri = '/search.json';
}
