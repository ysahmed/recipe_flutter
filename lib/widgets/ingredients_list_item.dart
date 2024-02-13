import 'package:flutter/material.dart';

class IngredientsListItem extends StatelessWidget {
  final String _name, _amount, _imageName;
  const IngredientsListItem(
      {super.key,
      required String name,
      required String amount,
      required String imageName})
      : _name = name,
        _amount = amount,
        _imageName = imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1, vertical: 15),
          child: ListTile(
            leading: Container(
              height: 52,
              width: 52,
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/$_imageName'), // image path
              ),
            ),
            title: Text(
              _name,
              style: TextStyle(fontSize: 20),
              maxLines: 1,
            ), // Item name
            trailing: Text(
              _amount,
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ), // amount
          ),
        ),
      ),
    );
  }
}
