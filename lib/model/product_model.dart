import 'package:demo3/model/category_model.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String description;
  late int counter;
  final String image;
  final List<String> previewImage;
  final List<int> size;
  late bool favorite;
  final String date;
  final Color color;
  final String category; // foreign key

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.counter,
    required this.image,
    required this.previewImage,
    required this.size,
    required this.favorite,
    required this.date,
    required this.color,
    required this.category,
  });
}

final List<ProductModel> listProduct = [
  ProductModel(
      id: 1,
      name: 'Men Cloud X3',
      price: 10,
      description:
          'The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.',
      counter: 1,
      image: 'asset/image/shoe1.webp',
      previewImage: [
        'asset/image/shoe1.webp',
        'asset/image/shoe2.webp',
        'asset/image/shoe3.webp',
        'asset/image/shoe4.png',
      ],
      size: [41, 42, 43, 44],
      favorite: false,
      date: '11/12/2023',
      color: Colors.black,
      category: '${listCategory[2].id}'),
  ProductModel(
    id: 2,
    name: 'Men Cloud X3',
    price: 15,
    description:
        'The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.',
    counter: 1,
    image: 'asset/image/shoe7.png',
    previewImage: [
      'asset/image/shoe1.webp',
      'asset/image/shoe2.webp',
      'asset/image/shoe3.webp',
      'asset/image/shoe4.png',
    ],
    size: [41, 42, 43, 44],
    favorite: false,
    date: '16/12/2023',
    color: Colors.blue,
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 3,
    name: 'Men Cloud X3',
    price: 10,
    description:
        'The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.',
    counter: 1,
    image: 'asset/image/soe9.png',
    previewImage: [
      'asset/image/shoe1.webp',
      'asset/image/shoe2.webp',
      'asset/image/shoe3.webp',
      'asset/image/shoe4.png',
    ],
    size: [41, 42, 43, 44],
    favorite: false,
    date: '11/12/2023',
    color: Colors.red,
    category: '${listCategory[2].id}',
  ),
  ProductModel(
    id: 4,
    name: 'Men Cloud X3',
    price: 15,
    description:
        'The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.',
    counter: 1,
    image: 'asset/image/shoe4.png',
    previewImage: [
      'asset/image/shoe1.webp',
      'asset/image/shoe2.webp',
      'asset/image/shoe3.webp',
      'asset/image/shoe4.png',
    ],
    size: [41, 42, 43, 44],
    favorite: false,
    date: '16/12/2023',
    color: Colors.orange,
    category: '${listCategory[3].id}',
  )
];
