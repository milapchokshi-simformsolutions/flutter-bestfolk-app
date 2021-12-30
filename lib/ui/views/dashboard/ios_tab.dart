import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/ui/widgets/widget_button.dart';

class IosTab extends StatelessWidget {
  const IosTab();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WidgetButton(
          onPress: () {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alert'),
                content: const Text('Proceed with destructive action?'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: const Text('No'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: const Text('Yes'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
          buttonText: "CupertinoAlertDialog",
          style: null,
        ),
        WidgetButton(
          onPress: () {
            showCupertinoDialog(
              context: context,
              builder: (_) => Container(
                alignment: Alignment.center,
                child: Container(
                  width: 300,
                  height: 200,
                  color: Colors.white,
                  child: CupertinoButton(
                    child: const Text('Close Dialog!'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            );
          },
          buttonText: "CupertinoDialog",
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
        WidgetButton(
          onPress: () {
            final action = CupertinoActionSheet(
              title: const Text(
                "Flutter dev",
                style: TextStyle(fontSize: 30),
              ),
              message: const Text(
                "Select any action ",
                style: TextStyle(fontSize: 15.0),
              ),
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: const Text("Action 1"),
                  isDefaultAction: true,
                  onPressed: () {
                    print("Action 1 is been clicked");
                  },
                ),
                CupertinoActionSheetAction(
                  child: const Text("Action 2"),
                  isDestructiveAction: true,
                  onPressed: () {
                    print("Action 2 is been clicked");
                  },
                )
              ],
              cancelButton: CupertinoActionSheetAction(
                child: const Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );

            showCupertinoModalPopup(
                context: context, builder: (context) => action);
          },
          buttonText: "CupertinoActionSheet",
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
        ),
      ],
    );
  }
}
