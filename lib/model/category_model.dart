class CategoryModel {
  final int id; // primary_key
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });
}

final List<CategoryModel> listCategory = [
  CategoryModel(id: 1, name: 'Popular'),
  CategoryModel(id: 2, name: 'New Realease'),
  CategoryModel(id: 3, name: 'Men'),
  CategoryModel(id: 4, name: 'Women'),
];
