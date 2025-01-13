import 'package:category/feature/auth/model/data_auth/data_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final DataAuth dataAuth = DataAuth();

  postDataCubit(
      {required namedata,
      required emaildata,
      required genderdata,
      required nationalIddata,
      required passworddata,
      required phonedata,
      required profileImagedata,
      required tokendata}) async {
    emit(AuthLoadingState());
    var user = await dataAuth.postData(
        name: namedata,
        email: emaildata,
        gender: genderdata,
        nationalId: nationalIddata,
        password: passworddata,
        phone: phonedata,
        profileImage:
            "data:image/png;base64,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",
        token: tokendata);

    emit(AuthSuccessState(userdata: user));
  }
}
