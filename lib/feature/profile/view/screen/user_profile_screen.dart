import 'package:category/feature/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/card_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getUserProfileDataCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Profile',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<ProfileCubit,ProfileState >(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is UserSuccessState) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          state.userData.userProfileModel.profileImage),
                    ),
                    const SizedBox(height: 40),
                    CardProfileWidget(
                      text: state.userData.userProfileModel.name,
                      icon: Icons.person,
                    ),
                    const SizedBox(height: 20),
                    CardProfileWidget(
                      text:  state.userData.userProfileModel.email,
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 20),
                    CardProfileWidget(
                      text:  state.userData.userProfileModel.phone,
                      icon: Icons.call,
                    ),
                    const SizedBox(height: 20),
                    CardProfileWidget(
                      text:  state.userData.userProfileModel.nationalId,
                      icon: Icons.card_travel,
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              } else if (state is UserLoadingState) {
                return const CircularProgressIndicator();
              } else {
                return const Text('error');
              }
            },
          ),
        ),
      ),
    );
  }
}