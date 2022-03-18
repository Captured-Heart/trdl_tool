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
      /*APPTHEME FROM FLEXCOLORSCHEME*/
      theme: themeLight,
      darkTheme: themeDark,
      themeMode: ThemeMode.system,
      /*LOAD SPLASH FIRST*/
      home: const SplashScreen(),
      routes: {
        /*LANDING PAGES ROUTES*/
        'welcome_screen': (context) => const WelcomeScreen(),
        'login_screen': (context) => const Login(),
        'register_screen': (context) => const Register(),
        'wachtwoord_screen': (context) => const Wachtwoord(),
        'verify_screen': (context) => const VerifyScreen(),
        'home_screen': (context) => const HomeScreen(),

        /*HOMEPAGES ROUTES*/
        'home_index0': (context) => const HomeIndex0(),
        'home_index1': (context) => const HomeIndex1(),
        'home_index2': (context) => const HomeIndex2(),
        'home_index3': (context) => const HomeIndex3(),

        /*UITVOEREN PLAN ROUTES*/
        'ww_uitvoeren_plan_main': (context) => const WerkwijzeUitvoerenPlan(),
        'ww_geplande_werkzaamheden_main': (context) => const WerkwijzeGeplandeWerkzaamheden(),
        'ww_aanvang_werkzaamheden': (context) => const WerkwijzeAanvangWerkzaamheden(),
        'ww_controleren_wbi': (context) => const WerkwijzeControlerenWbi(),
        'ww_fouten_in_de_wbi': (context) => const WerkwijzeFoutenWBI(),
        'ww_bijzonderheden_rijwegen_main': (context) => const WerkwijzeBijzonderhedenRijwegenMain(),
        'ww_rijwegen_exploitatie': (context) => const WerkwijzeRijwegenExploitatie(),
        'ww_kop_van_trein_voorbij_sein': (context) => const WerkwijzeKopvanTrein(),
        'ww_inzetten_icb': (context) => const WerkwijzeInzettenICB(),
        'ww_toelaten_werktreinen': (context) => const WerkwijzeToelatenWerktreinen(),
        'ww_bijzonderheden_trein': (context) => const WerkwijzeBijzonderhedenTrein(),
        'ww_communicatie_main': (context) => const WerkwijzeCommunicatie(),
        'ww_mondelinge_communicatie': (context) => const WerkwijzeMondelingeCommunicatie(),
        'ww_ncbg': (context) => const WerkwijzeNcbg(),
        'ww_dienstovergave': (context) => const WerkwijzeDienstovergave(),

        /*AANPASSEN PLAN ROUTES*/
        'ww_aanpassenplan_main': (context) => const WerkwijzeAanpassenPlan(),
        'ww_ongepland_werk_main': (context) => const WerkwijzeOngeplandWerk(),
        'ww_ongepland_werk_infra': (context) => const WerkwijzeInfraOngeplandWerk(),
        'ww_ongepland_werk_materieel': (context) => const WerkwijzeMaterieelOngeplandWerk(),
        'ww_orderacceptatie': (context) => const WerkwijzeOrderacceptatie(),
        'ww_stappenplan_versperringen': (context) =>
            const WerkwijzeStappenplanVersperringen(),        
        'ww_vertragingen': (context) => const WerkwijzeVertragingen(),

        /*INCIDENTEN ROUTES*/
        'ww_incidenten': (context) => const WerkwijzeIncidenten(),
        'ww_derden_dieren': (context) => const WerkwijzeDerdenDieren(),
        'ww_herroepen_sein': (context) => const WerkwijzeHerroepenSein(),
        'ww_infrastructuur_main': (context) => const WerkwijzeInfra(),

        'ww_beveiliging_main': (context) => const WerkwijzeBeveiliging(),     
        'ww_reset_assenteller': (context) => const WerkwijzeResetAssenteller(),
        'ww_tegen_rijrichting': (context) => const WerkwijzeTegenRijrichting(),
        'ww_veiligheidsstoring_sein': (context) => const WerkwijzeVeiligheidsstoringSein(),

        'ww_bovenleiding_main': (context) => const WerkwijzeBovenleiding(),
        'ww_procedure_ruclu': (context) => const WerkwijzeProcedureRuClu(),
        'ww_schakelen_bovenleiding': (context) => const WerkwijzeSchakelenBovenleiding(),
        'ww_schouwen_bovenleiding': (context) => const WerkwijzeSchouwenBovenleiding(),

        'ww_kunstwerken_main': (context) => const WerkwijzeKunstwerken(),
        'ww_aanrijding_viaduct': (context) => const WerkwijzeAanrijdingViaduct(),
        'ww_storing_brug': (context) => const WerkwijzeStoringBrug(),
        'ww_overwegen': (context) => const WerkwijzeOverwegen(),
        'ww_sectiestoring': (context) => const WerkwijzeSectieStoring(),

        'ww_spoor_main': (context) => const WerkwijzeSpoor(),
        'ww_glad_spoor': (context) => const WerkwijzeGladSpoor(),
        'ww_onregelmatigheden_baan': (context) => const WerkwijzeOnregelmatighedenBaan(),
        'ww_roestvorming': (context) => const WerkwijzeRoestvorming(),
        'ww_wissels_main': (context) => const WerkwijzeWissels(),
        'ww_wissel_eindstand': (context) => const WerkwijzeWisselEindstand(),
        'ww_opengereden_wissel': (context) => const WerkwijzeOpengeredenWissel(),
        'ww_gestoord_wissel': (context) => const WerkwijzeGestoordWissel(),
        'ww_beschadigd_wissel': (context) => const WerkwijzeBeschadigdWissel(),

        'ww_materieel_main': (context) => const WerkwijzeMaterieelIncidenten(),
        'ww_atb_veiligheidsstoring': (context) => const WerkwijzeATBVeiligheid(),
        'ww_gevaarlijke_stoffen1': (context) => const WerkwijzeGevaarlijkeStoffen1(),
        'ww_gevaarlijke_stoffen2': (context) => const WerkwijzeGevaarlijkeStoffen2(),
        'ww_milieumeldingen': (context) => const WerkwijzeMilieuMeldingen(),
        'ww_hotbox': (context) => const WerkwijzeHotBox(),
        'ww_vaste_rem': (context) => const WerkwijzeVasteRem(),

        'ww_overige_incidenten_main': (context) => const WerkwijzeOverigeIncidenten(),
        'ww_afhandelen_systeemstoringen': (context) =>
            const WerkwijzeAfhandelenSysteemstoringen(),
        'ww_brand': (context) => const WerkwijzeBrand(),
        'ww_gestrande_trein': (context) => const WerkwijzeGestrandeTrein(),
        'ww_ontruimen_post': (context) => const WerkwijzeOntruimenPost(),
        'ww_stilleggen_treindienst': (context) => const WerkwijzeStilleggenTreindienst(),
        'ww_stroomstoring': (context) => const WerkwijzeStroomstoring(),     
        'ww_sts_passage': (context) => const WerkwijzeSTSPassage(),
        'ww_weersomstandigheden': (context) => const WerkwijzeWeersomstandigheden(), 
        'ww_wissels_vrijmaken': (context) => const WerkwijzeWisselsVrijmaken(),       

        /*ACHTERGRONDINFO UITVOEREN PLAN ROUTES*/
        'uitvoerenplanachtergrond': (context) =>
            const UitvoerenPlanAchtergrond(),
        'uitvoerenplanbasisachtergrond': (context) =>
            const UitvoerenPlanBasisAchtergrond(),
        'geplandewerkzaamhedenachtergrond': (context) =>
            const GeplandeWerkzaamhedenAchtergrond(),
        'geplandewerkzaamhedenbasisachtergrond': (context) =>
            const GeplandeWerkzaamhedenBasisAchtergrond(),
        'controlerenwbiachtergrond': (context) =>
            const ControlerenWBIAchtergrond(),
        'foutenindewbiachtergrond': (context) => const FoutenWBIAchtergrond(),
        'aanvangwerkzaamhedenachtergrond': (context) =>
            const AanvangWerkzaamhedenAchtergrond(),
        'toelatenwerktreinenachtergrond': (context) =>
            const ToelatenWerktreinenAchtergrond(),
        'werkzonesachtergrond': (context) => const WerkzonesAchtergrond(),
        'bijzonderhedentreinachtergrond': (context) =>
            const BijzonderhedenTreinAchtergrond(),
        'bijzonderhedentreinbasisachtergrond': (context) =>
            const BijzonderhedenTreinBasisAchtergrond(),
        'vervoersregelingachtergrond': (context) =>
            const TreinenVervoersregelingAchtergrond(),
        'onjuistedetectieachtergrond': (context) =>
            const OnjuisteDetectieAchtergrond(),
        'bijzondereaandachtachtergrond': (context) =>
            const BijzondereAandachtAchtergrond(),
        'bijzonderhedenrijwegenachtergrond': (context) =>
            const BijzonderhedenRijwegenAchtergrond(),
        'inzettenrailvoertuigachtergrond': (context) =>
            const InzettenRailvoertuigAchtergrond(),
        'rijwegenopbouwplanachtergrond': (context) =>
            const OpbouwPlanBasisAchtergrond(),
        'rijwegenwerkenmetplanachtergrond': (context) =>
            const RijwegenPlanschermBasis(),
        'rijwegenariachtergrond': (context) => const RijwegenARIAchtergrond(),
        'communicatieachtergrond': (context) => const CommunicatieAchtergrond(),
        'mondelingeveiligheidscommunicatie': (context) =>
            const MondelingeVeiligheidAchtergrond(),
        'communicatiemiddelenbasis': (context) =>
            const CommunicatieMiddelenAchtergrond(),
        'communicatiesysteembasis': (context) =>
            const CommunicatieSysteemAchtergrond(),
        'ncbgachtergrond': (context) => const NCBGAchtergrond(),

        /*ACHTERGRONDINFO AANPASSEN PLAN ROUTES*/
        'aanpassenplanachtergrond': (context) =>
            const AanpassenPlanAchtergrond(),
        'aanpassenplanbasisachtergrond': (context) =>
            const AanpassenPlanBasisAchtergrond(),
        'stappenplanversperringenachtergrond': (context) =>
            const StappenplanVersperringenAchtergrond(),
        'orderacceptatieachtergrond': (context) =>
            const OrderacceptatieAchtergrond(),
        'ongeplandwerkachtergrond': (context) =>
            const OngeplandWerkAchtergrond(),
        'ongeplandwerkinfraachtergrond': (context) =>
            const OngeplandWerkInfraAchtergrond(),
        'ongeplandwerkmaterieelachtergrond': (context) =>
            const OngeplandWerkMaterieelAchtergrond(),
        'infraterbeschikkingachtergrond': (context) =>
            const InfraTerBeschikkingAchtergrond(),
        'vertragingenachtergrond': (context) => const VertragingenAchtergrond(),

        /*ACHTERGRONDINFO INCIDENTEN ROUTES*/
        'incidentenachtergrond': (context) => const IncidentenAchtergrond(),
        'incidentenachtergrondbasis': (context) =>
            const IncidentenAchtergrondBasis(),
            'wisselsincidentenachtergrond': (context) => const AchtergrondIncidentenWissels(),

        /*PROQUIZ ROUTES*/
        'proquizmain': (context) => const ProQuiz(),

        /*PROCHAT ROUTES*/
        'prochatmain': (context) => const ProChat(),
      },
    );
  }
}
