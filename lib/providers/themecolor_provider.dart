import '/all_imports.dart';

final StateNotifierProvider<ThemeColorState, FlexScheme> themeColorProvider =
    // ignore: always_specify_types
    StateNotifierProvider<ThemeColorState, FlexScheme>((ref) {
  return ThemeColorState();
});

class ThemeColorState extends StateNotifier<FlexScheme> {
  ThemeColorState() : super(FlexScheme.outerSpace);

  void setThemeOuterSpace() {
    state = FlexScheme.outerSpace;
  }

  void setThemeBlueDelight() {
    state = FlexScheme.blue;
  }

  void setThemeGreenMoney() {
    state = FlexScheme.money;
  }

  void setThemeRedWine() {
    state = FlexScheme.redWine;
  }
}
