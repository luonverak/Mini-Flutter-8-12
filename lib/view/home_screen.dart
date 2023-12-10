import 'package:demo3/model/category_model.dart';
import 'package:demo3/model/product_model.dart';
import 'package:demo3/view/category_screen.dart';
import 'package:demo3/widget/colors_data.dart';
import 'package:flutter/material.dart';
import '../widget/all_item.dart';
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
      body: SafeArea(
        child: ListView(
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategoryScreen(model: listCategory[i]),
                            ),
                          );
                        },
                        child: Text(
                          listCategory[i].name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
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
                  for (int i = 0; i < 3; i++)
                    ProductItem(
                      model: listProduct[i],
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Best Selling',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: listProduct.length,
                itemBuilder: (context, index) {
                  return AllItem(
                    model: listProduct[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
