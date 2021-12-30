class MainScreenDummyData {
  int id;
  String imageUrl;
  String title;
  String description;
  String topic;
  String dateTime;

  MainScreenDummyData(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.topic,
      required this.dateTime});

  static List<MainScreenDummyData> getListData = [
    MainScreenDummyData(
        id: 1,
        imageUrl: 'https://picsum.photos/250?image=9',
        title:
            "The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three \n The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three",
        description: 'Tamil Nadu rains',
        topic: 'topic',
        dateTime: 'Nov 11, 2021'),
    MainScreenDummyData(
        id: 2,
        imageUrl: 'https://googleflutter.com/sample_image.jpg',
        title: 'Tamil Nadu rains',
        description:
            "The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three \n The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three",
        topic: 'topic',
        dateTime: 'Nov 11, 2021'),
    MainScreenDummyData(
        id: 3,
        imageUrl: 'https://googleflutter.com/sample_image.jpg',
        title: 'Tamil Nadu rains',
        description:
            "The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three \n The Indian Meteorological Department (IMD), Chennai on Thursday predicted thunderstorms with heavy to very heavy rainfall at isolated places over a few districts of Tamil Nadu within the next three",
        topic: 'topic',
        dateTime: 'Nov 11, 2021'),
  ];
}
