// data/repository/city_repository.dart

import '../api/city_api.dart';
import '../model/city.dart';

class CityRepository {
  final CityApi cityApi = CityApi();

  Future<List<City>> fetchCitiesByCountry(String countryCode) async {
    var cities = await cityApi.fetchCitiesByCountry(countryCode);
    return cities.map((json) => City.fromJson(json)).toList();
  }
}
