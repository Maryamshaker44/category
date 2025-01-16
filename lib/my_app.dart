import 'package:category/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_ , child) {
        return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),);
      },
    
    );
  }
}
