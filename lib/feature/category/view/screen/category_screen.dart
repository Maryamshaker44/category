import 'package:category/feature/category/cubit/category_cubit.dart';
import 'package:category/feature/category/model/data/category_data.dart';
import 'package:category/feature/category/view/screen/start_screen.dart';
import 'package:category/feature/category/view/widget/custom_appBar.dart';
import 'package:category/feature/category/view/widget/success_widget_category.dart';
import 'package:category/feature/profile/view/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.endPoint, required this.title});

  final String endPoint;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(CategoryData())..getDataCubit(endPoint: endPoint),
      child: Scaffold(
        drawer: const Drawer(
          child: StartScreen(),
        ),
        appBar: customAppBar(title: title),
        body: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategorySuccess) {
              return ListView.builder(
                itemCount: state.model.length,
                itemBuilder: (context, index) {
                  return SuccessWidgetProduct(
                    categoryModel: state.model[index],
                  );
                },
              );
            } else if (state is CategoryLoading) {
              return const CircularProgressIndicator();
            } else if (state is CategoryError) {
              return Center(
                child: Text(state.error),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
