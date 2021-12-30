import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String buttonText;
  final Icon? icon;
  final ButtonStyle? style;

  const WidgetButton(
      {required this.onPress,
      required this.buttonText,
      this.icon,
      @required this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPress,
      child: Text(
        buttonText,
      ),
    );
  }
}
