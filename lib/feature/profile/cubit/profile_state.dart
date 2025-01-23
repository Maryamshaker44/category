part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class UserSuccessState extends ProfileState {
  final UserProfileModelData userData;
  UserSuccessState({required this.userData});
}

final class UserLoadingState extends ProfileState {}
