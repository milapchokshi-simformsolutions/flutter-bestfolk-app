import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);
typedef onchanged = void Function(String?);

class WidgetEdittext extends StatefulWidget {
  final String hintText;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final Icon? prefixIcon;
  final Validator? validator;
  final onchanged? OnChanged;


  const WidgetEdittext(
      {required this.textInputAction,
      required this.hintText,
      required this.inputType,
      this.prefixIcon,
      required this.validator,
      this.OnChanged});

  @override
  State<WidgetEdittext> createState() => _WidgetEdittextState();
}

class _WidgetEdittextState extends State<WidgetEdittext> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      onChanged:widget.OnChanged,
      keyboardType: widget.inputType,
      textInputAction: widget.textInputAction,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon ?? const Icon(null),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.red,
        ),
      ),
      style: const TextStyle(
        color: Colors.blueAccent,
      ),
    );
  }
}
