

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapiddoreproject/global/controllers/data_layer.controller.dart';
import 'package:rapiddoreproject/modules/productlist/service/product_list.service.dart';

class ProductListController extends ChangeNotifier{

  //------------- initMethod
  onInit(BuildContext context){
    getProductsList(context);
    notifyListeners();
  }

//-------- set Index for getting productDetails
int productIndex = 0;
setProductIndex(int index ){
  productIndex = index;
  notifyListeners();

}
 //------ getProductList

 bool productListApiLoading = false;
  getProductsList(BuildContext context)async{
    var dataCtrl = Provider.of<DataLayerController>(context, listen: false);
    productListApiLoading = true;
    notifyListeners();
    final response = await ProductListService().getProductsList();
    log(response.statusCode.toString());
    if(response.statusCode == 200){
      dataCtrl.setProductListModel(response);
      productListApiLoading = false;
      log("kkk",name: "hhhb");
      notifyListeners();
    }
    else{
       log("kkk",name: "hhhb");
      productListApiLoading = false;
      notifyListeners();
    }
 notifyListeners();
  } 
}