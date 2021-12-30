import 'package:flutter/material.dart';

class WidgetCustomCheckbox extends StatefulWidget {
  WidgetCustomCheckbox();
  bool isChecked = false;

  @override
  State<WidgetCustomCheckbox> createState() => _WidgetCustomCheckboxState();
}

class _WidgetCustomCheckboxState extends State<WidgetCustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          widget.isChecked = !widget.isChecked;
        }),
      },
      child: Icon(Icons.star, color: widget.isChecked ?Colors.black : Colors.grey,),
    );
  }
}
