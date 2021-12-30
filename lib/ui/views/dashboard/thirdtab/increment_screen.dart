import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/thirdtab/decrement_screen.dart';

class IncrementScreen extends StatefulWidget {
  IncrementScreen();

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(counter.toString()),
            ElevatedButton(
              onPressed: () => {
                setState(
                  () {
                    counter++;
                  },
                ),
              },
              child: const Icon(Icons.plus_one),
            ),
            ElevatedButton(
              onPressed: () => {
                _createRoute()
              },
              child: const Text('Next Button'),
            )
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => DecrementScreen(counter),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
