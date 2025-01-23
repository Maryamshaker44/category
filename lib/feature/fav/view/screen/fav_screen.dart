import 'package:category/feature/fav/cubit/fav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Fav")),
        body: BlocBuilder<FavCubit, FavState>(
          builder: (context, state) {
            if (state is FavGetSuccess) {
              return ListView.builder(
                  itemCount: state.listFav.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.listFav[index].name),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(state.listFav[index].image),
                      ),
                      trailing: IconButton(
                      onPressed: () {
                        FavCubit.get(context).getDeleteFavCubit(
                          productId: state.listFav[index].id,
                        );
                      },
                      icon: const Icon(Icons.delete , color: Colors.red)),

                    );
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      );
  }
}
