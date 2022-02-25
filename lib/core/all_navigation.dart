import 'package:trdl_tool/core/all_imports.dart';

final Map<String, WidgetBuilder> customRoutes = {
  /*LANDING PAGES ROUTES*/
  'welcomescreen': (context) => const WelcomeScreen(),
  'login': (context) => const Login(),
  'register': (context) => const Register(),
  'wachtwoordscreen': (context) => const Wachtwoord(),
  'verifyscreen': (context) => const VerifyScreen(),
  'homescreen': (context) => const HomeScreen(),

  /*HOMEPAGES ROUTES*/
  'homeindex0': (context) => const HomeIndex0(),
  'homeindex1': (context) => const HomeIndex1(),
  'homeindex2': (context) => const HomeIndex2(),
  'homeindex3': (context) => const HomeIndex3(),

  /*UITVOEREN PLAN ROUTES*/
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

  /*AANPASSEN PLAN ROUTES*/
  'aanpassenplan': (context) => const AanpassenPlan(),
  'stappenplanversperringen': (context) => const StappenplanVersperringen(),
  'ongeplandwerk': (context) => const OngeplandWerk(),
  'orderacceptatie': (context) => const Orderacceptatie(),
  'materieelongeplandwerk': (context) => const MaterieelOngeplandWerk(),
  'infraongeplandwerk': (context) => const InfraOngeplandWerk(),
  'vertragingen': (context) => const Vertragingen(),

  /*INCIDENTEN ROUTES*/
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
  'afhandelensysteemstoringen': (context) => const AfhandelenSysteemstoringen(),

  /*ACHTERGRONDINFO UITVOEREN PLAN ROUTES*/
  'uitvoerenplanachtergrond': (context) => const UitvoerenPlanAchtergrond(),
  'uitvoerenplanbasisachtergrond': (context) =>
      const UitvoerenPlanBasisAchtergrond(),
  'geplandewerkzaamhedenachtergrond': (context) =>
      const GeplandeWerkzaamhedenAchtergrond(),
  'geplandewerkzaamhedenbasisachtergrond': (context) =>
      const GeplandeWerkzaamhedenBasisAchtergrond(),
  'controlerenwbiachtergrond': (context) => const ControlerenWBIAchtergrond(),
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
  'aanpassenplanachtergrond': (context) => const AanpassenPlanAchtergrond(),
  'aanpassenplanbasisachtergrond': (context) =>
      const AanpassenPlanBasisAchtergrond(),
  'stappenplanversperringenachtergrond': (context) =>
      const StappenplanVersperringenAchtergrond(),
  'orderacceptatieachtergrond': (context) => const OrderacceptatieAchtergrond(),
  'ongeplandwerkachtergrond': (context) => const OngeplandWerkAchtergrond(),
  'ongeplandwerkinfraachtergrond': (context) =>
      const OngeplandWerkInfraAchtergrond(),
  'ongeplandwerkmaterieelachtergrond': (context) =>
      const OngeplandWerkMaterieelAchtergrond(),
  'infraterbeschikkingachtergrond': (context) =>
      const InfraTerBeschikkingAchtergrond(),
  'vertragingenachtergrond': (context) => const VertragingenAchtergrond(),

  /*ACHTERGRONDINFO INCIDENTEN ROUTES*/
  'incidentenachtergrond': (context) => const IncidentenAchtergrond(),
  'incidentenachtergrondbasis': (context) => const IncidentenAchtergrondBasis(),

  /*PROQUIZ ROUTES*/
  'proquizmain': (context) => const ProQuiz(),

  /*PROCHAT ROUTES*/
  'prochatmain': (context) => const ProChat(),
};
