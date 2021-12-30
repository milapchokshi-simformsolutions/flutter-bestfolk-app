import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/article_detail_screen.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/child_grid_view.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/horizontal_list_screen.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/medicine_header_screen.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/vertical_list_screen.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';
import 'package:helloworld/ui/views/data/medicine_type_data.dart';

class MainListScreen extends StatelessWidget {
  const MainListScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Center(
            child: Text(
              'Best Folk Medicine',
              style: TextStyle(
                  fontFamily: 'PlayFairDisplay',
                  fontSize: 30,
                  color: Colors.black),
            ),
          ),
          TextField(
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  child: MedicineHeaderScreen(
                    getMedicineListData[index],
                  ),
                  onTap: () => Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text(index.toString()))),
                );
              },
              itemCount: getMedicineListData.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Main articles',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  'see more',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height / 2) + 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  child: HorizontalListScreen(
                    MainScreenDummyData.getListData[index],
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticleDetailScreen(
                          data: MainScreenDummyData.getListData[index]),
                    ),
                  ),
                );
              },
              itemCount: MainScreenDummyData.getListData.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20, 10.0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'You have not finished reading',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  'see more',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  child: VerticalListScreen(
                    MainScreenDummyData.getListData[index],
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ArticleDetailScreen.routeName,
                      arguments: MainScreenDummyData.getListData[index]
                    );
                  },
                );
              },
              itemCount: MainScreenDummyData.getListData.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20, 10.0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Last articles',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  'see more',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
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
    );
  }
}
