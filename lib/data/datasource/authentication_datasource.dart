import 'package:dio/dio.dart';

import '../../di/di.dart';
import '../../utils/apiExeption.dart';

abstract class IAuthenthicationDatasource {
  Future<void> register(String first_name, String last_name,
      String national_code, String mobile, String birthday);
}

class AuthenthicationDatasource extends IAuthenthicationDatasource {
  final Dio _dio = locator.get();
  Future<void> register(String first_name, String last_name,
      String national_code, String mobile, String birthday) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'first_name': first_name,
          'last_name': last_name,
          'national_code': national_code,
          'mobile': mobile,
          'birthday': birthday,
        },
      );
    } on DioException catch (ex) {
      throw ApiExeption(ex.response?.data['message'], ex.response?.statusCode);
    } catch (ex) {
      throw ApiExeption('unknown error happend', 0);
    }
  }
}
