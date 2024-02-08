import 'package:flutter/material.dart';
import 'package:recipe/utils/constants.dart';

class SearchButton extends StatelessWidget {
  final double _height, _width;

  final IconData _icon;

  const SearchButton({
    super.key,
    required double height,
    required double width,
    required icon,
  })  : _height = height,
        _width = width,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: MaterialButton(
        onPressed: () {},
        color: buttonColor,
        padding: const EdgeInsets.all(0),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Icon(
          _icon,
          size: _height - 8,
        ),
      ),
    );
  }
}
