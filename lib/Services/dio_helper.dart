import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:8000/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> login(
      {required String password, required String phone}) async {
    return await dio
        .post('admin/login', data: {'password': password, 'phone': phone});
  }

  static Future<Response> register(
      {required String name,
      required String password,
      required String phone,
      }) async {
    return await dio.post('admin/register',
        data: {
          'name': name,
          'password': password,
          'phone': phone,
          'email': 'aaa'
        },
        options: Options(
            // headers: {
            //   "Access-Control-Allow-Origin": "*",
            //   "Access-Control-Allow-Credentials": true,
            // },
            headers: {'Accept': 'application/json'},
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }
}
