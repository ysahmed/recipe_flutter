import 'package:flutter/material.dart';
import 'package:recipe/utils/constants.dart';

class Button extends StatelessWidget {
  final VoidCallback _onPressed;
  final double _width;
  final double _height;
  final String? _text;
  final IconData? _icon;
  final Color _color;
  const Button({
    super.key,
    required VoidCallback onPressed,
    required double width,
    required double height,
    String? text,
    IconData? icon,
    Color color = buttonColor,
  })  : _onPressed = onPressed,
        _width = width,
        _height = height,
        _text = text,
        _color = color,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: MaterialButton(
        onPressed: _onPressed,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textColor: Colors.white,
        color: _color,
        elevation: 0,
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_text != null) Text(_text),
            if (_text != null && _icon != null)
              const SizedBox(
                width: 15,
              ),
            if (_icon != null) Icon(_icon),
          ],
        ),
      ),
    );
  }
}
