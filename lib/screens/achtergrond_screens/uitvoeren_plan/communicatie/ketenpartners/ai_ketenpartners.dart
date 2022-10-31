import '/all_imports.dart';

enum WhereToGoFromAIKetenpartners {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_mondelinge_communicatie,
}

class AIKetenpartners extends StatelessWidget {
  const AIKetenpartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.titleAI,
        ),
        actions: const <Widget>[
          AIKetenpartnersNavigation(),
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
                      title: 'Externe ketenpartners',
                    ),
                    SizedBoxH(),
                    SubTitleText(subtitle: 'Medewerker Reisinformatie'),
                    SizedBoxH(),
                    BoldText(indents: 0, boldtext: 'Automatische Omroep'),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De Automatische Omroep verwerkt en publiceert reisinformatie die afwijkt van het geplande. Deze afwijking wordt in het bronsysteem geconstateerd. Daarmee is het ten alle tijde van groot belang dat alle wijzigingen in de systemen worden doorgevoerd. Naast een omroepbericht wordt de reisinformatie zo ook juist in de borden en in de reisplanner app getoond.\n\nDe Automatische Omroep handelt de volgende wijzigingen zonder tussenkomst van een medewerker af:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Vertragingen;\n\n- Spoorwijzigingen;\n\n- Omleidingen;\n\n- Ritverkorting;\n\n- Ritverlenging;\n\n- Ritverlegging;\n\n- Extra trein;\n\n- Vervallen trein;\n\n- Stopgedrag wijzigingen.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Wanneer is telefonisch contact wel wenselijk?',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Is er tijdelijk sprake van meerdere en/of grote wijzigingen, zoals bijvoorbeeld een spoor dat enkele uren niet gebruikt kan worden, dan is, naast het bijwerken van het systeem, het wél wenselijk om telefonisch contact met de medewerker Reisinformatie op te nemen. Zo wordt de achtergrond van een structurele wijziging bekend bij de medewerker Reisinformatie. De spoorwijzigingen worden in dit voorbeeld nog steeds automatisch omgeroepen. Daarnaast kan de medewerker Reisinformatie de reiziger voorzien van deze extra achtergrondinformatie via de gewenste informatiekanalen.\n\nIn het geval van een onverwachte, en mogelijk lange onderbreking in de geplande treindienst is telefonisch contact tussen de TRDL en de medewerker Reisinformatie ook zeer wenselijk. Op het moment dat de TRDL een melding ontvangt van bijvoorbeeld een seinstoring of een aanrijding, waardoor zeker vertraging en/of uitval ontstaat, ontvangt de medewerker Reisinformatie deze informatie graag zo snel mogelijk. De voorinformatie waarmee een medewerker Reisinformatie de reiziger sneller kan informeren, biedt de reiziger meer handelingsperspectief, waardoor deze zijn/haar reis zo snel mogelijk kan aanpassen.\n\nTevens zoekt de medewerker Reisinformatie graag telefonisch contact met de TRDL als er bij een bekende onderbreking in de geplande treindienst nog geen oorzaakinformatie bekend is.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'Wanneer is telefonisch contact minder van belang?',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'In eenmalige en/of kleine wijzigingen is, naast het bijwerken van het systeem, het niet nodig om telefonisch contact met de medewerker Reisinformatie op te nemen. Dit wordt vanuit de bron automatisch afgehandeld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Uitzonderingen en waar NSR nu mee bezig is',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Informatie over het voor- of achteraan instappen wordt automatisch in de borden gepubliceerd. Hiervoor voert de medewerker Reisinformatie sinds kort dus geen handmatige acties meer voor uit. In de meeste situaties zijn voor- of achteraan instapadviezen volgens een planning, denk hierbij het standaard aftrappen van een treinstel na de spits. In deze situatie is er bewust voor gekozen dit niet in de omroep te benadrukken, omdat dit volgens plan is. Let op: dit wordt nog wel in de borden getoond.\n\nIn het geval dat het aftrappen van een treinstel kort voor vertrek én afwijkend van de geplande situatie pas bekend wordt, is het wel wenselijk de reiziger hier via de omroep op te attenderen. Als deze wijziging in het systeem is doorgevoerd, komt het voor- of achteraan instappen advies wel in de borden, maar nog niet automatisch in de omroep. Als de TRDL op de hoogte is van deze last minute treinstel aftrap, dan is het wenselijk dat deze telefonisch wordt gedeeld met de medewerker Reisinformatie.\n\nBinnen het IT-team van de omroep wordt eraan gewerkt om ook deze berichtgeving in de omroep zo snel mogelijk te automatiseren.',
                    ),
                  ],
                ),
          ],
        ),
      ),
    ),);
  }
}

class AIKetenpartnersNavigation extends StatelessWidget {
  const AIKetenpartnersNavigation({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIKetenpartners>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIKetenpartners result) async {
              if (result == WhereToGoFromAIKetenpartners.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIKetenpartners.ww_mondelinge_communicatie) {
                await Navigator.pushNamed(
                  context,
                  'ww_mondelinge_communicatie',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIKetenpartners>>[
              const PopupMenuItem<WhereToGoFromAIKetenpartners>(
                value: WhereToGoFromAIKetenpartners.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIKetenpartners>(
                value: WhereToGoFromAIKetenpartners.ww_mondelinge_communicatie,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Mondelinge Communicatie',
                ),
              ),
            ],
          );
  }
}