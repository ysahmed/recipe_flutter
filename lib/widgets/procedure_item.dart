import 'package:flutter/material.dart';

class ProcedureItem extends StatelessWidget {
  final int _step;
  const ProcedureItem({super.key, required int step}) : _step = step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step $_step',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur? Tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
