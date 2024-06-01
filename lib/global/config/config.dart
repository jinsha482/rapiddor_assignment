
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapiddoreproject/global/controllers/global_controller.dart';
import '../../main.dart';
import '../constants/ui/ui.constants.dart';
import '../controllers/data_layer.controller.dart';



class Config {


  //*--- Base url
  var baseUrl = 'https://fakestoreapi.com/';

    static const String dbName = 'ecommerce';


  
}

//*---------------------------------------------------- (Global Context)
BuildContext globalContext = navigationKey.currentState!.context;

//*---------------------------------------------------- (Media_Query)
Size size = MediaQuery.sizeOf(globalContext);


//*---------------------------------------------------- (UI constant object)
UIConstants uiCon = UIConstants();

//*---------------------------------------------------- (Data Layer object)
var dataCtrl = Provider.of<DataLayerController>(globalContext, listen: false);
//*---------------------------------------------------- (Global Controller object)
var globalCtrl = Provider.of<GlobalController>(globalContext, listen: false);

