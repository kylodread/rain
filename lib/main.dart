import 'package:flutter/material.dart';
import 'package:rain/screens/rain.dart';  // Import the RainPage class from rain.dart

void main() {
  runApp(const RainApp());
}

class RainApp extends StatelessWidget {
  const RainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RainPage(), // Set RainPage as the home page
      debugShowCheckedModeBanner: false, // Hide the debug banner
    );
  }
}
