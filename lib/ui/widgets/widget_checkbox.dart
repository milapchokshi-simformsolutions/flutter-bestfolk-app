import 'package:flutter/material.dart';

typedef onchanged = void Function(bool?);
typedef value = bool Function();

class WidgetCheckbox extends StatefulWidget {
  final MaterialColor activeColor;
  final onchanged? OnChanged;
  final value? checkBoxValue;

  WidgetCheckbox(
      {required this.activeColor,
      required this.OnChanged,
      @required this.checkBoxValue});

  @override
  State<WidgetCheckbox> createState() => _WidgetCheckboxState();
}

class _WidgetCheckboxState extends State<WidgetCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      activeColor: widget.activeColor,
      shape: const CircleBorder(),
      value: false,
      onChanged: widget.OnChanged,
    );
  }
}
