import 'package:demo3/model/category_model.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String description;
  late int counter;
  late String image;
  final List<String> previewImage;
  final List<dynamic> size;
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
          'The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.The ultra-agile shoe for mixed-sport workouts and all-day wear. With a breathable upper and impact-absorbing cushioning.',
      counter: 1,
      image: 'asset/image/shoe1.webp',
      previewImage: [
        'asset/image/shoe1.webp',
        'asset/image/shoe2.webp',
        'asset/image/shoe3.webp',
        'asset/image/soe9.png',
      ],
      size: [41, 42, 43, 44],
      favorite: false,
      date: '11/12/2023',
      color: Colors.red,
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
  ),
  ProductModel(
    id: 5,
    name: 'Cotton Sweatshirt',
    price: 20,
    image: 'asset/image/Loose-Fit-T-Shirt (3).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 6,
    name: 'Baggy Sweatshirt',
    price: 15,
    image: 'asset/image/Hoodie-Jacket (1).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 7,
    name: 'Baggy Sweatshirt',
    price: 10,
    image: 'asset/image/T-SHIRT (3).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 8,
    name: 'Baggy Sweatshirt',
    price: 20,
    image: 'asset/image/Windbeaker-With-Hood (2).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 9,
    name: 'Baggy Sweatshirt',
    price: 20,
    image: 'asset/image/T-SHIRTS (7).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 6,
    name: 'Cloud X3',
    price: 10,
    image: 'asset/image/shoe1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  ),
  ProductModel(
    id: 10,
    name: 'Cloud X3',
    price: 10,
    image: 'asset/image/shoe7.png',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
    color: Colors.orange,
    date: '11/23/23',
    previewImage: [
      'asset/image/Windbeaker-With-Hood (2).jpg',
      'asset/image/T-SHIRTS (7).jpg',
      'asset/image/kid.webp',
      'asset/image/Loose-Fit-T-Shirt (3).jpg'
    ],
    category: '${listCategory[3].id}',
  )
];
