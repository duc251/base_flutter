import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
 

class WidgetsBindingObserverExt extends WidgetsBindingObserver {
  final AsyncCallback? handleResumed;
  final AsyncCallback? handleInactive;
  final AsyncCallback? handlePaused;
  final AsyncCallback? handleDetached;

  WidgetsBindingObserverExt(
      {this.handleResumed,
      this.handleInactive,
      this.handlePaused,
      this.handleDetached});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (handleResumed != null) {
          await handleResumed!();
        }
        //Logger.info('AppLifecycleState.resumed');
        break;
      case AppLifecycleState.inactive:
        if (handleInactive != null) {
          await handleInactive!();
        }
        //Logger.info('AppLifecycleState.inactive');
        break;
      case AppLifecycleState.paused:
        if (handlePaused != null) {
          await handlePaused!();
        }
        //Logger.info('AppLifecycleState.paused');
        break;
      case AppLifecycleState.detached:
        if (handleDetached != null) {
          await handleDetached!();
        }
        //Logger.info('AppLifecycleState.detached');
        break;
      case AppLifecycleState.hidden:
        // TODO: Handle this case.
    }
  }
}
