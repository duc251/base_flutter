import 'package:app_base/core/globals/logger.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loggerNoStack.i('build: WelcomePage');

    return const Scaffold(
      body: Center(child: Text('WelcomePage WelcomePage WelcomePage')),
    );
  }
}
