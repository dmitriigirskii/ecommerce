class Category {
  final int id;
  final String title;
  final String icon;

  Category({required this.id, required this.title, required this.icon});
}

final categories = [
  Category(id: 1, title: 'Phones', icon: 'phone'),
  Category(id: 2, title: 'Computer', icon: 'computer'),
  Category(id: 3, title: 'Health', icon: 'books'),
  Category(id: 4, title: 'Books', icon: 'heart'),
  Category(id: 5, title: 'Other', icon: 'qr'),
];
