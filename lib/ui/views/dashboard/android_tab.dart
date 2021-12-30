import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/ios_tab.dart';
import 'package:helloworld/ui/widgets/widget_button.dart';

class AndroidTab extends StatelessWidget {
  AndroidTab();

  ButtonStyle style = ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WidgetButton(
            onPress: () {
              /*Alerts.showAlertDialog(
                  context, 'milap',  ()=>Navigator.pop(context, false));*/
              openDialog(context);
            },
            buttonText: "Alert Dialog",
            style: style,
          ),
          WidgetButton(
            onPress: () => {
              /*Alerts.showAlertDialog(context, 'milap chokshi',
                  () => Navigator.pop(context, false))*/
              _askedToLead(context)
            },
            buttonText: "Simple Dialog",
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
          WidgetButton(
            onPress: () {
              openBottomSheet(context);
            },
            buttonText: "Bottom Sheet",
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
          WidgetButton(
            onPress: () {
              openModelBottomSheet(context);
            },
            buttonText: "Model Bottom Sheet ",
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _askedToLead(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text(
            'Select assignment',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            Row(
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Treasury department',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    print('simple Dialog option click');
                  },
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      print('simple button click');
                    },
                    child: const Text(
                      'State ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  void openBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.red,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height / 4,
        maxHeight: MediaQuery.of(context).size.height / 2,
        minWidth: MediaQuery.of(context).size.width - 20,
      ),
      elevation: 20,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      builder: (context) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: IosTab(),
        );
      },
    );
  }

  void openModelBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 20,
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
        maxHeight: MediaQuery.of(context).size.height,
        minWidth: MediaQuery.of(context).size.width - 20,
      ),
      builder: (context) {
        return const IosTab();
      },
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
          'Alert Dialog',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        content: const Text(
          'Description of alert dialog',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
