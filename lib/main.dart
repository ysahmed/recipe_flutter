import 'package:flutter/material.dart';
import 'package:recipe/pages/recipe_detail_page.dart';
import 'package:recipe/pages/start_page.dart';
import 'package:recipe/preview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RecipeDetailPage(),
    );
  }
}
