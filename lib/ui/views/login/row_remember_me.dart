import 'package:flutter/material.dart';

typedef OnCheckboxChange = void Function(bool);
class RowRememberMe extends StatefulWidget {
  RowRememberMe({@required this.changeCheck});

  bool isChecked = false;
  OnCheckboxChange? changeCheck;
  @override
  State<RowRememberMe> createState() => _RowRememberMeState();
}

class _RowRememberMeState extends State<RowRememberMe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          activeColor: Colors.red,
          shape: const CircleBorder(),
          value: widget.isChecked,
          onChanged: (p0) {
            changeCheckBox(value: p0);
          },
        ),
        GestureDetector(
          onTap: () {
            changeCheckBox();
          },
          child: const Text(
            'remember me?',
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }

  void changeCheckBox({bool? value}) {
    setState(() {
      widget.isChecked = value?? !widget.isChecked;
      widget.changeCheck!(widget.isChecked);
    });
  }
}
