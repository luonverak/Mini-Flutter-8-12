import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          iconSize: 30,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_outlined,
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            backgroundColor: Colors.teal,
            title: const Text('Home'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.search),
            selectedIcon: const Icon(Icons.search),
            backgroundColor: Colors.blue,
            selectedColor: Colors.red,
            title: const Text('Search'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            selectedIcon: const Icon(Icons.star_rounded),
            selectedColor: Colors.red,
            backgroundColor: Colors.red,
            title: const Text('Cart'),
          ),
          BottomBarItem(
              icon: const Icon(
                Icons.favorite_border,
              ),
              selectedIcon: const Icon(Icons.style),
              backgroundColor: Colors.amber,
              selectedColor: Colors.deepOrangeAccent,
              title: const Text('Favorite')),
          BottomBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              selectedIcon: const Icon(
                Icons.person,
              ),
              backgroundColor: Colors.purpleAccent,
              selectedColor: Colors.deepPurple,
              title: const Text('Profile')),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [
            Center(child: Text('Home')),
            Center(child: Text('Star')),
            Center(child: Text('Style')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
