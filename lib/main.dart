import 'all_imports.dart';

void main() {
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
      title: 'MainEntry TRDLtool',
      theme: FlexColorScheme.light(scheme: FlexScheme.jungle).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.jungle).toTheme,
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
      routes: {
        'uitvoerenplan': (context) => UitvoerenPlan(),
        'geplandewerkzaamheden': (context) => GeplandeWerkzaamheden(),
        'aanvangwerkzaamheden': (context) => AanvangWerkzaamheden(),
        'controlerenwbi': (context) => ControlerenWbi(),
        'foutenindewbi': (context) => FoutenWBI(),
        'bijzonderhedenrijwegen': (context) => BijzonderhedenRijwegen(),
        'rijwegenexploitatie': (context) => RijwegenExploitatie(),
        'kopvantrein': (context) => KopvanTrein(),
        'inzettenicb': (context) => InzettenICB(),
      },
    );
  }
}
