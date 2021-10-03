import 'package:flutter/material.dart';
import 'package:trdl_tool/welcome_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(MainEntry());
}

class MainEntry extends StatelessWidget {
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MainEntry TRDLtool',
      theme: FlexColorScheme.light(scheme: FlexScheme.jungle).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.jungle).toTheme,
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
