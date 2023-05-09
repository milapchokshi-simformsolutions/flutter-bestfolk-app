import 'package:flutter/material.dart';

class AppbarAction extends StatelessWidget {
  final Widget icon;
  final String? lable;
  final VoidCallback? onPress;

  const AppbarAction({Key? key, required this.icon, this.lable, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        children: [
          icon,
          Text(lable ?? "", style: const TextStyle(color: Colors.black)),
        ],
      ),
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
    );
  }
}
