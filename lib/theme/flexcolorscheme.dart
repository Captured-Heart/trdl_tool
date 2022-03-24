import 'package:trdl_tool/core/all_imports.dart';

ThemeData themeLight = FlexThemeData.light(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 20,
  appBarOpacity: 0.95,
  appBarElevation: 0.5,
  tooltipsMatchBackground: true,
  useSubThemes: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    blendOnColors: false,
    unselectedToggleIsColored: true,
    popupMenuOpacity: 0.95,
    bottomNavigationBarOpacity: 0.95,
    bottomNavigationBarSelectedIconSize: 32.0,
    bottomNavigationBarUnselectedIconSize: 24.0,
    navigationBarOpacity: 0.95,
    navigationRailOpacity: 0.95,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.vivid(Brightness.light),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.questrial().fontFamily,
);

ThemeData themeDark = FlexThemeData.dark(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 20,
  appBarStyle: FlexAppBarStyle.background,
  appBarOpacity: 0.95,
  appBarElevation: 0.5,
  tooltipsMatchBackground: true,
  useSubThemes: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
    unselectedToggleIsColored: true,
    popupMenuOpacity: 0.95,
    bottomNavigationBarOpacity: 0.95,
    bottomNavigationBarSelectedIconSize: 32.0,
    bottomNavigationBarUnselectedIconSize: 24.0,
    navigationBarOpacity: 0.95,
    navigationRailOpacity: 0.95,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.vivid(Brightness.dark),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.questrial().fontFamily,
);