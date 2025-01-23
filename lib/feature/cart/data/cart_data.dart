// ignore_for_file: avoid_print

import 'package:category/core/style/value.dart';
import 'package:category/feature/cart/model/cart_model.dart';
import 'package:dio/dio.dart';

class CartData {
  static Dio dio = Dio();
  static addCart({required String id}) async {
    var response = await dio.post("https://elwekala.onrender.com/cart/add",
        data: {"nationalId": getId, "productId": id, "quantity": "1"});
    var data = response.data;
    print(data);
    return data;
  }

  getAllCart() async {
    var response = await dio.get(
        "https://elwekala.onrender.com/cart/allProducts",
        data: {"nationalId": getId});
    try {
      if (response.statusCode == 200) {
        List dataRepo = response.data["products"];
        List<CartModel> listCart =
            dataRepo.map((e) => CartModel.fromJson(e)).toList();
        // print(listCart[2].image);
        // print(listCart[4].image);
        return listCart;
      }
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
  }

  deleteCart({required String productId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/cart/delete",
        data: {
          "nationalId": "30293701546953",
          "productId": productId,
          "quantity": "1"
        });
    try {
      var data = response.data;
      return data;
    } on DioException catch (error) {
      if (error.response != null) {
        return error.response!.data;
      }
    }
  }

  updateCart({required String productId, required quantity}) async {
    var response = await dio.put("https://elwekala.onrender.com/cart", data: {
      "nationalId": "30293701546953",
      "productId": productId,
      "quantity": quantity
    });
    try {
      var responseData = response.data;
      print(responseData);
      return responseData;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
    throw Exception('Failed to load data');
  }
}
