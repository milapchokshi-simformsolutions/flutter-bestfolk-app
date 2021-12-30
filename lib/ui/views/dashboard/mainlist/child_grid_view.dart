import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';

class ChildGridView extends StatelessWidget {
  final MainScreenDummyData listData;

  const ChildGridView(this.listData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width / 2),
              height: 100,
              child: Image.network(
                listData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5.0, 0.0, 0),
              child: Text(
                listData.dateTime,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 3.0, 0.0, 3.0),
              child: Text(
                listData.topic ,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'MontaguSlab',
                ),
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0.0, 3.0),
                  child: Text(
                    listData.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
