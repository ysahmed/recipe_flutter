import 'package:flutter/material.dart';
import 'package:recipe/widgets/button.dart';
import 'package:recipe/widgets/search_text_Input.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SearchTextInput(),
        ),
        const SizedBox(
          width: 20,
        ),
        Button(
          onPressed: () {},
          width: 40,
          height: 40,
          icon: Icons.search,
        )
      ],
    );
  }
}
