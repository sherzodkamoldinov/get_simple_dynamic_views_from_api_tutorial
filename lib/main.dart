import 'package:dynamic_view/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}

// MODEL BUILDER
// flutter packages pub run build_runner build --delete-conflicting-outputs
