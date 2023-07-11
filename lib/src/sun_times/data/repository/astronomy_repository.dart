import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/astronomy_response_dto.dart';
import '../sources/astronomy_api.dart';

part 'astronomy_repository.g.dart';

@riverpod
AstronomyRepository astronomyRepository(AstronomyRepositoryRef ref) {
  final api = ref.watch(astronomyApiProvider);

  return AstronomyRepository(api);
}

class AstronomyRepository {
  const AstronomyRepository(this.api);
  final AstronomyApi api;

  Future<AstronomyResponseDto> getAstronomy(String city) async {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    final result = await api.astronomy(city, date.toIso8601String());

    return AstronomyResponseDto.fromJson(result);
  }
}
