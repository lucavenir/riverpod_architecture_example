import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
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
  final RetrofitClient dio;

  Future<Iterable<LocationApiModel>> locations({required String q}) async {
    final result = await dio.search(q);
    return result;
  }
}
