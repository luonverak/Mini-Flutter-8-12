import 'package:demo3/model/category_model.dart';
import 'package:demo3/model/product_model.dart';
import 'package:demo3/widget/colors_data.dart';
import 'package:flutter/material.dart';

import '../widget/appbar_screen.dart';
import '../widget/drawer_screen.dart';
import '../widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: const DrawerScreen(),
      body: ListView(
        children: [
          const AppBarScreen(),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < listCategory.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: Text(
                      listCategory[i].name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < listProduct.length; i++)
                  ProductItem(
                    model: listProduct[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
