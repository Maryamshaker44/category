// ignore_for_file: unnecessary_import

import 'package:category/feature/auth/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Listener listener(context, state) {
        if (state is AuthSuccessState) {
          if (state.userdata["status"] == "success") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.purpleAccent,
                content: Text(state.userdata["message"])));
          }
          if (state.userdata["status"] == "error") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.redAccent,
                content: Text(state.userdata["message"])));
          }
         }
        return Listener(
          onPointerDown: (_) {},
          child: Container(),
        );
      }