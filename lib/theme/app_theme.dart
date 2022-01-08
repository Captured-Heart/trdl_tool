import 'package:trdl_tool/core/all_imports.dart';

ThemeData themeLight = FlexThemeData.light(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 25,
  appBarStyle: FlexAppBarStyle.primary,
  appBarOpacity: 0.85,
  appBarElevation: 6,
  transparentStatusBar: true,
  tabBarStyle: FlexTabBarStyle.forAppBar,
  tooltipsMatchBackground: true,
  swapColors: false,
  lightIsWhite: false,
  useSubThemes: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.questrial().fontFamily,
  subThemesData: const FlexSubThemesData(
    useTextTheme: true,
    fabUseShape: true,
    interactionEffects: true,
    bottomNavigationBarOpacity: 0.85,
    bottomNavigationBarElevation: 6,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    inputDecoratorUnfocusedHasBorder: true,
    blendOnColors: true,
    blendTextTheme: true,
    popupMenuOpacity: 0.95,
  ),
);

ThemeData themeDark = FlexThemeData.dark(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 25,
  appBarStyle: FlexAppBarStyle.background,
  appBarOpacity: 0.85,
  appBarElevation: 6,
  transparentStatusBar: true,
  tabBarStyle: FlexTabBarStyle.forAppBar,
  tooltipsMatchBackground: true,
  swapColors: false,
  darkIsTrueBlack: false,
  useSubThemes: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.questrial().fontFamily,
  subThemesData: const FlexSubThemesData(
    useTextTheme: true,
    fabUseShape: true,
    interactionEffects: true,
    bottomNavigationBarOpacity: 0.85,
    bottomNavigationBarElevation: 6,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    inputDecoratorUnfocusedHasBorder: true,
    blendOnColors: true,
    blendTextTheme: true,
    popupMenuOpacity: 0.95,
  ),
);