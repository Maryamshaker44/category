import 'package:category/feature/cart/cubit/cart_cubit.dart';
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
                        leading: Image.network(lap.image),
                        title: Row(children: [
                          Text(lap.name),
                          Spacer(),
                          IconButton(onPressed: (){
                            CartCubit.get(context).addCartCubit(id: state.model[index].id);
                          }, icon: Icon(Icons.add_shopping_cart_rounded)),
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
