

 import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../modules/productlist/model/productlist.model.dart';


class DataLayerController with ChangeNotifier {
// //*---------------------------------------------------------------- Model instances Starts

 List <ProductListModel> productListModel = [];
List<ProductListModel> productCartList = [];




// //!--- ProductList Model Initialization
  setProductListModel(Response response) {
  
   for (final data in json.decode(response.body)){
  productListModel.add(ProductListModel.fromJson(
    data
  ));
   }

    notifyListeners();
  }

 setCartListModel(Response response){
    for (final data in json.decode(response.body)){
  productCartList.add(ProductListModel.fromJson(
    data
  ));
   }

    notifyListeners();
 }
}

