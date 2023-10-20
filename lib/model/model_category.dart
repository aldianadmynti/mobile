import 'package:tugasmobile/model/model.dart';

class CategoryMod {
  final String nama;
  final List<Model> data;

  CategoryMod({required this.nama, required this.data});
}

List<CategoryMod> listCategory = [
  CategoryMod(nama: 'Best Place', data: bestPlace),
  CategoryMod(nama: 'Most Visited', data: mostVisited),
  CategoryMod(nama: 'Favourites', data: favourites),
  CategoryMod(nama: 'Other', data: other),
];

List<Model> favourites = [
  Model(
      url: 'images/city3.jpg',
      title: 'Bali',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
  Model(
      url: 'images/city2.jpg',
      title: 'Bandung',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
  Model(
      url: 'images/city4.jpg',
      title: 'Malang',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
];

List<Model> mostVisited = [
  Model(
      url: 'images/city1.jpg',
      title: 'Jogja',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
  Model(
      url: 'images/city4.jpg',
      title: 'Malang',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
];

List<Model> bestPlace = [
  Model(
      url: 'images/city2.jpg',
      title: 'Bandung',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
  Model(
      url: 'images/city3.jpg',
      title: 'Bali',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
];

List<Model> other = [
  Model(
      url: 'images/city2.jpg',
      title: 'Bandung',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
  Model(
      url: 'images/city3.jpg',
      title: 'Bali',
      desc:
          'apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj asfjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif apa itu dex kau ga tau asdkfjasdklfj as;fjweoif ',
      rating: 0),
];
// var category = [
//   'Best Place',
//   'Most Visited',
//   'Favourites',
//   'New Added',
//   'Hotels',
//   'Restaurant'
// ];
