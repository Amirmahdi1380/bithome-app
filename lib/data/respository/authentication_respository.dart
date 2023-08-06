import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../di/di.dart';
import '../../utils/apiExeption.dart';
import '../datasource/authentication_datasource.dart';

abstract class IAuthenticationRepository {
  Future<Either<String, String>> register(String first_name, String last_name,
      String national_code, String mobile, String birthday);
}

class AuthenticationRemote extends IAuthenticationRepository {
    final IAuthenthicationDatasource _datasource = locator.get();
  final SharedPreferences _sharedPreferences = locator.get();
  Future<Either<String, String>> register(String first_name, String last_name, String national_code, String mobile, String birthday) async{
    try {
      // await _datasource.register('amirmahdi', '12345678', '12345678');
      return right('ثبت نام انجام شد !');
    } catch (e){
      return left(e.toString());
    }
  }
}
