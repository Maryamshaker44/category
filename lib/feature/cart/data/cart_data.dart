// ignore_for_file: avoid_print

import 'package:category/core/style/value.dart';
import 'package:dio/dio.dart';

class CartData{
  static Dio dio = Dio();
 static addCart({required String id}) async{
    var response = await dio.post("https://elwekala.onrender.com/cart/add",
        data: {
          "nationalId":getId,
          "productId":id,
          "quantity":"1"
        }
    );
    var data = response.data;
    print(data);
    return data;
  }
}