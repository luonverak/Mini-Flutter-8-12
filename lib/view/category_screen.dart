import 'package:demo3/model/category_model.dart';
import 'package:demo3/model/product_model.dart';
import 'package:flutter/material.dart';

import '../widget/bycategory.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.model});
  final CategoryModel model;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final controller = TextEditingController();
  late List byCategory = listProduct
      .where((element) => int.parse(element.category) == widget.model.id)
      .toList();
  @override
  void initState() {
    byCategory.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 165,
                  color: const Color.fromARGB(255, 38, 157, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${widget.model.name} Category',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 130),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.blueGrey)),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: controller,
                        onChanged: (value) {},
                        style: const TextStyle(fontSize: 18),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search products',
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                byCategory.length,
                (index) => categoryItem(
                  context,
                  byCategory[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
