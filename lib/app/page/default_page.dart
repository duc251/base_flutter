import 'package:app_base/core/globals/logger.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger.info('build: DefaultPage'); //ghi lại log

    return const Scaffold(
      body: Center(child: Text('DefaultPage')),
    );
  }
}
