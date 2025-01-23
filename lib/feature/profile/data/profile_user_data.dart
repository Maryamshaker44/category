import 'package:category/feature/profile/model/profile_user_model.dart';
import 'package:dio/dio.dart';

//var getToken = CacheShared.shared!.get("token");

class UserProfileService {
  Future<UserProfileModelData> getUserProfileData() async {
    final Dio dio = Dio();
    var response = await dio.post(
      'https://elwekala.onrender.com/user/profile',
      data: {"token": "0t8dcs2q0cwom699wpjm"},
    );

    try {
      Map<String, dynamic> jsonData = response.data;
      var user = UserProfileModelData.fromJson(jsonData);
      return user;
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      }
    }
    throw Exception();
  }
}
