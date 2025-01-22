import 'package:category/feature/auth/view/screen/login_screen.dart';
import 'package:category/feature/cart/cubit/cart_cubit.dart';
import 'package:category/feature/lap_home_category/view/screen/home_lap_screen.dart';
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
        return BlocProvider(
          create: (context) => CartCubit(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
