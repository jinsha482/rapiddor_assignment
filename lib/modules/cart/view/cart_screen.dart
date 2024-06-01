import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapiddoreproject/global/constants/assets/asset_constants.dart';
import 'package:rapiddoreproject/global/constants/db_key.dart';
import 'package:rapiddoreproject/global/dimensions/dimensions.dart';
import 'package:rapiddoreproject/global/styles/colors.dart';
import 'package:rapiddoreproject/global/styles/textstyles.dart';

import '../../productlist/model/productlist.model.dart';


class ProductCartScreen extends StatefulWidget {
  const ProductCartScreen({super.key});

  @override
  State<ProductCartScreen> createState() => _ProductCartScreenState();
}

class _ProductCartScreenState extends State<ProductCartScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
    appBar: AppBar(title: KStyles().reg20(text: 'Add to Cart'),centerTitle: true,),
      body:SingleChildScrollView(physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children : [
              kHeight20,
              ListView.builder(shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: addedProduct.length,
                itemBuilder: (context,index){
                
                  ProductListModel cartProduct = addedProduct.getAt(index);
               return Padding(
                 padding: const EdgeInsets.only(bottom: 20.0),
                 child: Container(width: double.infinity,height: 200.h,
               decoration: BoxDecoration(border: Border.all(color: kBillBlack,width: 0.5)),
                   child: Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        cartProduct.image?.isNotEmpty ?? false ?
                         Image.network(cartProduct.image.toString(),width: 100.w,height: 100.h,) : Image.asset(noImage),
                         kWidth20,
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            kHeight10,
                             SizedBox(width: 170,
                              child: Text( cartProduct.title.toString(),overflow: TextOverflow.ellipsis,)),
                           
                             Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  IconButton(iconSize: 20,
                                    icon: Icon(
                                      (cartProduct.quantity ?? 0) > 1
                                          ? Icons.remove
                                          : Icons.delete,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                      
                                       if ((cartProduct.quantity ?? 0) > 1) {
                                     cartProduct.quantity =
                                            (cartProduct.quantity ?? 0) - 1;
                                       
                                      }else{
                                       addedProduct.deleteAt(index);
                                      }
                                    },
                                  );}),
                                  KStyles().reg20(text: cartProduct.quantity.toString()),
                                  
                                  IconButton(iconSize: 20,
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                     cartProduct.quantity =
                                            (cartProduct.quantity ?? 0) + 1;
                                    },
                                  );
                                    }
                                  ),
                                  
                           ],
                         ),
                         kHeight10,
                           Center(child: KStyles().reg22(text:'₹ ${((cartProduct.quantity ?? 0) * cartProduct.price).toString()}',)),
                       ],
                     ),
                                  ] ),
                 )),
               );
              }),
              kHeight10,
              
            ]
                ),
        ),
      )
  
    );
  }
}