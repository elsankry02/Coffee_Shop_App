import 'package:coffee_shop/app.dart';
import 'package:flutter/material.dart';

import 'core/cached/cached_hleper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachedHleper.getInatial();
  runApp(const CoffeeShop());
}
