// data/repository/country_repository.dart

import '../api/country_api.dart';
import '../model/country.dart';

class CountryRepository {
  final CountryApi countryApi = CountryApi();

  Future<List<Country>> fetchAllCountries() async {
    var countries = await countryApi.fetchAllCountries();
    return countries.map((json) => Country.fromJson(json)).toList();
  }
}
