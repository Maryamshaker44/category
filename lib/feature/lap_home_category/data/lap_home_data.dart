// ignore_for_file: avoid_print

import 'package:category/feature/lap_home_category/model/lap_home_model.dart';
import 'package:dio/dio.dart';

class LapHomeData {
  static Dio dio = Dio();
  static getLap() async {
    var response =
        await dio.get("https://elwekala.onrender.com/product/Laptops");
    try {
      if (response.statusCode == 200) {
        List repoData = response.data["product"];
        print(repoData);
        List<LapHomeModel> listModel =
            repoData.map((e) => LapHomeModel.fromJson(e)).toList();
        return listModel;
      }
    } on DioException catch (error) {
      if (error.response != null) {
        return error.response!.data;
      }
    }
  }
}
