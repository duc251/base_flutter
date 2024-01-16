part of 'app_bloc.dart';

@immutable
abstract class AppState extends Equatable {
  final Key? key;
  const AppState({this.key});

  @override
  List<Object?> get props => [key];
}

class InitialState extends AppState {}

class InProgressState extends AppState {}

class LoadSuccessState extends AppState {
  final Setting setting;

  const LoadSuccessState({Key? key, required this.setting}) : super(key: key);

  LoadSuccessState copyWith({Key? key, Setting? setting}) {
    return LoadSuccessState(
        key: key ?? this.key, setting: setting ?? this.setting);
  }

  @override
  List<Object?> get props => [key, setting];
}

class LoadFailureState extends AppState {
  final dynamic error;

  const LoadFailureState({this.error});

  @override
  List<Object?> get props => [error];
}
