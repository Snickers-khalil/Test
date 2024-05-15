// views/screens/network_image_screen.dart

import 'package:flutter/material.dart';

class NetworkImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Images'),
      ),
      body: const Center(
        child: Text('Network Images based on selected city'),
      ),
    );
  }
}
