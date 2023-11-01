import 'package:flutter/material.dart';
import 'package:store_app/constants/app_routes.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.homePage: (context) => const HomePage(),
  AppRoutes.updateProductPage: (context) => ProductPage(),
};
