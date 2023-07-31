import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/app/core/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
