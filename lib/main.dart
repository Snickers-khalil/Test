// main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testcentralbank/views/screen/country_city_screen.dart';
import 'package:testcentralbank/views/screen/network_image_screen.dart';
import 'controller/country_city_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Country & City Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => CountryCityScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => CountryCityController());
          }),
        ),
        GetPage(
          name: '/network-image',
          page: () => NetworkImageScreen(),
        ),
      ],
    );
  }
}
