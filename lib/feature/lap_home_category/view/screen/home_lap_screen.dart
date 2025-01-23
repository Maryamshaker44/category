import 'package:category/feature/cart/cubit/cart_cubit.dart';
import 'package:category/feature/cart/view/screen/cart_screen.dart';
import 'package:category/feature/fav/cubit/fav_cubit.dart';
import 'package:category/feature/fav/view/screen/fav_screen.dart';
import 'package:category/feature/lap_home_category/cubit/lap_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLapScreen extends StatelessWidget {
  const HomeLapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LapHomeCubit()..getLapCubit(),
      child: Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: const Icon(Icons.add_shopping_cart_rounded),
            ),

            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavScreen()));
              },
              child: const Icon(Icons.favorite),
            )
          ],
        ),
        appBar: AppBar(title: const Text('Laptop')),
        body: BlocBuilder<LapHomeCubit, LapHomeState>(
          builder: (context, state) {
            if (state is LapHomeSuccess) {
              return Card(
                child: ListView.builder(
                    itemCount: state.model.length,
                    itemBuilder: (context, index) {
                      final lap = state.model[index];
                      return ListTile(
                        trailing: IconButton(
                            onPressed: () {
                              FavCubit.get(context).addFavCubit(
                                  productId: state.model[index].id);
                            },
                            icon: Icon(Icons.favorite)),
                        leading: Image.network(lap.image),
                        title: Row(children: [
                          Text(lap.name),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                CartCubit.get(context)
                                    .addCartCubit(id: state.model[index].id);
                              },
                              icon: Icon(Icons.add_shopping_cart_rounded)),
                        ]),
                        subtitle: Text(lap.description),
                      );
                    }),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
