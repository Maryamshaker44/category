// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:category/feature/lap_home_category/data/lap_home_data.dart';
import 'package:category/feature/lap_home_category/model/lap_home_model.dart';
import 'package:meta/meta.dart';
part 'lap_home_state.dart';

class LapHomeCubit extends Cubit<LapHomeState> {
  LapHomeCubit() : super(LapHomeInitial());

  final LapHomeData lapHomeData = LapHomeData();

  getLapCubit() async{
    emit(LapHomeLoading());
    var response =await LapHomeData.getLap();
    emit(LapHomeSuccess(model: response));
  }
}
