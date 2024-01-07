import 'package:logging/logging.dart' as logging;

class Logger {
  Logger._internal();
  static final _instance = Logger._internal();
  factory Logger() => _instance;
  factory Logger.setup({String? name, logging.Level? level}) {
    logging.Logger.root.level = level ??
        logging.Level
            .ALL; //mức độ ghi log cho úng dụng / mặc định là all ghi lại tât cả các loại thông báo
    logging.Logger.root.onRecord.listen((record) {
      //lắng nghe log khi có bản ghi log hàm callback gọi để hiển thị thong tin log
      String name = record.loggerName.isEmpty ? '' : '|${record.loggerName}';
      print(
          '${record.time}|${record.level.name}$name: ${record.message}'); // hiển thị name khi được cung cấp/ trả rỗng nêu ko có giá trị
    });
    logger = logging.Logger(name ?? '');
    return _instance;
  }
  static logging.Logger logger = logging.Logger(''); //lưu trữ đối tượng logger

  static finest(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).finest(message, error, stackTrace);
    } else {
      logger.finest(message, error, stackTrace);
    }
  }

  static finer(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).finer(message, error, stackTrace);
    } else {
      logger.finer(message, error, stackTrace);
    }
  }

  static fine(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).fine(message, error, stackTrace);
    } else {
      logger.fine(message, error, stackTrace);
    }
  }

  static config(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).config(message, error, stackTrace);
    } else {
      logger.config(message, error, stackTrace);
    }
  }

  static info(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).info(message, error, stackTrace);
    } else {
      logger.info(message, error, stackTrace);
    }
  }

  static warning(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).warning(message, error, stackTrace);
    } else {
      logger.warning(message, error, stackTrace);
    }
  }

  static severe(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).severe(message, error, stackTrace);
    } else {
      logger.severe(message, error, stackTrace);
    }
  }

  static shout(Object? message,
      [String? name, Object? error, StackTrace? stackTrace]) {
    if (name != null) {
      logging.Logger(name).shout(message, error, stackTrace);
    } else {
      logger.shout(message, error, stackTrace);
    }
  }
}
