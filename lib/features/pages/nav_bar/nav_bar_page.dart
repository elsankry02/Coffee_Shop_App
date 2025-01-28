import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/pages/cart/cart_page.dart';
import 'package:coffee_shop/features/pages/heart/heart_page.dart';
import 'package:coffee_shop/features/pages/home/home_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  bool isSelected = true;
  int currentIndex = 0;
  List<Widget> navPage = [
    HomePage(),
    HeartPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPage.elementAt(currentIndex),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: ColorManger.kMaterialColor),
          unselectedIconTheme: IconThemeData(color: ColorManger.k7),
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              //! active
              activeIcon: Icon(Icons.home_rounded),
              //! Selected
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              //! active
              activeIcon: Icon(Icons.favorite),
              //! Selected
              icon: Icon(Icons.favorite_border_rounded),
            ),
            BottomNavigationBarItem(
              label: '',
              //! active
              activeIcon: Icon(Icons.shopping_bag),
              //! Selected
              icon: Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
