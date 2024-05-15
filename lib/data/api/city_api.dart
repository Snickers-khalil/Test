// data/api/city_api.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class CityApi {
  Future<List<Map<String, dynamic>>> fetchCitiesByCountry(String countryCode) async {
    final response = await http.get(Uri.parse('http://165.16.11.220/auth/api/geological_addressing/cities/fetch/by_country?country_code=$countryCode'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load cities');
    }
  }
}
