import 'all_imports.dart';

Future<void> main() async {
  //Make sure everything is in place, before running the app
  WidgetsFlutterBinding.ensureInitialized();
  //Starts Firebase backend and checks it for current platform
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //Activates Firebase AppCheck service
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  );
  runApp(
    //ProviderScope manages Riverpod Providers
    const ProviderScope(
      child: MainEntry(),
    ),
  );
}

/// ConsumerWidget makes providers reachable
class MainEntry extends ConsumerWidget {
  /// MainEntry constructor
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.mainTitle,
      //Theming starts from phonesetting, afterwards adjustable by user
      theme: ref.watch(themeLightProvider),
      darkTheme: ref.watch(themeDarkProvider),
      themeMode: ref.watch(themeModeProvider),
      //Load SplashScreen FIRST
      initialRoute: '/',
      //See routes.dart
      routes: customRoutes,
    );
  }
}
