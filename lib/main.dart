import 'package:trdl_tool/all_imports.dart';

void main() async {
  /*Standard methods for Firebase usage*/
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Logger().wtf('App started from main().');
  runApp(
    /*Main entry point for the app! DO NOT ALTER!*/
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
      /*Package from FlexColorScheme, making the WHOLE APP the same theme, including Questrial font*/
      theme: FlexColorScheme.light(
        scheme: FlexScheme.jungle,
        fontFamily: 'Questrial',
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.jungle,
        fontFamily: 'Questrial',
      ).toTheme,
      themeMode: ThemeMode.system,
      /*MainEntry always goes to splash_screen*/
      home: const SplashScreen(),
      routes: {
        /*First Page routes*/
        'welcomescreen': (context) => const WelcomeScreen(),
        'login': (context) => const Login(),
        'register': (context) => const Register(),
        'homescreen': (context) => const HomeScreen(),
        'verifyscreen': (context) => const VerifyScreen(),
        'wachtwoordscreen': (context) => const Wachtwoord(),

        /*Home Page routes*/
        'homeindex0': (context) => HomeIndex0(),
        'homeindex1': (context) => HomeIndex1(),
        'homeindex2': (context) => HomeIndex2(),
        'homeindex3': (context) => HomeIndex3(),

        /*Uitvoeren Plan routes*/
        'uitvoerenplan': (context) => const UitvoerenPlan(),
        'geplandewerkzaamheden': (context) => const GeplandeWerkzaamheden(),
        'aanvangwerkzaamheden': (context) => const AanvangWerkzaamheden(),
        'controlerenwbi': (context) => const ControlerenWbi(),
        'foutenindewbi': (context) => const FoutenWBI(),
        'bijzonderhedenrijwegen': (context) => const BijzonderhedenRijwegen(),
        'rijwegenexploitatie': (context) => const RijwegenExploitatie(),
        'kopvantrein': (context) => const KopvanTrein(),
        'inzettenicb': (context) => const InzettenICB(),
        'toelatenwerktreinen': (context) => const ToelatenWerktreinen(),
        'bijzonderhedentrein': (context) => const BijzonderhedenTrein(),
        'communicatie': (context) => const Communicatie(),
        'mondelingecommunicatie': (context) => const MondelingeCommunicatie(),
        'ncbg': (context) => const Ncbg(),
        'dienstovergave': (context) => const Dienstovergave(),

        /*Aanpassen Plan routes*/
        'aanpassenplan': (context) => const AanpassenPlan(),
        'stappenplanversperringen': (context) =>
            const StappenplanVersperringen(),
        'ongeplandwerk': (context) => const OngeplandWerk(),
        'orderacceptatie': (context) => const Orderacceptatie(),
        'materieelongeplandwerk': (context) => const MaterieelOngeplandWerk(),
        'infraongeplandwerk': (context) => const InfraOngeplandWerk(),
        'vertragingen': (context) => const Vertragingen(),

        /*Incidenten Routes*/
        'incidenten': (context) => const Incidenten(),
        'herroepensein': (context) => const HerroepenSein(),
        'infra': (context) => const Infra(),
        'derdendieren': (context) => const DerdenDieren(),
        'materieelincidenten': (context) => const MaterieelIncidenten(),
        'overigeincidenten': (context) => const OverigeIncidenten(),
        'wissels': (context) => const Wissels(),
        'wisseleindstand': (context) => const WisselEindstand(),
        'opengeredenwissel': (context) => const OpengeredenWissel(),
        'gestoordwissel': (context) => const GestoordWissel(),
        'beschadigdwissel': (context) => const BeschadigdWissel(),
        'overwegen': (context) => const Overwegen(),
        'beveiliging': (context) => const Beveiliging(),
        'tegenrijrichting': (context) => const TegenRijrichting(),
        'veiligheidsstoringsein': (context) => const VeiligheidsstoringSein(),
        'resetassenteller': (context) => const ResetAssenteller(),
        'bovenleiding': (context) => const Bovenleiding(),
        'procedureruclu': (context) => const ProcedureRuClu(),
        'schakelenbovenleiding': (context) => const SchakelenBovenleiding(),
        'schouwenbovenleiding': (context) => const SchouwenBovenleiding(),
        'spoor': (context) => const Spoor(),
        'gladspoor': (context) => const GladSpoor(),
        'onregelmatighedenbaan': (context) => const OnregelmatighedenBaan(),
        'roestvorming': (context) => const Roestvorming(),
        'kunstwerken': (context) => const Kunstwerken(),
        'aanrijdingviaduct': (context) => const AanrijdingViaduct(),
        'storingbrug': (context) => const StoringBrug(),
        'sectiestoring': (context) => const SectieStoring(),
        'atbveiligheidsstoring': (context) => const ATBVeiligheid(),
        'hotbox': (context) => const HotBox(),
        'gevaarlijkestoffen1': (context) => const GevaarlijkeStoffen1(),
        'gevaarlijkestoffen2': (context) => const GevaarlijkeStoffen2(),
        'milieumeldingen': (context) => const MilieuMeldingen(),
        'vasterem': (context) => const VasteRem(),
        'gestrandetrein': (context) => const GestrandeTrein(),
        'brand': (context) => const Brand(),
        'weersomstandigheden': (context) => const Weersomstandigheden(),
        'ontruimenpost': (context) => const OntruimenPost(),
        'stroomstoring': (context) => const Stroomstoring(),
        'wisselsvrijmaken': (context) => const WisselsVrijmaken(),
        'stspassage': (context) => const STSPassage(),
        'stilleggentreindienst': (context) => const StilleggenTreindienst(),
        'afhandelensysteemstoringen': (context) =>
            const AfhandelenSysteemstoringen(),

        /*Achtergrondinfo routes*/
        'uitvoerenplanachtergrond': (context) =>
            const UitvoerenPlanAchtergrond(),
        'geplandewerkzaamhedenachtergrond': (context) =>
            const GeplandeWerkzaamhedenAchtergrond(),
        'geplandewerkzaamhedenbasisachtergrond': (context) =>
            const GeplandeWerkzaamhedenBasisAchtergrond(),

        /*ProQuiz routes*/
        'proquizmain': (context) => const ProQuiz(),

        /*ProChat routes*/
        'prochatmain': (context) => const ProChat(),
      },
    );
  }
}
