part of 'lap_home_cubit.dart';

@immutable
sealed class LapHomeState {}

final class LapHomeInitial extends LapHomeState {}

final class LapHomeSuccess extends LapHomeState {
  final List<LapHomeModel> model;
  LapHomeSuccess({required this.model});
}

final class LapHomeLoading extends LapHomeState {}
