

import 'package:app_base/core/globals/keys.dart';
import 'package:app_base/core/globals/logger.dart';
import 'package:app_base/flavors/build_config.dart';
import 'package:app_base/flavors/env_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.envConfig;
  NavigatorState get _navigatorState => navigatorKey.currentState!;
  final appBloc = getIt<A>

  @override
  Widget build(BuildContext context) { 
    loggerNoStack.i('build: App$key');
    WidgetsBinding.instance.addObserver(WidgetsBindingObserver(
        handleResumed: () async => {
              SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                  systemNavigationBarIconBrightness: Brightness.dark))
            }));
            final repository = StartedEvent();
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider(create: (context)=> repository),
              ],
              child: MultiBlocProvider(
                providers: [BlocProvider<AppBloc>(create: (context)=> AppBloc(repository)..add(StartedEvent(key:key)))],
                child: MaterialApp(
                  title: Config.appTitle,
                  actions: ,)),
            );
  }
}