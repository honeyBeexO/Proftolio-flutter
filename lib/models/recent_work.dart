class RecentWork {
  final String title;
  final String category;
  final String imageURL;
  final int id;
  RecentWork({this.id, this.title, this.category, this.imageURL});
}

String _title = 'New & Fresh looking protfolio indeed at the end.';
List<RecentWork> recentWorks = [
  RecentWork(id: 1, title: _title, category: 'Graphic Design', imageURL: 'images/work_1.png'),
  RecentWork(id: 2, title: _title, category: 'Graphic Design', imageURL: 'images/work_2.png'),
  RecentWork(id: 3, title: _title, category: 'Graphic Design', imageURL: 'images/work_3.png'),
  RecentWork(id: 4, title: _title, category: 'Graphic Design', imageURL: 'images/work_4.png'),
];
