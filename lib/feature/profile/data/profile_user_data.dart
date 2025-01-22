// ignore_for_file: avoid_print

import 'package:category/core/builder/cache_data.dart';
import 'package:category/feature/profile/model/profile_user_model.dart';
import 'package:dio/dio.dart';


var getToken = CacheShared.shared!.get("token");
class ProfileUserData {
  static Dio dio = Dio();
  static getProfile() async {
    var response = await dio.post(
      "https://elwekala.onrender.com/user/profile",
      data: {"token": getToken},
    );
    try {
      var repoData = response.data;
      print(repoData["user"]["name"]);
      var user = ProfileUserModelData.fromJson(repoData);
      print(user.profileUserModel.profileImage);
      return user;
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
  }
}
