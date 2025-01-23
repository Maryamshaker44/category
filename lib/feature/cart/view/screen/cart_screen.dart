// ignore_for_file: unnecessary_import

import 'package:category/feature/cart/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getCartAllCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Cart")),
        body: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            if (state is CartGetAllScuccess) {
              return ListView.builder(
                  itemCount: state.model.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.model[index].name),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(state.model[index].image),
                      ),
                      trailing: IconButton(
                      onPressed: () {
                        CartCubit.get(context).getDeleteCartCubit(
                            productId: state.model[index].id);
                      },
                      icon: const Icon(Icons.delete , color: Colors.red)),

                    );
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
