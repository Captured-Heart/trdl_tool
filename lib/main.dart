import 'package:trdl_tool/core/all_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*START FIREBASE BACKEND*/
  await Firebase.initializeApp();
  runApp(
    const MainEntry(),
  );
}

class MainEntry extends StatelessWidget {
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.mainTitle,
      /*CAN BE FOUND IN LIB/THEME/APP_THEME.DART*/
      theme: themeLight,
      darkTheme: themeDark,
      themeMode: ThemeMode.system,
      /*LOAD SPLASH FIRST*/
      home: const SplashScreen(),
      /*CAN BE FOUND IN LIB/CORE/ALL_NAVIGATION.DART*/
      routes: customRoutes,
    );
  }
}
