import 'package:app_base/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
 
final GetIt getIt = GetIt.instance;

@injectableInit
dynamic configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
})async{
  $initGetIt(getIt);
}

