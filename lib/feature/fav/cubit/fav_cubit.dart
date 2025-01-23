import 'package:bloc/bloc.dart';
import 'package:category/feature/fav/data/fav_data.dart';
import 'package:category/feature/fav/model/fav_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  static FavCubit get(context) => BlocProvider.of(context);
  FavCubit() : super(FavInitial());

  final FavData favData = FavData();

  addFavCubit({required String productId}) async {
    emit(FavLoading());
    favData.addFav(productId: productId);
    emit(FavSuccess());
  }

  getAllFavCubit() async {
    emit(FavLoading());
    var success = await favData.getAllData();
    emit(FavGetSuccess(listFav: success));
  }

  getDeleteFavCubit({required String productId}) async {
    emit(FavLoading());
    await favData.deleteFav(productId: productId);
    getAllFavCubit();
  }
}
