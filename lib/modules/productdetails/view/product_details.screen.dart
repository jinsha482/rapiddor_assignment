

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rapiddoreproject/global/config/config.dart';
import 'package:rapiddoreproject/global/constants/assets/asset_constants.dart';
import 'package:rapiddoreproject/global/constants/db_key.dart';
import 'package:rapiddoreproject/global/dimensions/dimensions.dart';
import 'package:rapiddoreproject/global/styles/colors.dart';
import 'package:rapiddoreproject/global/styles/textstyles.dart';
import 'package:rapiddoreproject/modules/productlist/model/productlist.model.dart';


import '../../../global/controllers/data_layer.controller.dart';
import '../../productlist/controller/product_list.controller.dart';

class ProductDetailsScreen extends StatelessWidget {
   final ProductListModel? model;
  const ProductDetailsScreen({super.key,this.model});
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Consumer2<ProductListController,DataLayerController>(builder: (context, productListCtrl,dataCtrl, _) {
       return  Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight50,
            dataCtrl.productListModel[productListCtrl.productIndex].image?.isNotEmpty ?? false ?
               Image.network(dataCtrl.productListModel[productListCtrl.productIndex].image.toString(),width: double.infinity,height: 300) :
               Image.asset(noImage),
               kHeight20,
               KStyles().bold20(text: dataCtrl.productListModel[productListCtrl.productIndex].title.toString(),color: kGrey),
               kHeight10,
          KStyles().reg14(text: dataCtrl.productListModel[productListCtrl.productIndex].description.toString(),color: kBlack),
          kHeight15,
          KStyles().bold18(text: '₹ ${dataCtrl.productListModel[productListCtrl.productIndex].price.toString() }'),

          kHeight40,
          Center(child: SizedBox(width: 300.w,
            child: uiCon.roundedButton(
              child: KStyles().reg15(text: 'Add to Cart'), onPressed: (){
               if (model != null) {
                          int index = addedProduct.values.toList().indexWhere((val) => val.id == model!.id);
                          if (index != -1) {
                            
                            var existingProduct = addedProduct.getAt(index);
                            existingProduct!.quantity += 1;
                            addedProduct.putAt(index, existingProduct);
                          } else {
                           
                            model!.quantity = 1;
                            addedProduct.add(model!);
                          }
                          Navigator.pushNamed(context, 'product-cart');
                        }
              
              }),
          )
          )
         
            
          ],
               ),
       );
  }));
  }
}