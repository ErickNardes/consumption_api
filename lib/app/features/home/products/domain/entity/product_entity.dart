// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductEntity {
  final String title;
  final String description;
  final int price;
  final String category;
  final String brand;
  final List<String> photos;
  const ProductEntity({
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.brand,
    required this.photos,
  });
}
