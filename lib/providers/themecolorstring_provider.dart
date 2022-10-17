import '/all_imports.dart';

final StateNotifierProvider<ThemeColorString, String> themeColorStringProvider =
    // ignore: always_specify_types
    StateNotifierProvider<ThemeColorString, String>((ref) {
  return ThemeColorString();
});

class ThemeColorString extends StateNotifier<String> {
  // ignore: public_member_api_docs
  ThemeColorString() : super('Outer Space');

  void setThemeColorStringOuterSpace() {
    state = 'Outer Space';
  }

  void setThemeColorStringBlueDelight() {
    state = 'Blue Delight';
  }

  void setThemeColorStringGreenMoney() {
    state = 'Green Money';
  }

  void setThemeColorStringRedWine() {
    state = 'Red Red Wine';
  }
}
