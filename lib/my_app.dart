import 'package:category/feature/auth/view/screen/login_screen.dart';
import 'package:category/feature/cart/cubit/cart_cubit.dart';
import 'package:category/feature/fav/cubit/fav_cubit.dart';
import 'package:category/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CartCubit(),
            ),
            BlocProvider(
              create: (context) => FavCubit(),
            ),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
