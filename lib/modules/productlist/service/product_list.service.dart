import 'package:http/http.dart';
import 'package:rapiddoreproject/global/config/api_url_config.dart';

import '../../../global/constants/interceptor.dart';

class ProductListService{

  // get Product List

   Future<Response> getProductsList() async {
    return await httpRequests(
      url:productList ,
      httpType: HttpMethods.get,
     
    );
  }
}