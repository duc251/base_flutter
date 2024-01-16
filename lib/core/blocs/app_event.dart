part of 'app_bloc.dart';

@immutable
abstract class AppEvent  extends Equatable{
  const AppEvent();
  @override
  List<Object?> get props => [];
  }
class StartedEvent extends AppEvent {
  final Key? key;

  const StartedEvent({this.key});

  @override
  List<Object?> get props => [key];
}


class SettingChangedEvent extends AppEvent {
  final Setting setting;

  const SettingChangedEvent(this.setting);

  @override
  List<Object> get props => [setting];
}
