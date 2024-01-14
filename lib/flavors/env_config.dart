
import 'package:logger/logger.dart';

class EnvConfig{
  final String appName;
  final String baseUrl;
  final String connectWeb;
  final int timeOut;
  late final Logger logger;
  EnvConfig( {
required this.appName, required this.baseUrl, required this.connectWeb, 
this.timeOut= 30000
  }){
    logger = Logger(
      printer: PrettyPrinter()
    );
  }
}