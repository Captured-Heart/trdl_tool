import 'package:trdl_tool/all_imports.dart';

final themeModeStringProvider =
    StateNotifierProvider<ThemeModeString, String>((ref) {
  return ThemeModeString();
});

class ThemeModeString extends StateNotifier<String> {
  ThemeModeString() : super('System');

  void setThemeModeStringSystem() {
    state = 'System';
  }

  void setThemeModeStringLight() {
    state = 'Light';
  }

  void setThemeModeStringDark() {
    state = 'Dark';
  }
}
