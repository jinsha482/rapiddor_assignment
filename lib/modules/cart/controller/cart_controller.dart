import 'package:flutter/material.dart';

import 'package:rapiddoreproject/global/constants/db_key.dart';

import '../../productlist/model/productlist.model.dart';

import 'package:flutter/foundation.dart';


class CartController with ChangeNotifier {
 
 
   increaseQuantity(ProductListModel product) {
    product.quantity = (product.quantity ?? 0) + 1;
    notifyListeners();
  }

   decreaseQuantity(ProductListModel product,int index) {
    if (product.quantity != null && (product.quantity ?? 0) > 0) {
      addedProduct.deleteAt(index);
      notifyListeners();
    } else {
     
    }
    notifyListeners();
  }
}
