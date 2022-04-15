import 'package:trdl_tool/all_imports.dart';

ThemeData themeLight = FlexThemeData.light(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 24,
  appBarOpacity: 0.95,
  appBarElevation: 6.0,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 24,
    bottomSheetRadius: 28.0,
    unselectedToggleIsColored: true,
    cardRadius: 12.0,
    bottomNavigationBarSelectedIconSize: 32.0,
    bottomNavigationBarUnselectedIconSize: 24.0,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.soft(Brightness.light),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  fontFamily: GoogleFonts.questrial().fontFamily,
);

ThemeData themeDark = FlexThemeData.dark(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarStyle: FlexAppBarStyle.background,
  appBarOpacity: 0.90,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
    bottomSheetRadius: 28.0,
    unselectedToggleIsColored: true,
    cardRadius: 12.0,
    bottomNavigationBarSelectedIconSize: 32.0,
    bottomNavigationBarUnselectedIconSize: 24.0,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.soft(Brightness.dark),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  fontFamily: GoogleFonts.questrial().fontFamily,
);
