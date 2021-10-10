import 'all_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MainEntry(),
  );
}

class MainEntry extends StatelessWidget {
  const MainEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TRDLtool',
      theme: FlexColorScheme.light(scheme: FlexScheme.jungle).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.jungle).toTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
      routes: {
        // FirstPages routes
        'welcomescreen': (context) => WelcomeScreen(),
        'login': (context) => Login(),
        'register': (context) => Register(),
        'homescreen': (context) => HomeScreen(),
        'verifyscreen': (context) => VerifyScreen(),
        'wachtwoordscreen': (context) => Wachtwoord(),

        // HomePage routes
        'homeindex0': (context) => HomeIndex0(),
        'homeindex1': (context) => HomeIndex1(),
        'homeindex2': (context) => HomeIndex2(),
        'homeindex3': (context) => HomeIndex3(),

        // UitvoerenPlan routes
        'uitvoerenplan': (context) => UitvoerenPlan(),
        'geplandewerkzaamheden': (context) => GeplandeWerkzaamheden(),
        'aanvangwerkzaamheden': (context) => AanvangWerkzaamheden(),
        'controlerenwbi': (context) => ControlerenWbi(),
        'foutenindewbi': (context) => FoutenWBI(),
        'bijzonderhedenrijwegen': (context) => BijzonderhedenRijwegen(),
        'rijwegenexploitatie': (context) => RijwegenExploitatie(),
        'kopvantrein': (context) => KopvanTrein(),
        'inzettenicb': (context) => InzettenICB(),
        'toelatenwerktreinen': (context) => ToelatenWerktreinen(),
        'bijzonderhedentrein': (context) => BijzonderhedenTrein(),
        'communicatie': (context) => Communicatie(),
        'mondelingecommunicatie': (context) => MondelingeCommunicatie(),
        'ncbg': (context) => Ncbg(),
        'dienstovergave': (context) => Dienstovergave(),

        // AanpassenPlan routes
        'aanpassenplan': (context) => AanpassenPlan(),
        'stappenplanversperringen': (context) => StappenplanVersperringen(),
        'ongeplandwerk': (context) => OngeplandWerk(),
        'orderacceptatie': (context) => Orderacceptatie(),
        'materieelongeplandwerk': (context) => MaterieelOngeplandWerk(),
        'infraongeplandwerk': (context) => InfraOngeplandWerk(),
        'vertragingen': (context) => Vertragingen(),

        // Incidenten routes
        'incidenten': (context) => Incidenten(),
        'herroepensein': (context) => HerroepenSein(),
        'infra': (context) => Infra(),
      },
    );
  }
}
