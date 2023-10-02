import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../base/json.dart';
import '../../../../clients/dio.dart';

part 'search_api.g.dart';

/// Label used for logging, useful for testing purposes
const locationsApiDebugLogLabel = 'LocationsApi';

@riverpod
SearchApi locationsApi(LocationsApiRef ref) {
  final client = ref.watch(httpClientProvider(loggerLabel: locationsApiDebugLogLabel));

  return SearchApi(client);
}

class SearchApi {
  const SearchApi(this.dio);
  final Dio dio;

  Future<Iterable<Json>> locations({required String q}) async {
    final result = await dio.get<List<dynamic>>(
      searchUri,
      queryParameters: {'q': q},
    );
    final data = result.data!;
    return data.map((e) => e as Json);
  }

  static const searchUri = '/search.json';
}
