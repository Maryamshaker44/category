// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:category/feature/profile/data/profile_user_data.dart';
import 'package:category/feature/profile/model/profile_user_model.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final ProfileUserData profileUserData  =  ProfileUserData();
  getProfileCubit() async {
    emit(ProfileLoading());
    var success = await ProfileUserData.getProfile();
    emit(ProfileSuccess(userModel: success));
  }
}
