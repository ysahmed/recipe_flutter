import 'package:flutter/material.dart';
import 'package:recipe/widgets/category_item.dart';
import 'package:recipe/widgets/new_item.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NewItem(),
          ],
        ),
      ),
    );
  }
}
