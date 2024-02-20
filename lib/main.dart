import 'package:app_base/app/my_app.dart';
import 'package:app_base/core/globals/logger.dart';
import 'package:app_base/core/observers/bloc_observer_ext.dart';
import 'package:app_base/di/injection.dart';
import 'package:app_base/flavors/build_config.dart';
import 'package:app_base/flavors/env_config.dart';
import 'package:app_base/flavors/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


Future<void> main() async {
   Logger.setup();

  Bloc.observer = BlocObserverExt();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  
  final EnvConfig devConfig = EnvConfig(
    appName: "my app", 
    baseUrl: "", 
    connectWeb: ""
    );
 
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarContrastEnforced: false,
  ));
 BuildConfig.intantiate(envType: Environment.dev, envConfig: devConfig);
  runApp(MyApp(key: Key(devConfig.appName)));
}
