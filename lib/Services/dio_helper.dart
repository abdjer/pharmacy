import 'package:dio/dio.dart';
//import 'package:http/http.dart';
import '../Services/regester_cubit/cubit.dart';

class DioHelper {
  static Dio dio = Dio(BaseOptions(
      baseUrl: 'http://127.0.0.1:8000/', receiveDataWhenStatusError: true));
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'http://127.0.0.1:8000/', receiveDataWhenStatusError: true));
  }

  static Future<dynamic> login(
      {required String email, required String password}) async {
    return await dio.post(
      'login',
      data: {'email': email, 'password': password},
      // options: Options(
      //     followRedirects: false,
      //     validateStatus: (status) {
      //       return status! < 500;
      //     })
    );
  }

  ////////////////////////////////////////////////////////////////////////
  static Future<Response> register(
      {required String email, required String password}) async {
    print("http");
    /* var response = await post(
        Uri.parse(
            "http://127.0.0.1:8000/admin/register?name=lpol&email=yjjjh&phone=0957257941&password=uuuuuuu"),
        headers: {'Custom-Param': 'param_value'});

    return response;*/
    // return await dio.post(
    //   "http://127.0.0.1:8000/admin/register?name=lpol&email=yjjjh&phone=0957257941&password=uuuuuuu");
    return await dio.post(
        'http://127.0.0.1:8000/admin/register?name=lpol&email=yjjjh&phone=229992&password=uuuuuuu',
        data: {
          'name': "abd",
          'email': "email",
          'phone': "0957257941",
          'password': "password",
        }, options: Options(validateStatus: (status) {
      return status! < 500;
    }));
  }
}
