import 'package:category/feature/category/view/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    navigateAfterThreeSeconds();
    super.initState();
  }
  void navigateAfterThreeSeconds(){
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return  const LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2020/04/17/19/48/city-5056657_640.png'),
          ),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 178, 201, 221), Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SpinKitThreeBounce(
                color: Color.fromARGB(255, 179, 178, 178), size: 50.0),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}