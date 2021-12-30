import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/child_grid_view.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';
import 'package:helloworld/ui/widgets/widget_custom_checkbox.dart';

class ArticleDetailScreen extends StatelessWidget {
  final MainScreenDummyData data;
  static const routeName = '/ArticleDetailScreen';
  const ArticleDetailScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: TextButton.icon(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          label: const Text(
            '',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                data.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'MontaguSlab',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Written by null',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.dateTime,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      WidgetCustomCheckbox(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
              child: Text(
                data.description,
                style: const TextStyle(
                    fontSize: 12, decoration: TextDecoration.none),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 8.0, right: 8.0, top: 24, bottom: 14),
              child: Text(
                'Sources:',
                style: TextStyle(fontSize: 14, decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Similar articles',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'see more',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                  MainScreenDummyData.getListData.length,
                  (index) {
                    return ChildGridView(
                      MainScreenDummyData.getListData[index],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
