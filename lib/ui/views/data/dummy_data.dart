class DummyData {
  int id;
  String name;
  int colorCode;

  DummyData(this.id, this.name, this.colorCode);

  static Future<List<DummyData>> getData() async {
    var listData = <DummyData>[];
    listData.add(DummyData(1, 'milap', 500));
    listData.add(DummyData(2, 'milap', 600));
    listData.add(DummyData(3, 'milap', 700));
    listData.add(DummyData(4, 'milap', 800));
    listData.add(DummyData(1, 'milap', 500));
    listData.add(DummyData(2, 'milap', 600));
    listData.add(DummyData(3, 'milap', 700));
    listData.add(DummyData(4, 'milap', 800));
    listData.add(DummyData(1, 'milap', 500));
    listData.add(DummyData(2, 'milap', 600));
    listData.add(DummyData(3, 'milap', 700));
    listData.add(DummyData(4, 'milap', 800));
    await Future.delayed(const Duration(seconds: 2));

    return listData;
  }
}

List<DummyData> getListData = [
  DummyData(1, 'milap', 500),
  DummyData(2, 'milap', 600),
  DummyData(3, 'milap', 700),
  DummyData(4, 'milap', 800),
  DummyData(1, 'milap', 500),
  DummyData(2, 'milap', 600),
  DummyData(3, 'milap', 700),
  DummyData(4, 'milap', 800),
  DummyData(1, 'milap', 500),
  DummyData(2, 'milap', 600),
  DummyData(3, 'milap', 700),
  DummyData(4, 'milap', 800),
  DummyData(1, 'milap', 500),
  DummyData(2, 'milap', 600),
  DummyData(3, 'milap', 700),
  DummyData(4, 'milap', 800),
];
