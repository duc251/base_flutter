// @singleton 
class AppRepository{
  AppRepository._internal();

  static final _instance = AppRepository._internal();

  factory AppRepository() => _instance;

  final _appPreferences = AppPreferences();

    Future<Setting> getSetting() async {
    try {
      final setting = await _appPreferences.getSetting() ?? Setting.def();
      // final setting = await Preferences.get<Setting>(Definition.settingKey, Setting.fromJsonString) ?? Setting.def();
      final currentSetting = setting.clone();
      if (setting.firstUse) {
        setting.firstUse = false;
        unawaited(_appPreferences.setSetting(setting));
      }
      return currentSetting;
    } on Exception {
      throw GetSettingFailure();
    }
  }

  Future<Setting> setSetting(Setting setting) async {
    try {
      return await _appPreferences.setSetting(setting)
          ? setting
          : Setting.def();
      // return await Preferences.set<Setting>(Definition.settingKey, setting, Setting.toJsonString) ? setting : Setting.def();
    } on Exception {
      throw SetSettingFailure();
    }
  }
}