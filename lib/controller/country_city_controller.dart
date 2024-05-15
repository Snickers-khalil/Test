// controllers/country_city_controller.dart

import 'package:get/get.dart';

import '../data/model/city.dart';
import '../data/model/country.dart';
import '../data/repository/city_repository.dart';
import '../data/repository/country_repository.dart';

class CountryCityController extends GetxController {
  var selectedCountry = Rx<Country?>(null);
  var selectedCity = Rx<City?>(null);

  var countries = <Country>[].obs;
  var cities = <City>[].obs;

  final CountryRepository countryRepository = CountryRepository();
  final CityRepository cityRepository = CityRepository();

  @override
  void onInit() {
    fetchCountries();
    super.onInit();
  }

  void fetchCountries() async {
    var fetchedCountries = await countryRepository.fetchAllCountries();
    countries.assignAll(fetchedCountries);
  }

  void fetchCitiesByCountry(String countryCode) async {
    var fetchedCities = await cityRepository.fetchCitiesByCountry(countryCode);
    cities.assignAll(fetchedCities);
  }

  void setSelectedCountry(Country? country) {
    selectedCountry.value = country;
    fetchCitiesByCountry(country!.code);
  }

  void setSelectedCity(City? city) {
    selectedCity.value = city;
  }
}
