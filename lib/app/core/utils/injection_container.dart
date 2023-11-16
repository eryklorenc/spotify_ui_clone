import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/app/core/config/const.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(baseUrl: Const.baseUrl));
}
