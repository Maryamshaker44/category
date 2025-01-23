import 'package:flutter/material.dart';

AppBar appBarForm({required String title}) {
  return AppBar(
    toolbarHeight: 80,
    elevation: 4,
    shadowColor: Colors.grey,
    title: Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:24,
          color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
    automaticallyImplyLeading: false,
  );
}
