import 'package:category/core/builder/cache_data.dart';
import 'package:category/feature/lap_home_category/data/lap_home_data.dart';
import 'package:category/my_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/bloc/bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheShared.init();
  LapHomeData.getLap();
  //ProfileUserData.getProfile();
  Bloc.observer = MyBlocObserver();
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}
