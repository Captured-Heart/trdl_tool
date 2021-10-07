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
      home: WelcomeScreen(),
      routes: {
        //LoginUser routes
        'login': (context) => Login(),
        'register': (context) => Register(),
        'homescreen': (context) => HomeScreen(),
        //UitvoerenPlan routes
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
        //AanpassenPlan routes
        'aanpassenplan': (context) => AanpassenPlan(),
      },
    );
  }
}
