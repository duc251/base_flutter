import 'package:app_base/core/models/app/setting.model.dart';
import 'package:app_base/core/repositories/app_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

//@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final AppRepository repository;

  AppBloc(this.repository) : super(InitialState()) {
    on<StartedEvent>(_onStarted);
    on<SettingChangedEvent>(_onSettingChanged);
  }
  void _onStarted(StartedEvent event, Emitter<AppState> emit) async {
    emit(InProgressState());
    try {
      final setting = await repository.getSetting();
      emit(LoadSuccessState(key: event.key, setting: setting));
    } catch (error) {
      emit(LoadFailureState(error: error));
    }
  }

  void _onSettingChanged(
      SettingChangedEvent event, Emitter<AppState> emit) async {
    final state = this.state;
    if (state is LoadSuccessState) {
      emit(InProgressState());
      try {
        final setting = await repository.setSetting(event.setting);
        emit(state.copyWith(setting: setting));
      } catch (error) {
        emit(LoadFailureState(error: error));
      }
    }
  }
}
