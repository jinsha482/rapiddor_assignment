import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:rapiddoreproject/global/constants/assets/asset_constants.dart';
import 'package:rapiddoreproject/global/controllers/data_layer.controller.dart';
import 'package:rapiddoreproject/global/dimensions/dimensions.dart';
import 'package:rapiddoreproject/global/styles/colors.dart';
import 'package:rapiddoreproject/global/styles/textstyles.dart';
import 'package:rapiddoreproject/global/widgets/api_loading.widget.dart';
import 'package:rapiddoreproject/modules/productlist/controller/product_list.controller.dart';

import '../../productdetails/view/product_details.screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({ super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductListController>(context, listen: false).onInit(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,backgroundColor: kWhite,
        actions: [IconButton(onPressed: (){
        Navigator.pushNamed(context, 'product-cart');
      }, icon: Image.asset(cartIcon))],),
      resizeToAvoidBottomInset: true,
      backgroundColor: kWhite,
      body: Consumer2<ProductListController, DataLayerController>(
        builder: (context, productListCtrl, dataCtrl, _) {
          return APILoader(
            loader: productListCtrl.productListApiLoading,
            child: SingleChildScrollView(physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    GridView.builder(shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                      itemCount: dataCtrl.productListModel.length,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: MediaQuery.of(context).size.aspectRatio
                       
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            productListCtrl.setProductIndex(index);
                            Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>  ProductDetailsScreen(
        model: dataCtrl
        .productListModel[index],
      ),
    ),);
                          },
                          child: Container(decoration: BoxDecoration(
                            border: Border.all(color: kBillBlack,width: 0.6),
                            color: kWhite.withOpacity(0.7)
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(child:
                                  dataCtrl.productListModel[index].image?.isNotEmpty ?? false ?
                                   Image.network(dataCtrl.productListModel[index].image.toString() ,width: 100.w,height: 200.h,)
                                   : Image.asset(noImage)),
                                  KStyles().bold16(color: kGrey,
                                    text: dataCtrl.productListModel[index].title.toString()),
                                  kHeight10,
                                   KStyles().med22(text: '₹ ${dataCtrl.productListModel[index].price.toString()}'),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
