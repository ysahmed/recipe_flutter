import 'package:flutter/material.dart';

class SearchTextInput extends StatelessWidget {
  const SearchTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0),
            focusColor: Colors.black54,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black26,
              ),
            ),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.black26,
            hintText: 'Search recipe',
            hintStyle: const TextStyle(
              color: Colors.black26,
            )),
      ),
    );
  }
}
