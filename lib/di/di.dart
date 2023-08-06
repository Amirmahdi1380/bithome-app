import 'package:amlak_app/data/datasource/authentication_datasource.dart';
import 'package:amlak_app/data/respository/authentication_respository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var locator = GetIt.instance;

Future<void> getItInit() async {
  locator.registerSingleton<Dio>(
    Dio(
      BaseOptions(
          baseUrl: 'http://192.168.100.36:8000/api',
          headers: {'Accept': 'application/json'}),
    ),
  );
  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  //datasource
  locator.registerFactory<IAuthenthicationDatasource>(
      () => AuthenthicationDatasource());

  //repository
  locator
      .registerFactory<IAuthenticationRepository>(() => AuthenticationRemote());
}
