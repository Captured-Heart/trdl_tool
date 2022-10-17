import '/all_imports.dart';

final StateProvider<ThemeMode> themeModeProvider =
    // ignore: always_specify_types
    StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});
