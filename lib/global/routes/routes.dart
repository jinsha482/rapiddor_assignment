
import 'package:flutter/material.dart';
import 'package:rapiddoreproject/modules/cart/view/cart_screen.dart';
import 'package:rapiddoreproject/modules/productlist/view/product_list.screen.dart';

import 'package:rapiddoreproject/modules/splash/view/splash_screen.dart';

import '../../modules/productdetails/view/product_details.screen.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/': (BuildContext context) => const SplashScreen(),
  'product-list' : (BuildContext context) => const ProductListScreen(),
  'product-details' : (BuildContext context) => const ProductDetailsScreen(),
  'product-cart' : (BuildContext context) => const ProductCartScreen(),

};