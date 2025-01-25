import 'package:coffee_shop/core/constants/string_manger.dart';
import 'package:coffee_shop/core/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: kSora),
    );
  }
}
