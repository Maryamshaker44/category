// ignore_for_file: prefer_typing_uninitialized_variables

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoadingState extends AuthState {}

final class AuthSuccessState extends AuthState {
  final userdata;
  AuthSuccessState({required this.userdata});
}
