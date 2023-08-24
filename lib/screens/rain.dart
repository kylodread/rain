import 'package:flutter/material.dart';

void main() {
  runApp(const RainApp());
}

class RainApp extends StatelessWidget {
  const RainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RainPage(),
    );
  }
}

class RainPage extends StatelessWidget {
  const RainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            // Handle menu icon press here
          },
        ),
        title: const Text(
          'my rain',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Color(0xFF0077c8),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity, // Make the container span the entire width
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            color: const Color(0xFF0077c8), // Set the background color
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Date: ${DateTime.now().toString().split(" ")[0]}', // Display date
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Time: ${DateTime.now().toString().split(" ")[1]}', // Display time
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
