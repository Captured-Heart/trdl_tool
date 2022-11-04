import '/all_imports.dart';

enum WhereToGoFromAIRijwegenBedienscherm {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_rijwegen_planopbouw,
  // ignore: constant_identifier_names
  ai_rijwegen_planscherm,
  // ignore: constant_identifier_names
  ai_rijwegen_ari,
}

class AIRijwegenBedienscherm extends StatelessWidget {
  const AIRijwegenBedienscherm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIRijwegenBedienschermNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title:
                        'Rijwegen - basisinformatie: Rijweg instellen in het bedienscherm',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Instellen van rijwegen vanuit het bedienscherm',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik op 'Rijweg':",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Standaard is de vervolgoptie 'Spoor'. Spoorbenamingen zijn altijd te zien in het overzichtsscherm. Optie 'Sein' mag ook, alleen zal je mogelijk eerst moeten inzoomen op of in het gebied om achter de seinnummers te komen.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_bedienscherm/rijwegen_bedienscherm1.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik op het benodige 'PPLG':",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Een schuifbalk is zichtbaar als niet alle PPLG's van de werkplek in het venster passen. (Als de sporen of de nummers van de seinen slechts één keer in alle PPLG's voorkomt, hoeft het PPLG niet te worden aangegeven.)",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik op de 'soort rijweg' die je wil instellen:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "- N (Normaal). Het beginsein van de rijweg wordt na de opdracht uit de stand stop gestuurd. Een rijweg met seinbediening 'Normaal' wordt opgeheven als de trein de rijweg heeft afgereden;\n\n- A (Automatisch). Voor het uit de stand 'Stop' sturen van het beginsein geldt:",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "* Als het beginsein van de rijweg een inrijsein is, wordt het sein gestuurd als de naderingssectie bezet is of bezet raakt;\n\n* Als het beginsein van de rijweg een eindsein is van een voorafgaande rijweg, wordt het sein gestuurd als ook die rijweg is ingesteld. Een rijweg met seinbediening 'Automatisch' blijft ingesteld als de trein de rijweg heeft afgereden.",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- ROZ (Rijden Op Zicht). Bij het instellen van een rijweg met ROZ is er geen controle op spoorbezetting;\n\n- STS (StopTonend Sein). De achtergrondinformatie geeft hier verder geen informatie over;\n\n- W (Werk). De achtergrondinformatie geeft hier verder geen informatie over;\n\n- NDM (Niet Detecterend Materieel). De achtergrondinfomatie geeft hier verder geen informatie over.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "D.m.v. 'Dwang':",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Kun je een alternatieve route opgeven om van het begin- naar het eindpunt van de rijweg te komen. Klik op de functieknop om een overzicht van alle mogelijke dwangrijwegen voor de door jou gekozen rijweg te bekijken. Deze dwangrijwegen komen overeen met het overzich in het planscherm.\n\nOok in het bedienscherm kun je enkelvoudige of samengestelde rijwegen invoeren. Mocht je een alternatieve rijweg niet kunnen vinden bij de dwangroutes, deel dan de rijweg op. Mogelijk heb je bij het enkelvoudige deel de gezochte optie wel. Bij route 0, moet je zelf vooraf ervoor zorgen dat de wissels in de juiste stand liggen. Route 0 werkt alleen bij een enkelvoudige rijweg.\n\nTip: Als je zeker wilt weten hoe een bepaalde dwangrijweg verloopt, kun je gebruik maken van de knop 'Preview Rijweg'. De gekozen route wordt oranje getoond op de overzicht- en deelsignalering. Dit opvallend tonen eindigt na enige tijd en kan handmatig worden beëindigd door hernieuwd aanklikken van de knop.\n\nN.B.: Aanklikken van de 'Preview rijweg'-knop voor een nieuw geselecteerde route beëindigt eerst een nog actieve preview van een eerder geselecteerde route, vóór de nieuw geselecteerde route opvallend wordt getoond.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_bedienscherm/rijwegen_bedienscherm2.png',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_bedienscherm/rijwegen_bedienscherm3.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Onder 'S' (Stop) / 'D' (Door):",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'worden invulvlakken actief indien nodig. Voor een rijweginstelling vanaf een sein waarachter overwegen met AKI/AHOB/overpad liggen, moet - waar gevraagd - per overweg worden opgegeven of het om een stop- of doorrijdende trein gaat (elke trein heeft zijn eigen set van stop/door standen).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik indien nodig op 'DT' (DieselTractie).",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Als er op een spoor geen bovenleiding is en de trein waarvoor je de rijweg wilt instellen heeft dieseltractie, dan selecteer je 'DT'. Wordt dit vergeten dan zal de instelling mislukken.\n\nN.B.: Check altijd vooraf de tractie van de trein! Het systeem controleert niet of de trein wel geschikt is om op spoor zonder bovenleiding te rijden.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik indien nodig op 'G' (Goederen criterium).",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Het inrijsein van de tunnel/brug/fly-over (en andere situaties waar L- en H-seinen staan) komt pas uit de stand 'Stop' als alle seinen tot aan het uitrijsein uit de stand 'Stop' zijn gekomen. De volledige rijweg kan in een keer worden afgemaakt. Noodzakelijk voor een goederentrein om een tegen een helling op te komen.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Klik indien nodig op 'E' (Goederen criterium).",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Wanneer een sein is verhinderd met VHR-E, kan er een rijweg over worden ingesteld als er op 'E' wordt geklikt. Wordt dit vergeten dan zal de instelling mislukken.\n\nN.B.: 'E' is niet mogelijk in combinatie met seinbediening 'A'.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Let op: je hebt die verhindering voor rijweginstelling niet voor niets geplaatst > wat moet er eerst gebeuren?',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Kies 'Voer in' of 'Buffer'. Je kunt nu de planregel direct laten uitvoeren door Procesleiding met 'Voer in', of in de 'Buffer' zetten als je deze op een later tijdstip nodig hebt.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIRijwegenBedienschermNavigation extends StatelessWidget {
  const AIRijwegenBedienschermNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIRijwegenBedienscherm>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIRijwegenBedienscherm result) async {
        if (result == WhereToGoFromAIRijwegenBedienscherm.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_planopbouw) {
          await Navigator.pushNamed(context, 'ai_rijwegen_planopbouw');
        } else if (result ==
            WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_planscherm) {
          await Navigator.pushNamed(context, 'ai_rijwegen_planscherm');
        } else if (result ==
            WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_ari) {
          await Navigator.pushNamed(context, 'ai_rijwegen_ari');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIRijwegenBedienscherm>>[
        const PopupMenuItem<WhereToGoFromAIRijwegenBedienscherm>(
          value: WhereToGoFromAIRijwegenBedienscherm.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIRijwegenBedienscherm>(
          value: WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_planopbouw,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Rijwegen Planopbouw',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIRijwegenBedienscherm>(
          value: WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_planscherm,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Rijwegen Planscherm',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIRijwegenBedienscherm>(
          value: WhereToGoFromAIRijwegenBedienscherm.ai_rijwegen_ari,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Rijwegen ARI',
          ),
        ),
      ],
    );
  }
}