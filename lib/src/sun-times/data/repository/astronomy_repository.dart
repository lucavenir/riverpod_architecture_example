// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'astronomy_repository.g.dart';

// @riverpod
// AstronomyRepository astronomyRepository(AstronomyRepositoryRef ref) {
//   final api = ref.watch(astronomyApiProvider);

//   return AstronomyRepository(api);
// }

// class AstronomyRepository {
//   const AstronomyRepository(this.api);
//   final AstronomyApi api;

//   Future<AstronomyResponse> getAstronomy(String city) async {
//     final result = await api.astronomy(city);

//     return AstronomyResponse.fromJson(result);
//   }
// }
