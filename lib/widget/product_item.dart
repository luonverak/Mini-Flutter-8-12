import 'dart:io';
import 'dart:js_interop';

import 'package:demo3/model/category_model.dart';
import 'package:demo3/model/product_model.dart';
import 'package:flutter/material.dart';

List item = [];

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 2,
        height: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 225, 225),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                model.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    model.category,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 90, 90, 90),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${model.price}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
