import '/all_imports.dart';

enum WhereToGoFromAIRijwegenARI {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_uitvoeren_plan_main,
  // ignore: constant_identifier_names
  ai_rijwegen_trots,
  // ignore: constant_identifier_names
  ai_bijzonderheden_rijwegen,
  // ignore: constant_identifier_names
  ai_rijwegen_planopbouw,
  // ignore: constant_identifier_names
  ai_rijwegen_planscherm,
  // ignore: constant_identifier_names
  ai_rijwegen_bedienscherm,
}

class AIRijwegenARI extends StatelessWidget {
  const AIRijwegenARI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.titleAI,
        ),
        actions: const <Widget>[
          AIRijwegenARINavigation(),
           HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: <TextCard>[
           TextCard(
                  widgetList: const <Widget>[
                    TitleText(
                      title:
                          'Rijwegen - basisinformatie: Automatische Rijweg Instelling (ARI)',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Procesleiding kent een mogelijkheid om rijwegen automatisch in te stellen: automatische rijweg instelling of de afkorting ARI. ARI is software dat op iedere TRDL werkplek draait. Je kunt ervoor kiezen om ARI aan of uit te zetten. Als de software 'vastloopt' kun je die vanaf een andere computer, de PBH++ (Post Beheer Systeem), uitzetten. Om de software daarna opnieuw op te starten, heb je hulp van buitenaf nodig.\n\nIn dit deel van de achtergrondinformatie vind je onder andere  hoe ARI werkt, welke voorwaarden ARI nodig heeft om rijwegen in te stellen en welke triggers ARI gebruikt.",
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/ariAchtergrond.png',
                    ),
                    SizedBoxH(),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Historie',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Voordat procesleiding werd geïntroduceerd werden rijwegen handmatig door de TRDL ingesteld. Bij grotere werkplekken was er vaak een assistent TRDL die hielp met het instellen van de rijwegen en soms ook de omroep verzorgde.\n\nToen procesleiding begin jaren '90 werd geïntroduceerd, werkte ARI nog niet perfect, maar in de loop van de jaren is ARI steeds slimmer geworden.",
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Wat is ARI',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'ARI is een programma dat draait op iedere TRDL werkplek. Het geeft opdrachten aan de beveiliging om rijwegen in te stellen, net zoals TRDL en assistent TRDL vroeger handmatig deden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Voorwaarden',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'ARI heeft een aantal voorwaarden nodig voordat hij de opdracht geeft om een rijweg in te stellen:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De rijweg moet beschikbaarheid zijn;\n\n- Het juiste treinnummer moet aanwezig zijn;\n\n- De insteltijd moet binnen het tijd- of wachtvenster liggen;',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als aan een van deze voorwaarden niet voldaan wordt, zal ARI geen opdracht geven om de rijweg in te stellen.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Beschikbaarheid',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Een van de voorwaarden voor ARI is dat de rijweg beschikbaar moet zijn. Is dit niet het geval dan spreken we over het definitief of tijdelijk niet beschikbaar zijn van de rijweg.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Tijdelijke onbeschikbaarheid:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Tijdelijke onbeschikbaarheid kan worden veroorzaakt door een ingestelde kruisende rijweg of een spoorbezetting. ARI ziet daarin geen onderscheid tussen een trein of sectiestoring.\n\n* Bij tijdelijke onbeschikbaarheid van de rijweg zal ARI  de rijweg oneindig in behandeling houden. De planregel blijft zeegroen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Definitieve onbeschikbaarheid:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Wisselstoringen of aangebrachte verhinderingen in de in te stellen rijweg veroorzaken een definitieve onbeschikbaarheid. Bij een definitieve onbeschikbaarheid wordt de betrokken planregel bij het aanbreken van de insteltijd direct uitgezet voor ARI. Je moet in actie komen.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'ARI tijd- en wachtvenster',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "In procesleiding zal ARI bij het aanbreken van de insteltijd 1 minuut actief blijven zoeken op een bepaalde plaats (trigger) of een treinnummer aanwezig is. De kleur van de planregel is dan groen. Indien ARI het treinnummer niet vindt, wordt ARI uitgezet.  De planregel is niet meer groen. Om de zoekperiode van ARI te verlengen zijn er 'vensters' ontwikkeld. Deze vensters worden wacht- en tijdvenster genoemd. Hieronder volgt de specifieke werking van deze vensters.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Tijdvenster',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Het ARI-tijdvenster kan door jou per PPLG ingesteld worden tot een maximum van 15 minuten. Deze 15 minuten gelden zowel plus als min rondom de insteltijd van een planregel. Dit houdt in dat ARI als het tijdvenster is ingesteld op 15, 15 minuten voor en 15 minuten na insteltijd blijft zoeken naar het juiste treinnummer.\n\nHet tijdvenster heeft twee functies:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Zorgen dat ARI het ingesteld aantal minuten plus/min de insteltijd aan blijft voor die planregel;\n\n- Op aankondigingssecties of TROTS posities het aantal minuten rondom de insteltijd zoekt naar de trein op TROTSnummer.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het tijdvenster geldt voor rijwegen vanaf de vrije baan met een D-, K- of A-activiteit.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Wachtvenster',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Het ARI-wachtvenster zorgt ervoor dat ARI een bepaald aantal minuten blijft zoeken naar het juiste treinnummer op een spoor. Er kan per PPLG gekozen worden voor een tijd van 0 en +15 minuten. De instelling van het wachtvenster kan niet door jou gekozen worden, maar wordt door de functioneel beheerder in de PBH++ ingesteld. De meeste wachtvensterinstellingen zijn op 3 minuten geconfigureerd. Het wachtvenster geldt voor rijwegen op een emplacement met een R- of V-activiteit.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/wachtvenster.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Waarom een wachtvenster',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Als er alleen een tijdvenster zou zijn, dan zouden treinen met een vertrek- of rangeerregel ver voor vertrektijd door ARI worden ingesteld. Het gevolg zou zijn dat infra onnodig lang zal worden vastgehouden. De trein mag immers niet voor vertrektijd vertrekken. Dit beperkt jou in je mogelijkheden van het spoorgebruik. Het ARI-wachtvenster is bedoeld voor rangeer- en vertrekactiviteiten op stations en emplacementen.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'ARI-triggers',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Er zijn meerder manieren om ARI te activeren, de zogenaamde triggers. Er is een onderscheid tussen triggers op de vrije baan en het emplacement.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Vrije baan',
                    ),
                    BodyText(
                      indents: 1,
                      text: '- Treinnummer verplaatsing:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Op de vrije baan zijn meerdere trots vensters aanwezig. In de PBH++ kan de functioneel beheerder aangeven bij welke vensterverplaatsing ARI actief wordt. Hierbij kan ook onderscheid worden gemaakt in de verschillende treintypen. Zo kunnen treinen die een hogere dienstregelingssnelheid hebben bijvoorbeeld een intercity in een ander venster worden getriggerd dan een trein met een lagere dienstregelingssnelheid bijvoorbeeld een goederentrein.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Aankondigingslas:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Op de vrije baan zijn aankondigingslassen. Als een trein over deze las rijdt, kan dit door ARI gebruikt worden als trigger om de rijweg in te stellen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Eindseinreservering:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          "* Als er tussen twee Primair ProcesLeidingsGebieden (PPLG's) onvoldoende trots-vensters zijn of, wanneer er maar enkele kilometers vrije baan is, kunnen we werken met eindseinreservering. Wanneer het uitrijsein van het PPLG 1 uit de stand stop komt, zal ARI bij PPLG 2 het inrijsein activeren.",
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/eindseinReservering.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'ARI aanzetten voor treinen die hun trigger zijn gepasseerd',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Als er planregels uitstaan voor ARI, terwijl de trein zich binnen het aankondigingsgebied bevindt, is het mogelijk om deze weer aan te zetten voor ARI. ARI zal deze planregel gewoon weer in behandeling nemen. In dit geval is de aanwezigheid van het treinnummer in het aankondigingsgebied voldoende om de rijweg in te stellen.',
                    ),
                  ],
                ),
           TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Kleuren planregels',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De planregels kunnen in verschillende kleuren getoond worden. De kleuren van de planregels hebben een betekenis in relatie tot de insteltijd en de werking van ARI. We onderscheiden 2 situaties: ARI aan en ARI uit.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/kleurenPlanregels.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Instelminuut',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelMinuut.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Als een planregel uitstaat voor ARI en de insteltijd is nog niet aangebroken, dan is de planregel wit;\n\n- Als de insteltijd is aangebroken wordt de planregel geel gedurende de instelminuut;\n\n- De planregel wordt rood nadat de instelminuut verstreken is.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Oranje planregel',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/oranjePlanregel.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als de instelling van een zeegroene planregel, waarvan minimaal 1 seinstap is ingesteld, wordt onderbroken dan zal deze planregel oranje kleuren. Dit kan gebeuren door:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De TRDL zelf (bijv. door herroepen);\n\n- Procesleiding (bijv. een categorie A-melding);\n\n- Een storing in procesleiding (bijv. uitval ARI)',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "De planregel is oranje gekleurd met het originele 'VAN' en 'NAAR' spoor. Je zult deze planregel dus altijd moeten aanpassen.\n\nHet is niet mogelijk om een oranje planregel in te stellen vanuit je planscherm zonder deze eerst te muteren. Als je het toch doet, krijg je een foutmelding:",
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/foutmeldingPlanregel.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Er zijn slechts 2 manieren om een oranje planregel uit te voeren:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De planregel wordt naar het mutatievenster overgebracht en na aanpassing teruggeplaatst in het plan.',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Afhankelijk van de insteltijd is het mogelijk de planregel weer aan ARI aan te bieden. Voordeel van deze werkwijze is dat de volgorde vanuit het plan wordt bewaakt. M.a.w. zolang deze planregel bovenaan in het plan staat zal ARI geen andere rijwegen instellen naar hetzelfde eindspoor.\n\n* Wordt een oranje planregel na ophogen van de insteltijd in het mutatievenster teruggeplaatst in het plan dan zullen alleen de zeegroene planregels naar hetzelfde eindspoor door ARI worden uitgezet waarvan nog geen enkele seinstap is ingesteld. Dit om ongewenste volgordewisselingen te voorkomen.\n\n* De planregels waarvan minimaal een seinstap is ingesteld naar hetzelfde eindspoor worden door ARI afgebroken en worden oranje getoond.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De planregel wordt met behulp van stel in voor aanpassing onder de knop rijweg naar het bedienvenster overgebracht en hier na aanpassing alsnog worden uitgevoerd.',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Nadeel van deze werkwijze is dat de planregel uit het plan verdwijnt en naar het bedienvenster wordt verplaatst en ARI andere rijwegen kan instellen naar een gezamenlijke eindspoor. Om dit te voorkomen is het uitzetten van ARI voor opvolgende planregels verstandig.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Voordelen oranje planregel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Je wordt erop gewezen dat van een planregel de rijweginstelling is afgebroken;\n\n- Je houdt overzicht in zijn plan, omdat er geen planregels uit het plan verdwijnen en spontaan naar het bedienscherm worden verplaatst;\n\n- De oranje planregels worden omdat zij in het plan blijven staan nog steeds meegenomen bij de bepaling van de volgorde naar een spoor, dus er vindt geen onbedoelde volgordewisseling plaats.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Rijden op zicht in ARI',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "ARI kan ook rijden op zicht (ROZ) rijwegen automatisch instellen. Omdat hier risico's aan zitten, zijn daar een aantal voorwaarden aan verbonden. Deze zijn vastgelegd in de PBH++.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Voorwaarden voor het aanzetten van ROZ in ARI',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'ARI kan ROZ-planregels instellen voor A- en R-activiteiten als voldaan is aan een aantal voorwaarden:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De planregel moet aangezet zijn voor ARI;\n\n- Er zijn geen openstaande klaarmeldingen, tijdelijke niet-beschikbaarheid (m.u.v. de laatste seinstap), enz.;\n\n- Het ROZ-tijdvenster is nog niet verstreken;\n\n- Bij oprijden naar ongecontroleerd gebied mag er geen sectie bezetting zijn tussen het rangeerdeel en daar waar de rijweg naar ongecontroleerd spoor leidt;\n\n- Bij combineren moet het NAAR-spoor bezet zijn door de trein(en) waarmee gecombineerd moet worden, en deze moeten voldoende lang stilstaan. Dit wordt gecontroleerd door te kijken of de sectiebezetting op het ROZ-spoor en vlak ervoor, ongewijzigd blijft gedurende de tijd die de functioneel beheerder heeft ingesteld. Indien nodig wacht ARI tot hieraan voldaan is.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De treinnummers die al aanwezig zijn moeten overeenkomen met de materieelrelatie uit het procesplanrijwegen.\n\nEen ROZ-planregel kan worden aangezet voor ARI als:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Het NAAR-spoor een spoor is dat door de functioneel beheerder als ROZ-spoor is opgegeven;\n\n- Het een planregel voor een A- of R-activiteit is;\n\n- De rijweg is bedoeld om naar ongecontroleerd gebied te rijden of om te combineren;\n\n- Bij combineren moeten alle aanvoerende treinen (rangeerbewegingen) in dezelfde richting aankomen en mag iedere trein (rangeerbeweging) slechts één keer voorkomen als aanvoerende activiteit in de materieelrelaties die voor de in te stellen planregel gelden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Als niet aan alle voorwaarden is voldaan stelt ARI een ROZ-rijweg niet in. Er verschijnt dan een pop-up venster met de volgende tekst:\n\nWaarschuwing - Instellen rijwegen - ARI stelt ROZ-planregel: 'planregel' niet in, omdat 'reden':",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Het ROZ-tijdvenster verstreken is;\n\n- Er zich een bezetting voordoet in de rijweg;\n\n- Er zich geen bezetting voordoet op het ROZ-spoor;\n\n- Er een verkeerd treinnummer op het ROZ-spoor aanwezig is;\n\n- De bijbehorende materieelrelatie en/of daarmee gerelateerde planregels gewijzigd zijn.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'ARI instelwijze',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'ARI stelt rijwegen in afhankelijk van de instelwijze. Dit betekent dat ARI een planregel die uit meerdere seinstappen bestaat in zijn geheel veilig kan zetten of seinstap voor seinstap. We hebben drie soorten: Integraal, gefaseerd en hoog groen.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelwijzeARI.png',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelwijzeIntegraal.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij een integrale rijweg is het VAN-spoor in de planregel oranje gekleurd.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Deadlock',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een deadlock is een situatie waarbij twee treinen tegenover elkaar staan en hinderen in de vervolgrijweg of elkaar opsluiten en hinderen in de vervolgrijweg. Een ongewenste situatie, waarbij één van de treinen altijd moet keren.\n\nDe situatie kan ontstaan, omdat ARI samengestelde rijwegen gefaseerd instelt. Om dit te voorkomen, zijn enkele controles ingebracht.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock1.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Deadlock: Door de lengte van de treinen worden zij als het ware 'opgesloten'.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Deadlock preventie',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'In procesleiding is de beschikbaarheidscontrole geoptimaliseerd om te voorkomen dat er door ARI een rijweg wordt ingesteld naar een bedienbare baan waar al een trein in de tegengestelde richting onderweg is.\n\nWanneer ARI een planregel in behandeling neemt, controleert ARI alle reeds in behandeling zijnde planregels op route en via sporen. Als ARI een deadlocksituatie signaleert, zet hij deze nieuw in behandeling te nemen planregel uit ARI. De planregel wordt rood en er wordt een categorie B melding weergegeven in het bedienscherm. De seinsymbolen in tegengestelde richting zullen oranje tonen.\n\nDe beschikbaarheidscontrole voorkomt dat ARI een rijweg instelt naar een bedienbare baan waar al een trein in tegengestelde richting onderweg is. Dit speelt met name over de PPLG-grenzen heen. Bij gedeelde planregels kan deadlockpreventie ook werken.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock2.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De rijweg voor trein 1 is ingesteld naar spoor 750. Trein 2 moet vertrekken naar spoor BA via spoor 750. ARI zal in verband met de deadlock preventie de planregel voor trein 2 uitzetten en een deadlock melding genereren.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Deadlocks en handmatige rijweginstelling',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor rijwegen die handmatig worden ingesteld in het planscherm en rijwegen die ingesteld worden in het bedienscherm zal geen deadlocktoets worden uitgevoerd. Deze toets zal je zelf moeten uitvoeren.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock3.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Deadlockpreventie en verhinderingen',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Deadlockpreventie herkent geen nieuwe deadlocksituaties die zijn ontstaan door het plaatsen van verhinderingen zoals in het voorbeeld hiernaast, waarbij wissel 3 in de links leidende stand is verhinderd.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock4.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Let op: Geen deadlock herkenning!',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Lange Kerende Treinen (LKT)',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Sommige treinen hebben een dusdanige lengte, dat keren op een spoor betekent dat ze zowel de A als de B zijde van dat betreffende spoor bezetten. Het systeem TROTS is hier niet op gebouwd. TROTS kan namelijk geen treinnummers omnummeren als een treinnummer op spoor A binnenkomt en op spoor B vertrekt. Om dit op te lossen is de functie 'Lange kerende treinen' toegepast in procesleiding.\n\nVoor het instellen van een rijweg zoekt ARI naar het TROTS-nummer op het vertrekspoor. LKT is een functionaliteit in Procesleiding die het mogelijk maakt voor ARI om het treinnummer te 'vinden' op een ander spoor dan het vertrekspoor aangegeven in het plan. Met deze functionaliteit kijkt ARI ook naar andere TROTS vensters binnen een spoorgroep. Voorwaarde is dat deze spoorgroep moet zijn aangemaakt in de PBH++.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'LKT-controles',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Voordat de rijweg wordt ingesteld voert ARI nog een aantal controles uit:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Tussen de kop van de trein en het vertreksein zijn in de vertrekrichting geen seinen (met dezelfde richting)\n\n- Tussen de kop van de trein en het vertreksein zijn er geen wissels;\n\n- De kop van de trein bevindt zich op een sectie zonder wissels;\n\n- Er geldt een stilstand criterium (15-999 sec).',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock5.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Een voorbeeld: trein 4419 komt binnen op spoor 704B en vertrekt van spoor 704A als 4420, dit in verband met de lengte van de trein. ARI zou in dit geval geen rijweg instellen, omdat op spoor 704A geen treinnummer gevonden wordt. Als in de PBH++ spoor 704A en 704B geconfigureerd is als spoorgroep vindt ARI het treinnummer wel.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Spoorbezettingsgrafiek',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          "Lange kerende treinen zijn zichtbaar in de spoorbezettingsgrafiek door 2 horizontale strepen tussen aankomst en vertrek. Dit is het gevolg van de invulling van het spoornummer onder de optie 't/m' van de planregel. Bij mutaties als gevolg van spoorwijzigingen op A/B sporen, moet deze voor de spoorbezettingsgrafiek ook worden aangepast.",
                    ),
                    SizedBoxH(),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Instelvoorschrift',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Een trein die gedeeltelijk, ten onrechte of opnieuw langs een perron tot stilstand komt, levert risico's op voor persoonlijke ongevallen. Een trein die stil komt te staan in een wisselstraat kost veel infracapaciteit. Daarnaast stelt ILT ook eisen ter voorkoming van het doorschieten van tot stilstand komende treinen voor kruisende en 'intakkende' sporen. Beide situaties worden voorkomen door het configureren van lokaal specifieke instelvoorschriften. Deze instelvoorschriften worden in de PBH++ door de functioneel beheerder in ARI vastgelegd.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Wat is een instelvoorschrift',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Een instelvoorschrift is een voorschrift waaraan ARI moet voldoen om een rijweg in te stellen. Met een instelvoorschrift wordt aangegeven dat een verzameling opeenvolgende seinstappen (enkelvoudige rijwegen) binnen een samengestelde rijweg integraal (in zijn geheel) moet worden ingesteld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Hoe worden instelvoorschriften geconfigureerd',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '- Een instelvoorschrift wordt gedefinieerd voor een bepaalde rijrichting. Het geldt alleen als de volgorde van sporen in het instelvoorschrift overeenkomt met de afrijdvolgorde van de sporen van de samengestelde rijweg;\n\n- Een instelvoorschrift geldt alleen als het gehele instelvoorschrift binnen de samengestelde rijweg ligt;\n\n- Alle instelvoorschriften die binnen de samengestelde rijweg liggen dienen gerespecteerd te worden;\n\n- Als er overlappende instelvoorschriften binnen de samengestelde rijweg liggen, dienen die behandeld te worden alsof het één instelvoorschrift betreft dat het hele gebied afdekt (er mag ten gevolge van het gefaseerd instellen dus nergens gestopt worden binnen dit gebied).\n\n- Als er instelvoorschriften zijn die aan elkaar grenzen, dienen die als afzonderlijke instelvoorschriften behandeld te worden (er mag ten gevolge van het gefaseerd instellen dus gestopt worden op de grens).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Voorbeelden:',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Planregel voor trein 1 van spoor 1A naar spoor DA.\n\nTrein 2 staat stil op spoor 22. Zonder instelvoorschrift zou rijweg uit de stand stop komen tot spoor 2b. Trein 1 komt dan tot stilstand langs perron spoor 2b. Dit is ongewenst! Om dat te voorkomen, moet er een instelvoorschrift komen van spoor 2b naar spoor 22.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift1.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Planregel voor trein 1 van spoor 1A naar spoor DA. Instelvoorschrift: 2b - DA. De planregel is in behandeling (zeegroen) echter de rijweg wordt niet ingesteld.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift2.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Inmiddels is trein 2 aangekomen op spoor DA. Nu kan er wel aan het instelvoorschrift worden voldaan en wordt een (integraal) deel van de gefaseerde rijweg ingesteld.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift3.png',
                    ),
                    SizedBoxH(),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'PBH++',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Een TRDL kan een aantal instellingen voor ARI op zijn werkplek wijzigen, bijvoorbeeld het aantal in te stellen seinstappen per planregel en het tijdvenster.\n\nDe overige instellingen worden door de functioneel beheerder van de post gedaan in PBH++ (post beheersysteem). Hier kunnen triggers, tijdvenster, seinstappen per PPLG, Lange Kerende Trein, instelvoorschriften en instellingen voor ABT worden aangepast.\n\nDe PBH++ kent meerdere inlogniveaus met bijbehorende autorisaties (van 'laag' naar 'hoog'):",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- TRDL - kan alle instellingen zien, maar niet muteren. Alleen ARI noodstop kan bediend worden op dit niveau;\n\n- OvD-V - kan alle instellingen zien, kan alleen WBI beheer en Planbeheer bedienen (én ARI noodstop);\n\n- FUB - kan alle instellingen zien én muteren;\n\n- Technisch beheer (CSD) - kan alle instellingen zien én muteren.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Per post zijn er verschillen mogelijk in:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Locatie PBH++;\n\n- Inlog en wachtwoord voor TRDL - deze zijn bekend bij de OvD-V en beschikbaar nabij de PBH++.',
                    ),
                  ],
                ),
            TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'ARI-noodstop',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "ARI is software die draait op iedere TRDL werkplek. Zoals iedere software kan ook ARI-software vastlopen, maar er kunnen ook situaties ontstaan waarbij het noodzakelijk wordt om ARI te stoppen. Denk hierbij aan uitval van de muis, uitval van het planscherm etc. In deze gevallen kun je in de PBH++ ARI-noodstop toepassen. ARI-noodstop pas je alleen toe in situaties waarbij je ARI niet om de 'normale' manier kunt uitzetten.\n\nAls ARI-noodstop wordt toegepast, wordt het programma gestopt en automatisch herstart. De planregels worden dan weer wit (ARI moet weer per PPLG worden aangezet) Er verschijnt een categorie B-melding.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Handelingen in de PBH++',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '- Log in met gebruikersnaam en wachtwoord voor de TRDL - zijn bekend bij de OvD-V;\n\n- Selecteer ARI Noodstop (bovenin rechts).',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Nu zie je de werkplekken van de post:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          "- Klik op het juiste werkpleknummer - het nummer van de werkplek vind je rechtsachter op het bureaublad van de te stoppen werkplek;\n\n- Klik op 'Stop ARI op werkplek'.",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je hebt nu ARI uitgezet voor de betreffende werkplek. Je kan nu zelf het moment kiezen om ARI weer aan te zetten op deze werkplek.\n\nMeld de storing aan bij het OBI.',
                    ),
                  ],
            ),
          ],
        ),
      ),
    ),);
  }
}

class AIRijwegenARINavigation extends StatelessWidget {
  const AIRijwegenARINavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIRijwegenARI>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIRijwegenARI result) async {
              if (result == WhereToGoFromAIRijwegenARI.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ww_uitvoeren_plan_main) {
                await Navigator.pushNamed(context, 'ww_uitvoeren_plan_main');
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ai_rijwegen_trots) {
                await Navigator.pushNamed(context, 'ai_rijwegen_trots');
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ai_bijzonderheden_rijwegen) {
                await Navigator.pushNamed(
                  context,
                  'ai_bijzonderheden_rijwegen',
                );
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ai_rijwegen_planopbouw) {
                await Navigator.pushNamed(context, 'ai_rijwegen_planopbouw');
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ai_rijwegen_planscherm) {
                await Navigator.pushNamed(context, 'ai_rijwegen_planscherm');
              } else if (result ==
                  WhereToGoFromAIRijwegenARI.ai_rijwegen_bedienscherm) {
                await Navigator.pushNamed(context, 'ai_rijwegen_bedienscherm');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIRijwegenARI>>[
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ww_uitvoeren_plan_main,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Uitvoeren Plan',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ai_rijwegen_trots,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen TROTS',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ai_bijzonderheden_rijwegen,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Bijzonderheden Rijwegen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ai_rijwegen_planopbouw,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Planopbouw',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ai_rijwegen_planscherm,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Planscherm',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenARI>(
                value: WhereToGoFromAIRijwegenARI.ai_rijwegen_bedienscherm,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Bedienscherm',
                ),
              ),
            ],
          );
  }
}