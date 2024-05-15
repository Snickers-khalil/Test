// data/api/country_api.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class CountryApi {
  Future<List<Map<String, dynamic>>> fetchAllCountries() async {
    final response = await http.get(Uri.parse('http://165.16.11.220/auth/api/geological_addressing/countries/fetch/all'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load countries');
    }
  }
}
