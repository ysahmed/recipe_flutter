import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final String _rating;

  const RatingBadge(
    String rating, {
    super.key,
  }) : _rating = rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 255, 179, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            size: 16,
            color: Color.fromRGBO(255, 173, 48, 1),
          ),
          Text(_rating),
        ],
      ),
    );
  }
}
