import '/all_imports.dart';

final StateNotifierProvider<ThemeModeString, String> themeModeStringProvider =
    // ignore: always_specify_types
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
