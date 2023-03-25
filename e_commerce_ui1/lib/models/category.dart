class Category {
  final int? id;
  final String? title;

  Category({
    required this.id,
    required this.title,
  });

  static List<Category> catagories = [
    Category(id: 0, title: 'All Category'),
    Category(id: 1, title: 'Category 1'),
    Category(id: 2, title: 'Category 2'),
    Category(id: 3, title: 'Category 3'),
    Category(id: 4, title: 'Category 4'),
    Category(id: 5, title: 'Category 5'),
    Category(id: 6, title: 'Category 6'),
    Category(id: 7, title: 'Category 7'),
    Category(id: 8, title: 'Category 8'),
  ];
}
