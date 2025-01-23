// import 'package:category/feature/profile/model/profile_user_model.dart';
// import 'package:category/feature/profile/view/widget/image_shower.dart';
// import 'package:category/feature/profile/view/widget/info_card.dart';
// import 'package:flutter/material.dart';

// class UserWidget extends StatelessWidget {
//   const UserWidget({required this.user, super.key});
//   final ProfileUserModelData user;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 8,
//           vertical: 16,
//         ),
//         child: Column(
//           children: [
//             imageShower(image: user.profileUserModel.profileImage),
//             InfoCard(
//               icon: Icons.person,
//               txt: user.profileUserModel.name,
//             ),
//             InfoCard(
//               icon: Icons.email,
//               txt: user.profileUserModel.email,
//             ),
//             InfoCard(
//               icon: Icons.badge,
//               txt: user.profileUserModel.nationalId,
//             ),
//             InfoCard(
//               icon: Icons.phone,
//               txt: user.profileUserModel.phone,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
