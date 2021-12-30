import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';

class HorizontalListScreen extends StatelessWidget {
  final MainScreenDummyData listData;

  const HorizontalListScreen(this.listData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              offset: Offset(0.0, 20),
              spreadRadius: 0,
            ),
          ],
        ),
        width: (MediaQuery.of(context).size.width / 4) * 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width / 4) * 3,
              height: MediaQuery.of(context).size.width / 1.5,
              child: Hero(
                tag: 'imageHero',
                child: Image.network(
                  listData.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10.0, 8, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    listData.topic,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    listData.dateTime,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    listData.title,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'MontaguSlab',
                    ),
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
