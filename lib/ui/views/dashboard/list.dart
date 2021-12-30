import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/data/dummy_data.dart';

class List extends StatelessWidget {
  List();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DummyData.getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[getListData[index].colorCode],
                    child:
                        Center(child: Text("Entry ${getListData[index].name}")),
                  );
                },
                itemCount: getListData.length,
              );
            }
        }
      },
    );
  }
}
