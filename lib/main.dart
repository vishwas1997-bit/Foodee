import 'package:flutter/material.dart';
import 'package:foodee_app/screen/FoodeeDashboard.dart';

void main() {
  runApp(const FoodeeApp());
}

class FoodeeApp extends StatelessWidget {
  const FoodeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FoodeeDashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
