import 'package:flutter/material.dart';
import 'package:recipe/widgets/button.dart';
import 'package:recipe/widgets/rating_badge.dart';
import 'package:recipe/widgets/ingredient_item.dart';
import 'package:recipe/widgets/search_button.dart';
import 'package:recipe/widgets/search_text_Input.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              onPressed: () {},
              width: 243,
              height: 54,
              text: 'Something',
              // icon: Icons.forward_5_outlined,
            ),
            SizedBox(
              height: 4,
            ),
            Button(
              onPressed: () {},
              width: 40,
              height: 40,
              icon: Icons.access_time_sharp,
            ),
            SizedBox(
              height: 4,
            ),
            SearchTextInput(),
            SizedBox(
              height: 4,
            ),
            const SearchButton(
              height: 40,
              width: 40,
              icon: Icons.search,
            ),
            SizedBox(
              height: 4,
            ),
            RatingBadge("5.0"),
            SizedBox(
              height: 4,
            ),
            IngredientItem(
              name: 'Oil',
              amount: '20 ml',
              imageName: 'splash_bg.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
