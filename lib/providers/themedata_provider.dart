import 'package:trdl_tool/all_imports.dart';

final themeLightProvider = StateProvider<ThemeData>(
  (ref) {
    return FlexThemeData.light(
      scheme: ref.watch(themeColorProvider),
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 24,
      appBarOpacity: 0.00,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 24,
        unselectedToggleIsColored: true,
        fabUseShape: true,
        dialogBackgroundSchemeColor: SchemeColor.background,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.questrial().fontFamily,
    );
  },
);

final themeDarkProvider = StateProvider<ThemeData>((ref) {
  return FlexThemeData.dark(
    scheme: ref.watch(themeColorProvider),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
      unselectedToggleIsColored: true,
      fabUseShape: true,
      dialogBackgroundSchemeColor: SchemeColor.background,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    fontFamily: GoogleFonts.questrial().fontFamily,
  );
});
