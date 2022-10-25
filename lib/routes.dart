import '/all_imports.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  //Landing page routes
  '/': (BuildContext context) => const SplashScreen(),
  'welcome_screen': (BuildContext context) => const WelcomeScreen(),
  'login_screen': (BuildContext context) => const Login(),
  'register_screen': (BuildContext context) => const Register(),
  'wachtwoord_screen': (BuildContext context) => const Wachtwoord(),
  'verify_screen': (BuildContext context) => const VerifyScreen(),
  'home_screen': (BuildContext context) => const HomeScreen(),

  //Homepage routes
  'home_index0': (BuildContext context) => const HomeIndex0(),
  'home_index1': (BuildContext context) => const HomeIndex1(),
  'home_index2': (BuildContext context) => const HomeIndex2(),
  'home_index3': (BuildContext context) => const HomeIndex3(),

  //Werkwijze uitvoeren plan routes
  'ww_uitvoeren_plan_main': (BuildContext context) =>
      const WWUitvoerenPlanMain(),
  'ww_geplande_werkzaamheden_main': (BuildContext context) =>
      const WWGeplandeWerkzaamhedenMain(),
  'ww_aanvang_werkzaamheden': (BuildContext context) =>
      const WWAanvangWerkzaamheden(),
  'ww_controleren_wbi': (BuildContext context) => const WWControlerenWBI(),
  'ww_fouten_in_de_wbi': (BuildContext context) => const WWFoutenWBI(),
  'ww_bijzonderheden_rijwegen_main': (BuildContext context) =>
      const WWBijzonderhedenRijwegenMain(),
  'ww_rijwegen_exploitatie': (BuildContext context) =>
      const WWRijwegenExploitatie(),
  'ww_kop_van_trein_voorbij_sein': (BuildContext context) =>
      const WWKopVanTreinVoorbijSein(),
  'ww_inzetten_icb': (BuildContext context) => const WWInzettenICB(),
  'ww_toelaten_werktreinen': (BuildContext context) =>
      const WWToelatenWerktreinen(),
  'ww_bijzonderheden_trein_main': (BuildContext context) =>
      const WWBijzonderhedenTreinMain(),
  'ww_vervoersregeling': (BuildContext context) => const WWVervoersregeling(),
  'ww_onjuiste_detectie': (BuildContext context) => const WWOnjuisteDetectie(),
  'ww_communicatie_main': (BuildContext context) => const WWCommunicatieMain(),
  'ww_mondelinge_communicatie': (BuildContext context) =>
      const WWMondelingeCommunicatie(),
  'ww_ncbg': (BuildContext context) => const WWNcbg(),
  'ww_dienstovergave': (BuildContext context) => const WWDienstovergave(),

  //Werkwijze aanpassen plan routes
  'ww_aanpassenplan_main': (BuildContext context) =>
      const WWAanpassenPlanMain(),
  'ww_ongepland_werk_main': (BuildContext context) =>
      const WWOngeplandWerkMain(),
  'ww_ongepland_werk_infra': (BuildContext context) =>
      const WWOngeplandWerkInfra(),
  'ww_ongepland_werk_materieel': (BuildContext context) =>
      const WWOngeplandWerkMaterieel(),
  'ww_orderacceptatie': (BuildContext context) => const WWOrderAcceptatie(),
  'ww_stappenplan_versperringen': (BuildContext context) =>
      const WWStappenplanVersperringen(),
  'ww_vertragingen': (BuildContext context) => const WWVertragingen(),

  //Werkwijze incidenten routes
  'ww_incidenten_main': (BuildContext context) => const WWIncidentenMain(),
  'ww_derden_dieren': (BuildContext context) => const WWDerdenDieren(),
  'ww_herroepen_sein': (BuildContext context) => const WWHerroepenSein(),
  'ww_infrastructuur_main': (BuildContext context) => const WWInfraMain(),
  'ww_beveiliging_main': (BuildContext context) => const WWBeveiligingMain(),
  'ww_reset_assenteller': (BuildContext context) => const WWResetAssenteller(),
  'ww_tegen_rijrichting': (BuildContext context) => const WWTegenRijrichting(),
  'ww_veiligheidsstoring_sein': (BuildContext context) =>
      const WWVeiligheidsstoringSein(),
  'ww_bovenleiding_main': (BuildContext context) => const WWBovenleidingMain(),
  'ww_procedure_ruclu': (BuildContext context) => const WWProcedureRuClu(),
  'ww_schakelen_bovenleiding': (BuildContext context) =>
      const WWSchakelenBovenleiding(),
  'ww_schouwen_bovenleiding': (BuildContext context) =>
      const WWSchouwenBovenleiding(),
  'ww_kunstwerken_main': (BuildContext context) => const WWKunstwerkenMain(),
  'ww_aanrijding_viaduct': (BuildContext context) =>
      const WWAanrijdingViaduct(),
  'ww_storing_brug': (BuildContext context) => const WWStoringBrug(),
  'ww_overwegen': (BuildContext context) => const WWOverwegen(),
  'ww_sectiestoring': (BuildContext context) => const WWSectieStoring(),
  'ww_spoor_main': (BuildContext context) => const WWSpoorMain(),
  'ww_glad_spoor': (BuildContext context) => const WWGladSpoor(),
  'ww_onregelmatigheden_baan': (BuildContext context) =>
      const WWOnregelmatighedenBaan(),
  'ww_roestvorming': (BuildContext context) => const WWRoestvorming(),
  'ww_wissels_main': (BuildContext context) => const WWWisselsMain(),
  'ww_wissel_eindstand': (BuildContext context) => const WWWisselEindstand(),
  'ww_opengereden_wissel': (BuildContext context) =>
      const WWOpengeredenWissel(),
  'ww_gestoord_wissel': (BuildContext context) => const WWGestoordWissel(),
  'ww_beschadigd_wissel': (BuildContext context) => const WWBeschadigdWissel(),
  'ww_materieel_main': (BuildContext context) => const WWMaterieelMain(),
  'ww_atb_veiligheidsstoring': (BuildContext context) =>
      const WWAtbVeiligheidsstoring(),
  'ww_gevaarlijke_stoffen1': (BuildContext context) =>
      const WWGevaarlijkeStoffen1(),
  'ww_gevaarlijke_stoffen2': (BuildContext context) =>
      const WWGevaarlijkeStoffen2(),
  'ww_milieumeldingen': (BuildContext context) => const WWMilieuMeldingen(),
  'ww_hotbox': (BuildContext context) => const WWHotBox(),
  'ww_vaste_rem': (BuildContext context) => const WWVasteRem(),
  'ww_overige_incidenten_main': (BuildContext context) =>
      const WWOverigeIncidentenMain(),
  'ww_afhandelen_systeemstoringen': (BuildContext context) =>
      const WWAfhandelenSysteemstoringen(),
  'ww_brand': (BuildContext context) => const WWBrand(),
  'ww_gestrande_trein': (BuildContext context) => const WWGestrandeTrein(),
  'ww_ontruimen_post': (BuildContext context) => const WWOntruimenPost(),
  'ww_stilleggen_treindienst': (BuildContext context) =>
      const WWStilleggenTreindienst(),
  'ww_stroomstoring': (BuildContext context) => const WWStroomstoring(),
  'ww_sts_passage': (BuildContext context) => const WWStsPassage(),
  'ww_weersomstandigheden': (BuildContext context) =>
      const WWWeersomstandigheden(),
  'ww_wissels_vrijmaken': (BuildContext context) => const WWWisselsVrijmaken(),

  //Achtergrondinfo uitvoeren plan routes
  'ai_uitvoeren_plan_main': (BuildContext context) =>
      const AIUitvoerenPlanMain(),
  'ai_bijzonderheden_rijwegen_main': (BuildContext context) =>
      const AIBijzonderhedenRijwegenMain(),
  'ai_inzetten_icb': (BuildContext context) => const AIInzettenICB(),
  'ai_rijwegen_ari': (BuildContext context) => const AIRijwegenARI(),
  'ai_rijwegen_planopbouw': (BuildContext context) =>
      const AIRijwegenPlanopbouw(),
  'ai_rijwegen_planscherm': (BuildContext context) =>
      const AIRijwegenPlanscherm(),
  'ai_rijwegen_trots': (BuildContext context) => const AIRijwegenTrots(),
  'ai_rijwegen_bedienscherm': (BuildContext context) =>
      const AIRijwegenBedienscherm(),
  'ai_bijzonderheden_trein_main': (BuildContext context) =>
      const AIBijzonderhedenTreinMain(),
  'ai_bijzondere_aandacht': (BuildContext context) =>
      const AIBijzondereAandacht(),
  'ai_bijzonderheden_trein': (BuildContext context) =>
      const AIBijzonderhedenTrein(),
  'ai_onjuiste_detectie': (BuildContext context) => const AIOnjuisteDetectie(),
  'ai_vervoersregeling': (BuildContext context) => const AIVervoersregeling(),
  'ai_communicatie_main': (BuildContext context) => const AICommunicatieMain(),
  'ai_communicatiemiddelen': (BuildContext context) =>
      const AICommmunicatieMiddelen(),
  'ai_communicatiesysteem': (BuildContext context) =>
      const AICommunicatieSysteem(),
  'ai_mondelinge_communicatie': (BuildContext context) =>
      const AIMondelingeCommunicatie(),
  'ai_ketenpartners': (BuildContext context) => const AIKetenpartners(),
  'ai_geplande_werkzaamheden_main': (BuildContext context) =>
      const AIGeplandeWerkzaamhedenMain(),
  'ai_aanvang_werkzaamheden': (BuildContext context) =>
      const AIAanvangWerkzaamheden(),
  'ai_controleren_wbi': (BuildContext context) => const AIControlerenWBI(),
  'ai_fouten_wbi': (BuildContext context) => const AIFoutenWBI(),
  'ai_geplande_werkzaamheden': (BuildContext context) =>
      const AIGeplandeWerkzaamheden(),
  'ai_toelaten_werktreinen': (BuildContext context) =>
      const AIToelatenWerktreinen(),
  'ai_werkzones': (BuildContext context) => const AIWerkzones(),
  'ai_ncbg': (BuildContext context) => const AINcbg(),
  'ai_uitvoeren_plan': (BuildContext context) => const AIUitvoerenPlan(),
  'ai_dienstovergave': (BuildContext context) => const AIDienstovergave(),

  //Achtergrondinfo aanpassen plan routes
  'ai_aanpassen_plan_main': (BuildContext context) =>
      const AIAanpassenPlanMain(),
  'ai_aanpassen_plan': (BuildContext context) => const AIAanpassenPlan(),
  'ai_ongepland_werk_main': (BuildContext context) =>
      const AIOngeplandWerkMain(),
  'ai_infra_ter_beschikking': (BuildContext context) =>
      const AIInfraTerBeschikking(),
  'ai_ongepland_werk_infra': (BuildContext context) =>
      const AIOngeplandWerkInfra(),
  'ai_ongepland_werk_materieel': (BuildContext context) =>
      const AIOngeplandWerkMaterieel(),
  'ai_vertragingen': (BuildContext context) => const AIVertragingen(),
  'ai_monitoring': (BuildContext context) => const AIMonitoring(),
  'ai_klanthinder': (BuildContext context) => const AIKlanthinder(),
  'ai_orderacceptatie': (BuildContext context) => const AIOrderacceptatie(),
  'ai_stappenplan_versperringen': (BuildContext context) =>
      const AIStappenplanVersperringen(),

  //Achtergrondinfo incidenten routes
  'ai_incidenten_main': (BuildContext context) => const AIIncidentenMain(),
  'ai_incidenten_basis': (BuildContext context) => const AIIncidentenBasis(),
  'ai_incidenten_derdendieren': (BuildContext context) =>
      const AIDerdenDieren(),
  'ai_infrastructuur_main': (BuildContext context) => const AIInfraMain(),
  'ai_wissels_main': (BuildContext context) => const AIWisselsMain(),
  'ai_wissels_basis': (BuildContext context) => const AIWisselsBasis(),
  'ai_wissel_eindstand': (BuildContext context) => const AIWisselEindstand(),
  'ai_gestoord_wissel': (BuildContext context) => const AIGestoordWissel(),
  'ai_opengereden_wissel': (BuildContext context) =>
      const AIOpengeredenWissel(),
  'ai_materieel_main': (BuildContext context) => const AIMaterieelMain(),
  'ai_verloren_onderdelen': (BuildContext context) =>
      const AIVerlorenOnderdelen(),
  'ai_vaste_rem': (BuildContext context) => const AIVasteRem(),
  'ai_quo_vadis_hotbox': (BuildContext context) => const AIQuoVadisHotbox(),
  'ai_gevaarlijke_stoffen_milieu': (BuildContext context) =>
      const AIGevaarlijkeStoffenMilieu(),
  'ai_atb': (BuildContext context) => const AIATB(),
  'ai_beveiliging_main': (BuildContext context) => const AIBeveiligingMain(),
  'ai_beveiliging_basis1': (BuildContext context) =>
      const AIBeveiligingBasis1(),
  'ai_beveiliging_basis2': (BuildContext context) =>
      const AIBeveiligingBasis2(),
  'ai_detectie_basis': (BuildContext context) => const AIDetectie(),
  'ai_seinen_basis1': (BuildContext context) => const AISeinenBasis1(),
  'ai_seinen_basis2': (BuildContext context) => const AISeinenBasis2(),
  'ai_tegen_rijrichting': (BuildContext context) => const AITegenRijrichting(),
  'ai_veiligheidsstoring_sein': (BuildContext context) =>
      const AIVeiligheidsstoringSein(),
  'ai_bovenleiding_main': (BuildContext context) => const AIBovenleidingMain(),
  'ai_kunstwerken_main': (BuildContext context) => const AIKunstwerkenMain(),
  'ai_overwegen_main': (BuildContext context) => const AIOverwegenMain(),
  'ai_spoor_main': (BuildContext context) => const AISpoorMain(),

  //ProQuiz routes
  'proquiz_main': (BuildContext context) => const ProQuiz(),

  //ProChat routes
  'prochat_main': (BuildContext context) => const ProChat(),

  //Adding more routes? Add to constants/all_search_string.dart as well!
};
