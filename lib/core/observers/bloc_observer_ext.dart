import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverExt extends BlocObserver{
  @override
   void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    //Logger.info('Bloc: $bloc');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    //Logger.info('Bloc: $bloc, Event: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    //Logger.info('Bloc: $bloc, Change: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    //Logger.info('Bloc: $bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    //Logger.info('Bloc: $bloc, Transition: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    //Logger.info('Bloc: $bloc, Error: $error, StackTrace: $stackTrace');
  }
}