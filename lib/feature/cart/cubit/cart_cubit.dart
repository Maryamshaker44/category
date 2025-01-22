// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:category/feature/cart/data/cart_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  static CartCubit get(context) => BlocProvider.of(context);
  CartData cartData = CartData();
  addCartCubit({required String id}) async {
    emit(CartLoading());
    CartData.addCart(id: id);
    emit(CartSuccess());
  }
}