import 'package:category/feature/category/view/widget/card_widget.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title:  const Text(
          'Category',
          style: TextStyle(color: Colors.white),
        ),),
      body: const Column(
        children: [
          SizedBox(
            width: 50,
          ),
          CardWidget(endPoint: "electronics", icon: "💻", text: "electronics"),
          SizedBox(
            width: 50,
          ),
          CardWidget(endPoint: "jewelery", icon: "💍", text: "jewelery"),
          SizedBox(
            width: 50,
          ),
          CardWidget(
              endPoint: "men's%20clothing",
              icon: "👔",
              text: "men's%20clothing"),
          SizedBox(
            width: 50,
          ),
          CardWidget(
              endPoint: "women's%20clothing",
              icon: "👜",
              text: "women's%20clothing"),
        ],
      ),
    );
  }
}
