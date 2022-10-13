import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAINcbg {
  home_screen,
  ww_ncbg,
}

class AINcbg extends StatelessWidget {
  const AINcbg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAINcbg>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAINcbg result) {
              if (result == WhereToGoFromAINcbg.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromAINcbg.ww_ncbg) {
                Navigator.pushNamed(context, 'ww_ncbg');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAINcbg>>[
              const PopupMenuItem<WhereToGoFromAINcbg>(
                value: WhereToGoFromAINcbg.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAINcbg>(
                value: WhereToGoFromAINcbg.ww_ncbg,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW NCBG',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(
                      title: 'NCBG - Niet Centraal Bediend Gebied',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Dit is een gebied waar de bediening van infra elementen niet of slechts gedeeltelijk middels bedieningsapparatuur kan plaatsvinden. Toestemming tot het gebruik van infrastructuur wordt uitsluitend mondeling gegeven.\n\nHet gaat hierbij om:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Emplacementen zonder beveiliging;\n\n- Delen van emplacementen zonder beveiliging met minimaal 1 wissel;\n\n - Centraal Telecom Blokstelsel (CTB) baanvakken;\n\n- Baanvakken zonder beveiliging.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #1*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle:
                          'Het ter beschikking stellen van infracapaciteit',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Algemeen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je stelt infracapaciteit ter beschikking volgens het actuele plan. Je wijkt hiervan af:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Ter voorkoming van gevaar;\n\n- Als de infra gebruiker hierom verzoekt en dit mogelijk is;\n\n- Voor bijsturing om het actuele plan uitvoerbaar te houden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Sturingsniveau en uitzonderingen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Binnen een NCBG kent men in beginsel twee verschillende sturingsniveaus, te weten:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Sturing op rijwegniveau;\n\n- Sturing op TijdRuimte-slotniveau.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Uitzonderingen hierop staan vermeld in de plaatselijke regelgeving.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Wisselen van sturingniveau',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor het overgaan van sturing op TijdRuimte-slotniveau naar sturing op rijwegniveau informeer je de in het TijdRuimte-slot aanwezige infra gebruiker dat vanaf nu per beweging toestemming van jou nodig is. Je registreert de spoorbezetting en bijzonderheden.\n\nVoor het overgaan van sturing op rijwegniveau naar sturing op TijdRuimte-slotniveau informeer je de dan in het TijdRuimte-slot aanwezige infragebruiker dat vanaf nu per beweging geen toestemming van jou nodig is.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Weggeven TijdRuimte-slot',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je mag een TijdRuimte-slot weggeven aan een infragebruiker. Wanneer er een storing is in het weg te geven TijdRuimte-slot geef je een aanwijzing af voor de gehele looptijd van het TijdRuimte-slot. Wanneer er werkzaamheden plaats vinden binnen de grenzen van het TijdRuimte-slot, mag het TijdRuimte-slot worden weggegeven na overleg met de infragebruiker.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Overgang CBG - NCBG',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een deadlock-situatie is in de planning uitgesloten. Je kunt zonder overleg met de TRDL CBG een trein/rangeerdeel van een NCBG in de richting van het overgave spoor laten rijden als dit volgens planning gebeurt. De TRDL CBG mag zonder overleg met jou een trein van het centraal bediende gebied naar het overgavespoor laten rijden als dit volgens planning gebeurt. Bij afwijking van het plan moet de overgang afgestemd worden tussen jou en de TRDL CBG.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'Rijwegen naar niet door ProRail beheerde sporen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je geeft toestemming tot de grens tussen door ProRail beheerde sporen en niet door ProRail beheerde sporen. De infragebruiker rijdt vervolgens op eigen verantwoordelijkheid en inzicht het niet door ProRail beheerde spoor op. Je spreekt met de MCN af dat hij de ProRailsporen vrij meldt zodra hij in zijn geheel is aangekomen op de niet door ProRail beheerde sporen. Als de infragebruikers vanuit niet door ProRail beheerde sporen naar wel door ProRail beheerde sporen wil rijden, dient eerst toestemming van de TRDL NCBG te zijn verkregen.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Overleg met TRDL',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wijzigingen in het planmatig gebruik van TijdRuimte-slot of rijwegen en vertraging/vervroeging/uitlopen van werkzaamheden die gevolgen hebben voor knooppuntprocessen van het aangrenzende centraal bediend gebied geef je door aan de TRDL van het aangrenzende centraal bediende gebied. Je overlegt met deze TRDL over de gevolgen van de vertraging/vervroeging.\n\nJe bespreekt met de TRDL van het aangrenzende centraal bediende gebied de mogelijke aanpassingen/wijzingen in benutting van de infracapaciteit op het centraal en niet-centraal bediende van het emplacement.\n\nAls de TRDL bijstuurt, gaat dit in overleg met de infragebruikers.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Communicatie',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je ontvangt orderaanvragen van de infragebruiker. Bij lokale en bovenlokale orderaanvragen waarbij extra capaciteit gevraagd wordt in de vorm van een TijdRuimte-slot, overlegt de (buur)TRDL CBG met jou over de benuttingstijd en het tijdstip waarop de trein mag oprijden tot het sein dat toegang geeft tot het TijdRuimte-slot.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Registratie',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De benutting en alle wijzigingen in die benutting van het gebruik van het NCBG-gebied worden door jou geregistreerd. Registratie wordt gedaan op het sturingsniveau en op spoorbezetting.\n\nAls een TijdRuimte-slot is toegekend aan een infragebruiker vindt registratie plaats op het moment dat de infragebruiker het TijdRuimte-slot ingaat. Het volgende registratiemoment is wanneer de infragebruiker het Tijdruimte-slot weer verlaat. Op dat moment wordt de actuele spoorbezetting geregistreerd en eventuele bijzonderheden aan de infra (buiten dienst, storingen). Bij het terugkrijgen van een TijdRuimte-slot van een infragebruiker benoem je het exacte tijdstip van overdracht.\n\nAls gestuurd wordt op rijwegniveau registreer je voorafgaand aan de toestemming voor de lokale orderaanvraag de \'van - via - naar\' sporen. Je registreert direct na de uitvoering van de lokale orderaanvraag de actuele spoorbezetting. Wanneer een infragebruiker een specifieke route wenst, dan vraagt deze bij jou die aan middels een lokale orderaanvraag. Je kan aangeven (als gevolg van eerdere registratie) of de gewenste route vrij en bruikbaar is. Bijzonderheden aan de infra worden geregistreerd op spoorniveau in TRON.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Ingekort spoor',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer je de melding hebt ontvangen dat een spoor is ingekort met een rode vlag/rode lamp of een afsluitbord licht je de MCN in.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Bezet spoor',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer een spoor bezet is, geef je de infracapaciteit pas vrij nadat je de MCN hebt ingelicht en je de zekerheid hebt dat:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Er geen andere beweging op het spoor plaatsvindt;\n\n- De gemelde werkzaamheden aan voertuigen op het spoor gereed zijn.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Vertragingen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je informeert de buurTRDL over vertragingen. Mogelijke oorzaken van de vertraging:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Uitlopen activiteiten in TijdRuimte-slot;\n\n- Trein defect binnen het TijdRuimte-slot;\n\n- Trein kan tijdelijk niet verder door storing/stremming;\n\n- Trein/rangeerdeel waarvoor tijdelijk geen personeel/materieel aanwezig is.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #2*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'TRON',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'TRON staat voor \'Treindienstleiding op NCBG\'. TRON-webapplicatie heeft tot doel beter te kunnen registreren. TRON-webapplicatie is ook in staat deze registraties te visualiseren. Er verandert niets in de werkwijze van een TRDL. Alleen de manier van registreren wijkt sterk af van de gangbare hulpmiddelen.\n\nTRDL werken op dit moment met TRON om treinbewegingen en spoorbezetting te registreren in een NCBG. TRON is een extern programma (net zoals LOA-online).\n\nIn de toekomst zal TRON vervangen worden door een registratiesysteem dat geïntegreerd is met procesleiding. (Zoals SBG++ en TRR) Dit geïntegreerde systeem heet \'Feniks\'.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'TRON opstarten',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Om van TRON-webapplicatie gebruik te kunnen maken, moet je je eerst aanmelden.\n\nNa opstarten TRON-webapplicatie dien je eerst een locatie te kiezen. Na het kiezen van de locatie komen automatisch de mogelijke functies beschikbaar. Na kiezen van een functie komen automatisch de mogelijke gebruikers beschikbaar.\n\nKies een gebruikersnaam, voer het bijbehorende wachtwoord in en druk \'Enter\' of \'Return\' of klik op de knop \'Registreer\'.\n\nNa aanmelding verschijnt het venster met alle benodigde onderdelen om voor één of meerdere NCBG te kunnen registreren. Beheer je als TRDL meerdere NCBG\'s, kunnen deze in één functie worden samengevoegd. Middels de keuzelijst achter \'Gebieden:\' kun je snel wisselen tussen registratie/visualisatie van verschillende NCBG. Hebben twee NCBG raakvlakken met elkaar, zullen op deze raakvlakken de registraties/beeld gesynchroniseerd worden. Dit geldt ook als een NCBG in één of meer configuraties is opgedeeld.\n\nN.B.: In het aanmeldvenster is een extra optie beschikbaar gekomen om direct na aanmelden een intro van enkele minuten te kunnen zien (en horen). Enkel de intro starten kan middels de knop \'Intro\' linksonder op het aanmeldingsscherm. Wil je, terwijl je aangemeld bent, de intro (nogmaals) zien (en horen), toets dan in het formulierveld van \'Bediening\' de code SWA en druk de ENTER-toets, en de intro wordt (opnieuw) afgespeeld.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #3*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'TRON-webapplicatie na aanmelding',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_applicatie1.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het venster is in meerdere secties te verdelen, te weten:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '1. Historie',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Deze knop opent een nieuw venster waarin de laatste 250 loggingregels of maximaal 12 maanden aan loggingregels worden getoond.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '2. Bediening',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Van hieruit worden alle opdrachten uitgevoerd en verwerkt. Ook alle meldingen verschijnen binnen deze (zie \'Opdracht uitgevoerd\' in lichtblauwe balk).',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '3. Informatie',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '- Knop \'Help\' geeft een beknopte informatie over TRON en andere/overige informatie;\n\n- Knop \'Ged. bewegingen / TRS\'en\' (Tijd Ruimte Slot);\n\n- Knop \'Mijn wachtwoord wijzigen\' - indien toegestaan kan hier het eigen wachtwoord gewijzigd worden;\n\n- Knop \'Plangegevens importeren\' - Het installeren van een rangeerplan hier gestart worden;\n\n- Knop \'Sein-/Wisseladmin\' - Deze knop is alleen zichtbaar indien het een registratie voor een PPLG van een uitwijksituatie fase 3 betreft. Hiermee kunnen de statussen van seinen en standen van wissels geadministreerd worden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '4. Knop \'BDBG\' (Buiten Dienst/Buiten Gebruik)',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Geeft een nieuw venster met alle binnen getoonde gebied(en) aanwezige BDBG\'s met eventueel hun omschrijvingen weer. Hier kunnen BDBG-omschrijvingen gewijzigd worden en kunnen BDBG-statussen verwijderd worden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '5. Keuzelijst \'NCBG/Gebied\'',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Een aangemelde functie kan uit meerdere NCBG\'s bestaan. Kies hier het NCBG waar je in wilt registreren.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '6. Keuzelijst \'Bij einde TRS, omschr.\'',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Het gedrag na uitvoeren TRS kan per NCBG ingesteld worden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '7. Keuzelijst \'Tekengrootte visualisatie\'',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Hiermee kan de tekengrootte in het visualisatievenster beïnvloed worden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '8. Knop \'Status\'',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Veilig stellen en terug plaatsen van dynamische data. Te gebruiken bij geplande onbeschikbaarheid van TRON (overzicht afdrukken) en bij configuratiewijzigingen (om na plaatsen nieuwe configuratie de dynamische date te kunnen herstellen).',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '9. Knop \'Vrijmaken\'',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Het weer beschikbaar krijgen van de gebiedsconfiguratie bij foutieve afhandeling beweging of TRS door applicatiecode op de server.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '10. Visualisatievenster',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          'Van uit dit visualisatievenster kunnen alle opdrachten gegenereerd worden naar \'Bediening\'. Alle uitgevoerde opdrachten worden in visualisatievenster weergegeven.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #4*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Seinen specifiek voor NCBG',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen1.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'De door het getal aangegeven snelheid wordt niet overschreden, totdat:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De voorkant van de trein de overweg is gepasseerd, of;\n\n- De gehele trein de weegbrug is gepasseerd.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen2.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Stoppen voor het bord en de opdracht, vermeld op het onderbord, uitvoeren. Indien geen opdracht wordt vermeld, mag na het stoppen verder worden gereden.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen3.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'De opdracht vermeld op het onderbord uitvoeren alvorens het bord voorbij te rijden. Dit bord wordt onder meer toegepast op locaties waarover wegverkeer plaatsvindt en de MCN een overweg moet bedienen.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen4.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Stoppen vóór het bord. Na contact met en toestemming van de op het onderbord vermelde functionaris mag verder worden gereden. Indien het onderbord meerdere opdrachten vermeldt deze uitvoeren alvorens het bord voorbij te rijden.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen5.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Stoppen voor het bord, tenzij de opdracht, vermeld op het onderbord, is uitgevoerd.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen6.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Aanduiding van de grens van het gebied waar gerangeerd wordt. Geldt alleen voor bestuurders van treinen waarmee gerangeerd wordt.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen7.png',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Stoppen voor het sein.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen8.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Voorbijrijden toegestaan met een zodanige snelheid, die niet hoger is dan 40 km/u, om op elke plaats achter dit sein te kunnen stoppen i.v.m. een mogelijke belemmering dan wel het ontbreken van de zekerheid dat de inrichtingen, gelegen tussen dit sein en het eerstvolgende lichtsein, goed functioneren.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen9.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Niet tegen het spoorvoertuig rangeren of afstoten.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen10.png',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Aanduiding van de stand van een wissel:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Linksleidend, en;',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Rechtsleidend.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen11.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Berijden van de weegbrug toegestaan met de voor die weegbrug geldende snelheid (aangegeven door een bord).',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen12.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Berijden van de weegbrug toegestaan met de plaatselijke snelheid.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/TRON_seinen13.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Aanduiding van het begin van een niet door seinen beveiligd gebied.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #5*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Kijfhoek',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen1.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Rijden over de rangeerheuvel naar de verdeelsporen toegestaan.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen2.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Opduwen van de te heuvelen spoorvoertuigen toegestaan. Niet toegestaan met de locomotief het sein voorbij te rijden.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen3.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Voorbijrijden van het sein alleen toegestaan na toestemming van de treindienstleider.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen4.png',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Rangeren toegestaan.​​​​​​',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen5.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Aanduiding van de afstand tussen het voorste spoorvoertuig en het einde van het spoor die minder dan 200m en meer dan 50m bedraagt.​​​​​​',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Kijfhoek_seinen6.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Aanduiding van de afstand tussen het voorste spoorvoertuig en het einde van het spoor die minder dan 50m bedraagt.​​​​​​',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #6*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'CTB baanvakken',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/CTB_seinen1.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Snelheid zodanig begrenzen om voor de aangegeven overweg(en) te kunnen stoppen.​​​​​​',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/CTB_seinen2.png',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Berijden van de overweg(en) toegestaan.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/CTB_seinen3.png',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Stoppen voor de overweg(en).',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/CTB_seinen4.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Stoppen voor het sein, tenzij de TRDL toestemming heeft gegeven om het sein voorbij te rijden.​​​​​​',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #7*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Amersfoort',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Amersfoort_seinen1.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Niet toegestaan spoorvoertuigen naar of over de heuvel te duwen.​​​​​​',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Amersfoort_seinen2.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Duwen van spoorvoertuigen naar of over de heuvel toegestaan.',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #8*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Rangeerseinen',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Rangeer_seinen1.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Rangeren staken en de spoorvoertuigen vrij opstellen van de andere sporen. Geldt alleen voor de aangegeven sporen.​​​​​​',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Rangeer_seinen2.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Rangeren toegestaan na ontvangst van de rangeeropdracht. Geldt alleen voor de aangegeven sporen.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Rangeer_seinen3.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Stoppen voor het sein. Geldt alleen voor het spoor waarnaar de pijl wijst of voor de sporen waarnaar de pijlen wijzen.',
                    ),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/ncbg/Rangeer_seinen4.png',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Voorbijrijden toegestaan na ontvangst van de rangeeropdracht.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
