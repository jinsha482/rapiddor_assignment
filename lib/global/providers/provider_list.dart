


import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rapiddoreproject/global/controllers/data_layer.controller.dart';
import 'package:rapiddoreproject/global/controllers/global_controller.dart';
import 'package:rapiddoreproject/modules/cart/controller/cart_controller.dart';
import 'package:rapiddoreproject/modules/productlist/controller/product_list.controller.dart';



List<SingleChildWidget> providerList = [
ChangeNotifierProvider(create: (context) => ProductListController() ),
ChangeNotifierProvider(create: (context) => DataLayerController() ),
ChangeNotifierProvider(create: (context) => GlobalController() ),
ChangeNotifierProvider(create: (context) => CartController() ),

 ];
