part of 'fav_cubit.dart';

@immutable
sealed class FavState {}

final class FavInitial extends FavState {}

final class FavSuccess extends FavState {}

final class FavLoading extends FavState {}

final class FavGetSuccess extends FavState {
  List<FavModel> listFav;
  FavGetSuccess({required this.listFav});
}

final class FavDelete extends FavState {}
