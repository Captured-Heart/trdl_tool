/*NATIVE FLUTTER & DART PACKAGES*/
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:flutter/material.dart';
export 'package:flutter/painting.dart';
export 'package:flutter/services.dart';
export 'dart:async';
export 'dart:math';
export 'dart:io';

/*FIREBASE PACKAGES*/
export 'package:firebase_core/firebase_core.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:trdl_tool/services/auth_service.dart';

/*EXTERNAL PACKAGES (THIRD PARTY)*/
export 'package:google_fonts/google_fonts.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter_spinkit/flutter_spinkit.dart';
export 'package:logger/logger.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:carousel_slider/carousel_slider.dart';

/*STRINGS / LISTS / CONSTANTS / ETC*/
export 'package:trdl_tool/constants/welcome_items.dart';
export 'package:trdl_tool/constants/all_strings.dart';
export 'package:trdl_tool/constants/all_questions.dart';
export 'package:trdl_tool/constants/all_constants.dart';
export 'package:trdl_tool/constants/all_search_strings.dart';

/*THEMING*/
export 'package:trdl_tool/theme/flexcolorscheme.dart';
export 'package:trdl_tool/theme/colors.dart';

/*CUSTOM WIDGETS*/
export 'package:trdl_tool/widgets/pop-ups/exit-popup/exit_popup.dart';
export 'package:trdl_tool/widgets/pop-ups/logout_popup/logout_popup.dart';
export 'package:trdl_tool/widgets/pop-ups/avatar-popup/avatar_popup.dart';
export 'package:trdl_tool/widgets/pop-ups/quizfinish_popup/quizfinish_popup.dart';
export 'package:trdl_tool/widgets/pop-ups/version_popup/version_popup.dart';

export 'package:trdl_tool/widgets/buttons/nav_button.dart';
export 'package:trdl_tool/widgets/buttons/rounded_button.dart';

export 'package:trdl_tool/widgets/appbar_widgets/appbar_title/appbar_title.dart';
export 'package:trdl_tool/widgets/appbar_widgets/appbar_logout_button/appbar_logout_button.dart';
export 'package:trdl_tool/widgets/appbar_widgets/appbar_home_button/appbar_home_button.dart';
export 'package:trdl_tool/widgets/appbar_widgets/appbar_search_button/appbar_search_button.dart';

export 'package:trdl_tool/widgets/version_widgets/version_changesmade.dart';
export 'package:trdl_tool/widgets/version_widgets/version_currentversion.dart';
export 'package:trdl_tool/widgets/version_widgets/version_datechanged.dart';

export 'package:trdl_tool/widgets/trdltool_logo/trdltool_logo.dart';

export 'package:trdl_tool/widgets/text_widgets/title_text/title_text.dart';
export 'package:trdl_tool/widgets/text_widgets/subtitle_text/subtitle_text.dart';
export 'package:trdl_tool/widgets/text_widgets/bold_text/bold_text.dart';
export 'package:trdl_tool/widgets/text_widgets/body_text/body_text.dart';
export 'package:trdl_tool/widgets/text_widgets/menuitem_text/menuitem_text.dart';

export 'package:trdl_tool/widgets/image_widgets/insert_image.dart';

export 'package:trdl_tool/widgets/table_widgets/tablecell_bold/tablecell_bold.dart';
export 'package:trdl_tool/widgets/table_widgets/tablecell/tablecell.dart';

export 'package:trdl_tool/widgets/sizedbox_widgets/sizedbox_height_8/sizedbox_height_8.dart';
export 'package:trdl_tool/widgets/sizedbox_widgets/sizedbox_width_8/sizedbox_width_8.dart';

export 'package:trdl_tool/widgets/snackbars/snackbars_login/snackbar_login_email_verification.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_login/snackbar_login_erisietsmis.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_wachtwoord/snackbar_wachtwoord_emailverzonden.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_wachtwoord/snackbar_wachtwoord_erisietsmis.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_register/snackbar_register_emailwrong.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_register/snackbar_register_passwordshort.dart';
export 'package:trdl_tool/widgets/snackbars/snackbars_register/snackbar_register_passwordnotequal.dart';

/*MAIN PAGES*/
export 'package:trdl_tool/screens/landing_screens/splash_screen.dart';
export 'package:trdl_tool/screens/landing_screens/home_screen.dart';
export 'package:trdl_tool/screens/landing_screens/home_index0.dart';
export 'package:trdl_tool/screens/landing_screens/home_index1.dart';
export 'package:trdl_tool/screens/landing_screens/home_index2.dart';
export 'package:trdl_tool/screens/landing_screens/home_index3.dart';
export 'package:trdl_tool/screens/landing_screens/welcome_screen.dart';
export 'package:trdl_tool/screens/auth_screens/login_screen.dart';
export 'package:trdl_tool/screens/auth_screens/register_screen.dart';
export 'package:trdl_tool/screens/auth_screens/verify_screen.dart';
export 'package:trdl_tool/screens/auth_screens/wachtwoord_screen.dart';

/*WERKWIJZE UITVOEREN PLAN PAGES*/
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/ww_uitvoeren_plan_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_rijwegen/ww_bijzonderheden_rijwegen_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_icb/ww_inzetten_icb.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_rijwegen/kop_van_trein_voorbij_sein/ww_kop_van_trein_voorbij_sein.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_exploitatie/ww_rijwegen_exploitatie.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_rijwegen/toelaten_werktreinen/ww_toelaten_werktreinen.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_trein/ww_bijzonderheden_trein_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_trein/vervoersregeling/ww_vervoersregeling.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/bijzonderheden_trein/onjuiste_detectie/ww_onjuiste_detectie.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/communicatie/ww_communicatie_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/communicatie/mondelinge_communicatie/ww_mondelinge_communicatie.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/dienstovergave/ww_dienstovergave.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/geplande_werkzaamheden/ww_geplande_werkzaamheden_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/geplande_werkzaamheden/aanvang_werkzaamheden/ww_aanvang_werkzaamheden.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/geplande_werkzaamheden/controleren_wbi/ww_controleren_wbi.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/geplande_werkzaamheden/fouten_in_de_wbi/ww_fouten_in_de_wbi.dart';
export 'package:trdl_tool/screens/werkwijze_screens/uitvoeren_plan/ncbg/ww_ncbg.dart';

/*WERKWIJZE AANPASSEN PLAN PAGES*/
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/ww_aanpassen_plan_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/ongepland_werk/ww_ongepland_werk_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/ongepland_werk/ongepland_werk_infra/ww_ongepland_werk_infra.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/ongepland_werk/ongepland_werk_materieel/ww_ongepland_werk_materieel.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/orderacceptatie/ww_orderacceptatie.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/stappenplan_versperringen/ww_stappenplan_versperringen.dart';
export 'package:trdl_tool/screens/werkwijze_screens/aanpassen_plan/vertragingen/ww_vertragingen.dart';

/*WERKWIJZE INCIDENTEN PAGES*/
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/ww_incidenten_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/derden_dieren/ww_derden_dieren.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/herroepen_sein/ww_herroepen_sein.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/ww_infrastructuur_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/beveiliging/ww_beveiliging_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/beveiliging/reset_assenteller/ww_reset_assenteller.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/beveiliging/tegen_rijrichting/ww_tegen_rijrichting.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/beveiliging/veiligheidsstoring_sein/ww_veiligheidsstoring_sein.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/bovenleiding/ww_bovenleiding_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/bovenleiding/procedure_ruclu/ww_procedure_ruclu.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/bovenleiding/schakelen_bovenleiding/ww_schakelen_bovenleiding.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/bovenleiding/schouwen_bovenleiding/ww_schouwen_bovenleiding.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/kunstwerken/ww_kunstwerken_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/kunstwerken/aanrijding_viaduct/ww_aanrijding_viaduct.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/kunstwerken/storing_brug/ww_storing_brug.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/overwegen/ww_overwegen.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/sectiestoring/ww_sectiestoring.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/spoor/ww_spoor_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/spoor/glad_spoor/ww_glad_spoor.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/spoor/onregelmatigheden_baan/ww_onregelmatigheden_baan.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/spoor/roestvorming/ww_roestvorming.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/wissels/ww_wissels_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/wissels/wissel_eindstand/ww_wissel_eindstand.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/wissels/opengereden_wissel/ww_opengereden_wissel.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/wissels/gestoord_wissel/ww_gestoord_wissel.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/infrastructuur/wissels/beschadigd_wissel/ww_beschadigd_wissel.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/ww_materieel_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/atb_veiligheidsstoring/ww_atb_veiligheidsstoring.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/gevaarlijke_stoffen/ww_gevaarlijke_stoffen1.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/gevaarlijke_stoffen/ww_gevaarlijke_stoffen2.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/gevaarlijke_stoffen/ww_milieu_meldingen.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/hotbox/ww_hotbox.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/materieel/vaste_rem/ww_vaste_rem.dart';

export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/ww_overige_incidenten_main.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/afhandelen_systeemstoringen/ww_afhandelen_systeemstoringen.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/brand/ww_brand.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/gestrande_trein/ww_gestrande_trein.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/ontruimen_post/ww_ontruimen_post.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/stilleggen_treindienst/ww_stilleggen_treindienst.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/stroomstoring/ww_stroomstoring.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/sts_passage/ww_sts_passage.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/weersomstandigheden/ww_weersomstandigheden.dart';
export 'package:trdl_tool/screens/werkwijze_screens/incidenten/overige_incidenten/wissels_vrijmaken/ww_wissels_vrijmaken.dart';

/*ACHTERGROND INFORMATIE UITVOEREN PLAN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/ai_uitvoeren_plan_main.dart';

/*ACHTERGROND INFORMATIE BIJZONDERHEDEN RIJWEGEN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/ai_bijzonderheden_rijwegen_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_icb/ai_inzetten_icb.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_ari/ai_rijwegen_ari.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_planopbouw/ai_rijwegen_planopbouw.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_planscherm/ai_rijwegen_planscherm.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_trots/ai_rijwegen_trots.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_bedienscherm/ai_rijwegen_bedienscherm.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/uitvoeren_plan_basis/ai_uitvoeren_plan.dart';

/*ACHTERGROND INFORMATIE GEPLANDE WERKZAAMHEDEN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/ai_geplande_werkzaamheden_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/geplande_werkzaamheden_basis/ai_geplande_werkzaamheden.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/controleren_wbi/ai_controleren_wbi.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/fouten_wbi/ai_fouten_wbi.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/aanvang_werkzaamheden/ai_aanvang_werkzaamheden.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/toelaten_werktreinen/ai_toelaten_werktreinen.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/geplande_werkzaamheden/werkzones/ai_werkzones.dart';

/*ACHTERGROND INFORMATIE BIJZONDERHEDEN TREIN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_trein/ai_bijzonderheden_trein_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_trein/bijzonderheden_trein_basis/ai_bijzonderheden_trein.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_trein/vervoersregeling/ai_vervoersregeling.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_trein/onjuiste_detectie/ai_onjuiste_detectie.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/bijzonderheden_trein/bijzondere_aandacht/ai_bijzondere_aandacht.dart';

/*ACHTERGROND INFORMATIE COMMUNICATIE PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/communicatie/ai_communicatie_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/communicatie/mondelinge_communicatie/ai_mondelinge_communicatie.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/communicatie/communicatiemiddelen/ai_communicatiemiddelen.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/communicatie/communicatiesysteem/ai_communicatiesysteem.dart';
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/communicatie/ketenpartners/ai_ketenpartners.dart';

/*ACHTERGROND INFORMATIE NCBG PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/ncbg/ai_ncbg.dart';

/*ACHTERGROND INFORMATIE DIENSTOVERGAVE PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/uitvoeren_plan/dienstovergave/ai_dienstovergave.dart';

/*ACHTERGROND INFORMATIE AANPASSEN PLAN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/ai_aanpassen_plan_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/aanpassen_plan_basis/ai_aanpassen_plan.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/stappenplan_versperringen/ai_stappenplan_versperringen.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/orderacceptatie/ai_orderacceptatie.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/ongepland_werk/ai_ongepland_werk_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/ongepland_werk/ongepland_werk_infra/ai_ongepland_werk_infra.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/ongepland_werk/ongepland_werk_materieel/ai_ongepland_werk_materieel.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/ongepland_werk/infra_ter_beschikking/ai_infra_ter_beschikking.dart';
export 'package:trdl_tool/screens/achtergrond_screens/aanpassen_plan/vertragingen/ai_vertragingen.dart';

/*ACHTERGROND INFORMATIE INCIDENTEN PAGES*/
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/ai_incidenten_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/incidenten_basis/ai_incidenten_basis.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/mensen_dieren_voorwerpen/ai_derdendieren.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/ai_infra_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/beveiliging/ai_beveiliging_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/beveiliging/beveiliging_basis/ai_beveiliging_basis1.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/bovenleiding/ai_bovenleiding_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/kunstwerken/ai_kunstwerken_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/overwegen/ai_overwegen_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/spoor/ai_spoor_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/wissels/ai_wissels_main.dart';
export 'package:trdl_tool/screens/achtergrond_screens/incidenten/infra/sectie/ai_sectie_main.dart';

/*PROQUIZ PAGES*/
export 'package:trdl_tool/screens/proquiz_screens/proquiz_main.dart';
export 'package:trdl_tool/screens/proquiz_screens/quiz_screen.dart';

/*PROCHAT PAGES*/
export 'package:trdl_tool/screens/prochat_screens/prochat_main.dart';
export 'package:trdl_tool/screens/prochat_screens/chat_screen.dart';
