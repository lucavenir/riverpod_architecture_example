import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:riverpod_architecture_example/clients/dio.dart';
import 'package:riverpod_architecture_example/src/locations/data/sources/search_api.dart';
import 'package:riverpod_architecture_example/src/locations/domain/entities/locations.dart';
import 'package:riverpod_architecture_example/src/locations/domain/repositories/locations_repository_interface.dart';

import '../mocks/base_query_param_stub.dart';
import '../mocks/search_results_stub.dart';

void main() {
  late ProviderContainer container;
  late Dio client;
  late DioAdapter clientMock;
  late LocationsRepositoryInterface repository;

  group('[Locations]', () {
    setUp(() {
      client = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          queryParameters: baseQueryParamsStub,
        ),
      );
      clientMock = DioAdapter(dio: client);

      final clientProvider = httpClientProvider(loggerLabel: locationsApiDebugLogLabel);
      container = ProviderContainer(
        overrides: [
          clientProvider.overrideWith((ref) => clientMock.dio),
        ],
      );

      repository = container.read(locationsRepositoryProvider);
    });
    tearDown(() {
      client.close();
      clientMock.close();
      container.dispose();
    });

    test('correctly retrieves `Locations` when 200 OK is given', () async {
      clientMock.onGet(
        SearchApi.searchUri,
        (server) => server.reply(200, searchResultsStub),
        queryParameters: {'q': searchStub},
      );

      final results = await repository.findLocations(searchStub);
      expect(results, isA<Locations>());

      final result = results.places.single;
      expect(result.cityName, searchStub);
    });
  });
}
