// ignore_for_file: must_be_immutable

part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartSuccess extends CartState {}

final class CartGetAllScuccess extends CartState {
  List<CartModel> model;
  CartGetAllScuccess({required this.model});
}

final class CartDelete extends CartState {}

final class CartUpdate extends CartState {}
