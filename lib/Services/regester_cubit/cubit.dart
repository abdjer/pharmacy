import 'package:flutter/material.dart';
import 'package:flutter_web/Services/regester_cubit/states.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Screens/homeScreen.dart';
import '../dio_helper.dart';

class RegesterCubit extends Cubit<RegesterStates> {
  RegesterCubit() : super(RegesterInitialState());
  static RegesterCubit get(context) => BlocProvider.of(context);
  register(
      {required context, required String email, required String password}) {
    emit(RegesterLoadingState());
    print("RegesterCubi");
    DioHelper.register(email: email, password: password).then((value) {
      print(value.data);
      if (value.data['message'] == "Registration Succeeded") {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );

        // showToast(
        //     context: context,
        //     text: value.data['message'] == "Registration Succeeded"
        //         ? "WELCOM"
        //         : "TRY AGAIN",
        //     color: value.data['message'] == "Registration Succeeded"
        //         ? Colors.green
        //         : Colors.red);
      }
      emit(RegesterSuccessState());
    }).onError((error, stackTrace) {
      print(error.toString());
      emit(RegesterErrorState());
    });
  }
}

// class RCubit extends Cubit<> {
//   LoginCubit() : super(LoginInitialState());

//   static LoginCubit get(context) => BlocProvider.of(context);

//   login({required context, required String email, required String password}) {
//     emit(LoginLoadingState());
//     DioHelper.login(email: email, password: password).then((value) {
//       print(value.data);
//       if (value.data['status'] == 1) {
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => HomePage(),
//         ));
//         showToast(
//             context: context,
//             text: value.data['status'] == 1 ? "WELCOM" : "TRY AGAIN",
//             color: value.data['status'] == 1 ? Colors.green : Colors.red);
//       }
//       emit(LoginSuccessState());
//     }).onError((error, stackTrace) {
//       print(error.toString());
//       emit(LoginErrorState());
//     });
//   }
// }

FToast fToast = FToast();

showToast(
    {required context,
    required String text,
    required Color color,
    int duration = 3}) {
  fToast.init(context);
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: color,
    ),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    ),
  );
  fToast.showToast(
    child: toast,
    gravity: ToastGravity.CENTER,
    toastDuration: Duration(seconds: duration),
  );
}
