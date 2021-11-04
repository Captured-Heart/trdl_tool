import 'package:trdl_tool/all_imports.dart';

class WerkzonesAchtergrond extends StatelessWidget {
  const WerkzonesAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //WERKZONE CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Werkzones',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werken met werkzones',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Op sommige baanvakken en emplacementen in Nederland voert men werkzaamheden uit binnen een vaste werkzone (werkzones). Dit zijn een soort vrijgavegebieden waarbinnen gewerkt wordt. Dus altijd met vaste veiligheidsmaatregelen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Werkzones zijn ingebouwd in de beveiliging en in Post 21 en bestaan uit een geheel aantal (Post 21) secties. Werkzones zijn bedoeld als vervanging van de kortsluitlans. Er zijn werkzones op een emplacement en werkzones op de vrije baan. Bediende vrije baan wordt beschouwd als een emplacement.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een emplacement werkzone bevat geen (onbediend) vrije baan spoor. Een emplacementswerkzone is maximaal even groot als het gebied dat door een beveiligingssysteem wordt beveiligd. Een vrije baan werkzone bevat minimaal een onbediend vrije baan spoor en kan delen van het emplacement.​​​​​​​',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //WERKZONESCHAKELAAR CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werkzoneschakelaar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De bediening werkt volgens een geven-nemen principe waarbij de treindienstleider de werkzone via Post 21 geeft en de LWB de werkzone neemt door de schakelaar te draaien. Deze volgorde wordt door het systeem afgedwongen. Het is daardoor niet mogelijk een werkzone “voortijdig” te nemen of “voortijdig” terug te nemen. Indien de LWB voortijdig aan de werkzoneschakelaar heeft gedraaid, dan zal het systeem de geef-opdracht afwijzen. Deze situatie wordt uitsluitend gemeld als de geef-opdracht wordt afgewezen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Als je de werkzone geeft, wordt door Post 21 gecontroleerd op rijwegen leidend naar de werkzone. Als die er niet zijn, wordt de geef-opdracht uitgevoerd.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Signalering LWB CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Signalering voor LWB',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De werkzoneschakelaars en indicatielampjes zijn gemonteerd in een werkzoneschakelaarkast die in de regel aangebracht is aan de buitenzijde van een relaishuis of op een frame in de nabijheid daarvan. De kast is voorzien van een deur met slot en is alleen te bedienen met het juiste type sleutel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Iedere kast bevat acht werkzoneschakelaars op een rij. Behalve de werkzoneschakelaars en de indicatielampjes bevinden zich in de kast ook verlichting en een Overzicht werkzoneschakelaarsblad (OWZS-blad).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Als de LWB de werkzone neemt, gaat het witte indicatielampje bij de schakelaar branden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Om de werkzoneschakelaar te kunnen gebruiken, moet de LWB beschikken over:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '- Sleutel van de werkzoneschakelaarkast(en);',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '- Sleutel (van het juiste type) voor de werkzoneschakelaars. Er is een type sleutel voor alle werkzoneschakelaars.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Handheld Terminal',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De Handheld Terminal heeft via een GSM-R telefoon verbinding met het centrale Bev21 beveiligingssysteem. De communicatie met het Bev21 systeem is beveiligd (op eenzelfde manier als de communicatie tussen trein en Bev21 beveiligd is). De HHT fungeert slechts als doorgeefluik voor de invoer van opdrachten en de weergave van statussen; alle veiligheid gerelateerde toestanden worden uitsluitend in het centrale Bev21 systeem bewaard.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De HHT is voorzien van een scherm, een touchscreen, meestal gebruikt voor de invoer van opdrachten, en een toetsenbord, vooral voor de invoer van werkzone-id\'s.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De menustructuur is zo eenvoudig mogelijk gehouden, de gebruiker wordt door middel van een aantal schermen door de opdrachten geleid. Het hoofdmenu toont de volgende mogelijkheden:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '- Overzicht van de werkzones die de gebruiker in \'eigendom\' heeft en de blokkeringen die hij aangebracht heeft;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '- Opdrachten op een werkzone: nemen/teruggeven, blokkeren/deblokkeren, status opvragen, en eigendom overdragen/accepteren;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '- Opdrachten op een wissel: blokkeren/deblokkeren, opvragen toestand en bedienen van het wissel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneSchakelaarkast.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/handheldTerminal.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Treindienstleiding Signalering CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Signalering voor Treindienstleider',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Je kunt de toestand van de werkzone aflezen aan de weergave van de werkzone-code en aan de weergave van de inliggende elementen. Dit is weergegeven in de onderstaande tabel en de screenshots eronder:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneStatusTabel.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneNormaal.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Normaal - In dienst',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneGegeven.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Gegeven - Beschikbaar',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneGenomen.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Genomen - Buiten dienst',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneGestoord.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Gestoord',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzonePreview.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Preview',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzoneVerhinderd.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Verhinderd',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
