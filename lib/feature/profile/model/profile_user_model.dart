class ProfileUserModel {
  final String name;
  final String email;
  final String nationalId;
  final String profileImage;
  final String phone;

  ProfileUserModel(
      {required this.name,
      required this.email,
      required this.nationalId,
      required this.profileImage,
      required this.phone});

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) {
    return ProfileUserModel(
      name: json['name'],
      email: json['email'],
      nationalId: json['nationalId'],
      profileImage: json['profileImage'],
      phone: json['phone'],
    );
  }
}

class ProfileUserModelData {
  final ProfileUserModel profileUserModel;

  ProfileUserModelData({required this.profileUserModel});

  factory ProfileUserModelData.fromJson(Map<String, dynamic> json) {
    return ProfileUserModelData(
      profileUserModel: ProfileUserModel.fromJson(json["user"]),
    );
  }
}
