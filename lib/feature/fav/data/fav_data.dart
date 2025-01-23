// ignore_for_file: avoid_print

import 'package:category/feature/fav/model/fav_model.dart';
import 'package:dio/dio.dart';

class FavData {
  Dio dio = Dio();
  addFav({required String productId}) async {
    var response = await dio.post("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "30293701546953", "productId": productId});
    var responseData = response.data;
    print(responseData);
    return responseData;
  }

  getAllData() async {
    var response = await dio.get("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "30293701546953"});
    try {
      List responseData = response.data["favoriteProducts"];
      List<FavModel> listFav =
          responseData.map((e) => FavModel.fromJson(e)).toList();
      return listFav;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
    throw Exception('Failed to load data');
  }

  deleteFav({required String productId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "30293701546953", "productId": productId});
    try {
      var data = response.data;
      return data;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
  }
}
