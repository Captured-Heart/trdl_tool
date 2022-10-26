import '/all_imports.dart';

enum WhereToGoFromAIOrderacceptatie {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_orderacceptatie,
}

class AIOrderacceptatie extends StatelessWidget {
  const AIOrderacceptatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIOrderacceptatie>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIOrderacceptatie result) async {
              if (result == WhereToGoFromAIOrderacceptatie.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIOrderacceptatie.ww_orderacceptatie) {
                await Navigator.pushNamed(context, 'ww_orderacceptatie');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIOrderacceptatie>>[
              const PopupMenuItem<WhereToGoFromAIOrderacceptatie>(
                value: WhereToGoFromAIOrderacceptatie.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIOrderacceptatie>(
                value: WhereToGoFromAIOrderacceptatie.ww_orderacceptatie,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Orderacceptatie',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*CARD #1*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Orderacceptatie',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Orderaanvragen',
                    ),
                    BodyText(
                      indents: 0,
                      text: '''
Wanneer onze klanten iets willen wijzigen in de vooraf bepaalde capaciteitstoedeling of iets extra's willen doen zij dat middels een orderaanvraag. Reden kan zijn:''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '''
- Opheffen, wijzigen of inleggen van trein- en rangeerbewegingen;\n\n- Verzoeken om railinfracapaciteitsonttrekking voor werkzaamheden aan de infra of materieel;\n\n- Materieelwisselingen.''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: '''
We kennen twee soorten orderaanvragen, lokaal en bovenlokaal.''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: '''
N.B.: In alle fasen van capaciteitsverdeling en -planning gelden de plannormen. Deze normen gelden ook voor het plannen van treinen en rangeerbewegingen in de fase van verkeersleiding. Voor bijsturing gelden deze normen niet.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #2*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Lokale orderaanvraag',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: '''
Lokale orderaanvragen gaan rechtstreeks naar jou en worden ingediend middels LOA Online. Indien dit systeem gestoord is (of nog niet aanwezig), dan komt de aanvraag via een formulier Lokale Orderaanvragen of per telefoon.\n\nEen LOA moet in ieder geval de volgende informatie bevatten:''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          "- Trein-/rangeernummer;\n\n- Plan-/vertrektijd;\n\n- 'Van' spoor;\n\n- 'Via' sporen (indien van toepassing);\n\n- 'Naar' spoor;\n\n- Materieelrelatie;\n\n- Materieel- of tractiesoort;\n\n- Wel/Geen afwijken/beperkingen aan materieel gerelateerd aan infragebruik.",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: """
De LOA moet bij voorkeur 15 minuten voor uitvoering worden ingediend, zodat je het plan tijdig kunt aanpassen en alle betrokkenen kunt informeren.\n\nDe afhandeling van lokale orderaanvragen voor goederenvervoer wijkt af van die van reizigersvervoer, tot de implementatie van LOA Online en de introductie van de maatregel 'veilig rangeren' bij goederenvervoer.""",
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/orderacceptatie/lokaleOrderaanvraag.png',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*CARD #3*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Afhandelen LOA reizigersvervoer',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '''Alleen geautoriseerde aanvragers van reizigersvervoerders mogen lokale orders indienen, dit doen ze via LOA Online en slechts bij uitzondering telefonisch. Je handelt LOA's zo snel mogelijk af. LOA's die meer dan 60 minuten voor uitvoering worden ingediend neem je binnen 20 minuten in behandeling. Voor het beoordelen van LOA's toets je de aangevraagde rangeerrijweg in SBG++.  Uitgangspunt is dat een aangevraagde rangeerrijweg voldoet aan de geldende plannormen.\n\nIn sommige gevallen resulteert het afwijzen van de lokale order op grond van de plannormen, juist tot een onveiliger situatie, bijvoorbeeld vanwege rood-seinnaderingen van andere treinen. Je mag een dergelijke order toch goedkeuren als je op basis van een bewuste afweging oordeelt dat de veiligheid daarmee beter is gediend. Een voorbeeld hiervan is een situatie waarin op een druk station een defecte trein een perronspoor bezet houdt.\n\nIndien je de aanvraag niet accepteert, geef je zo mogelijk een advies voor een alternatieve rijweg onder de optie 'opmerking'. De aanvrager kan dan een nieuwe aanvraag indienen. Je verwerkt een goedgekeurde LOA via SBG++ in het Proces Plan Rijwegen (PPR). Een Bundel Lokale Orderaanvragen (BLOA) aangevraagd met LOA Online, verwerk je pas in het PPR als de gehele order is goedgekeurd.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #4*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Afhandelen LOA goederenvervoer',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '''Goederenvervoerders dienen lokale orders volgens de plaatselijk afgesproken werkwijze in:''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '''
- Voor het beoordelen van deze lokale orders, toets je deze op beschikbaarheid en verdringing;\n\n- Indien je de aanvraag niet accepteert, meld je dit aan de aanvrager. Deze kan dan een nieuwe aanvraag indienen;\n\n- Je verwerkt een goedgekeurd LOA via SBG++ in het ProcesPlan Rijwegen (PPR);\n\n- Je licht de belanghebbenden in over de planaanpassingen.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #5*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'LOA Online',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'LOA Online is een onlinesysteem waarmee spoorwegondernemingen rangeerrijwegen kunnen aanvragen en TRDLs deze kunnen beoordelen.\n\nDe bedoeling is dat orderaanvragen voor rangeerbewegingen dus niet meer ad hoc aangevraagd worden maar middels LOA Online.  Dit geeft zowel de aanvrager als de beoordelaar de ruimte om aanvragen uniform in te dienen en te beoordelen. De beoordelaar kan ook middels het systeem een eventueel alternatief voorstellen.\n\nOp de post is er een rijwegencatalogus (met daarin de rijwegmogelijkheden) gekoppeld aan LOA Online zodat de aanvrager een overzicht te zien krijgt van de mogelijkheden om te rangeren. op/rondom de gewenste plantijd. Men krijgt de meest voorkomende rangeerrijwegen te zien en deze lijst kan (mede door voorstellen vanuit de gebruikers) nog aangepast worden.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/orderacceptatie/loaOnline.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '''Indien je de aanvraag niet accepteert, geef je zo mogelijk een advies voor een alternatieve rijweg onder de optie 'opmerking'. De aanvrager kan dan een nieuwe aanvraag indienen. Je verwerkt een goedgekeurde LOA via SBG++ in het Proces Plan Rijwegen (PPR). Een Bundel Lokale Orderaanvragen (BLOA) aangevraagd met LOA Online, verwerk je pas in het PPR als de gehele order is goedgekeurd.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #6*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Bovenlokale Orderaanvragen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '''Bovenlokale orderaanvragen worden ingediend bij de DVL. De DVL toetst deze concept dienstregeling vooraf bij de TRDL (o.a. op lokale verdringing). Om deze toets juist te kunnen uitvoeren, moet de TRDL op de hoogte zijn van de voor hem relevante gegevens. Wat moet de TRDL weten:''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          ''''- Treinnummer;\n\n- Begin- en eindpunt;\n\n- De te volgen route (volgens welke dienstregelingspunten);\n\n- Tijden (aankomst/vertrek of doorrijden);\n\n- Treinlengte;\n\n- Materieel of tractiesoort;\n\n- Eventuele bijzonderheden infra-gebruik.''',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '''Je toets de rijweg op verdringing en meldt het resultaat aan de DVL.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #7*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Plannen versus besturen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: '''
Er wordt een onderscheid gemaakt tussen plannen en besturen in de fase van Verkeersleiding. Plannen behelst het toevoegen van nieuwe dienstregelingstreinen (bovenlokaal) en rangeerbewegingen (lokaal) aan het actuele plan.\n\nBesturen behelst het muteren van reeds geplande dienstregelingstreinen en reeds geplande rangeerbewegingen, vaak naar aanleiding van incidenten op het spoor. Voor de planning gelden de plannormen, voor de besturing is dat (nog) niet altijd mogelijk.''',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'Plannen in standaard paden en standaard rijwegen',
                    ),
                    BodyText(
                      indents: 0,
                      text: '''
Voor het plannen van goederentreinen in de fase van Verkeersleiding zijn in de dienstregeling lege treinpaden (BUP-paden) opgenomen. Dit zijn vooraf vastgelegde paden in de bestaande dienstregeling waarin treinen kunnen worden ingelegd. Bijv. voor het plannen van conflictvrije rangeerbewegingen op het emplacement. Zijn deze standaard rangeerrijwegen eenmaal bepaald ('Rijwegencatalogus'), dan moeten deze worden toegepast bij de afhandeling van lokale orders.\n\nNiet alle rangeerbewegingen kunnen worden gepland in vooraf gedefinieerde rangeerrijwegen. Deze rangeerrijwegen zullen in de 'witte ruimte' van het plan gepland worden. Om de TRDL in staat te stellen ook deze rijwegen volgens de plannormen te plannen is SBG++ voorzien van conflictsignalering. Zo kan je concept rangeerrijwegen aanmaken en deze toetsen op mogelijke conflicten.''',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #8*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Besturings- en/of planningsnormen',
                    ),
                    BodyText(
                      indents: 0,
                      text: '''
Voor het inleggen van nieuwe treinbewegingen en verleggen van bestaande treinbewegingen zijn normen vastgelegd. Hieronder staan tabellen, die de diverse normen weergeven:''',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/orderacceptatie/planNormTabel1.png',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/orderacceptatie/planNormTabel2.png',
                    ),
                    SizedBoxH(),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Halteringstijden',
                    ),
                    BodyText(
                      indents: 0,
                      text: '''
De technisch minimale norm voor halterende goederentreinen is 2 minuten. Voor reizigerstreinen geldt een minimale norm van < 1minuut, in de planning (is korte stop +).''',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Kopmaken en keren',
                    ),
                    BodyText(
                      indents: 0,
                      text: '''
Voor het kopmaken en keren geldt een minimumnorm van 4 minuten.''',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Combineren',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Minimumtijd voor het combineren is 3 minuten.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Splitsen',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Minimumtijd voor het splitsen is 2 minuten.',
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