import 'package:app_base/core/globals/logger.dart';
import 'package:flutter/material.dart'; 
class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger.info('build: ErrorPage');

    return const Scaffold(
      body: Center(child: Text('ErrorPage')),
    );
  }
}
