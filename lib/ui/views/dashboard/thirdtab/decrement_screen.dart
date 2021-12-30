import 'package:flutter/material.dart';

class DecrementScreen extends StatefulWidget {
  int counter;

  DecrementScreen(this.counter);

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.counter.toString()),
            ElevatedButton(
              onPressed: widget.counter == 0
                  ? null
                  : () => {
                        setState(
                          () {
                            if (widget.counter > 0) {
                              widget.counter--;
                            }
                          },
                        ),
                      },
              child: const Icon(Icons.exposure_minus_1),
            ),
            ElevatedButton(
              onPressed: () => {

              },
              child: const Text('Back Button'),
            )
          ],
        ),
      ),
    );
  }
}
