// views/screens/country_city_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/country_city_controller.dart';
import '../../data/model/city.dart';
import '../../data/model/country.dart';
import '../widget/country_city_select.dart';

class CountryCityScreen extends StatelessWidget {
  final CountryCityController controller = Get.put(CountryCityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country & City Selector'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CountryCitySelect(
              title: 'Select Country',
              items: controller.countries,
              onSelected: (dynamic country) {
                controller.setSelectedCountry(country as Country?); // Cast to Country
              },
            ),
            SizedBox(height: 20),
            CountryCitySelect(
              title: 'Select City',
              items: controller.cities,
              onSelected: (dynamic city) {
                controller.setSelectedCity(city as City?); // Cast to City
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the network image screen
                Get.toNamed('/network-image');
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
