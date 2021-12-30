import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';

class VerticalListScreen extends StatelessWidget {
  final MainScreenDummyData listData;

  const VerticalListScreen(this.listData);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 8.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 80,
            child: Image.network(
              listData.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listData.topic,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'MontaguSlab',
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    child: Text(
                      listData.dateTime,
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Text(
                    listData.title,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
