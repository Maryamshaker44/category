import 'package:category/feature/auth/model/data_auth/data_auth.dart';
import 'package:category/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc.dart';

void main() {
  DataAuth dataAuth = DataAuth();
  dataAuth.PostData;
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
