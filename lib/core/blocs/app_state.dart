part of 'app_bloc.dart';
@immutable
abstract class AppState extends Equatable{
  final Key? key;
  const AppState ({this.key});

  @override
  List<Object?> get props => [key];
}