import '/all_imports.dart';

class AIVertragingenBasis extends StatelessWidget {
  const AIVertragingenBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIVertragingenBasisNavigation(),
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
                    title: 'Vertragingen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij vertragingen is het belangrijk de treinenloop zo goed mogelijk te laten verlopen volgens de gemaakte afspraken.\n\nIn procesleiding (PRL) kan je een vertraging verwerken of kwiteren.\n\nEr zijn drie soorten vertragingen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- N = Nader Bericht;\n- V = Voorwaardelijke vertraging;\n- E = Exacte vertraging.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Nader Bericht',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Deze functie gebruik je NIET bij reizigerstreinen i.v.m. de werking van Info-Plus.\n\nDe vertragingssoort Nader Bericht (NB) kan bij een goederentrein op 4 manieren tot stand komen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- TRDL voert NB in via PRL;\n- De DVL voert het in via VOS;\n- De Grensdisponent of de VLCG voert het in voor grens-in verkeer via VOS;\n- Een goederenvervoerder voert het in op een vertrekstation in Nederland via RMS.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer de vertragingssoort 'NB' eenmaal is ingevoerd, mag de betrokken trein zijn rit pas vervolgen als je toestemming hebt van de DVL, want de DVL zal eerst een nieuw conflictvrij pad voor de betreffende trein moeten inplannen. Het oorspronkelijke (resterende) pad kan reeds vergeven zijn aan een andere vervoerder.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorwaardelijke vertraging',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer je kan inschatten wanneer een trein gaat vertrekken, voer je een voorwaardelijke vertraging in.\n\nDe vertragingssoort 'Voorwaardelijke Vertraging' kan op 3 manieren tot stand komen:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Jij voert de voorwaardelijke vertraging in via PRL na uitvraag van een prognose;\n- De DVL voert het in via VOS;\n- De Grensdisponent of de VLCG voert het in voor grens-in verkeer via VOS.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Exacte vertraging',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "'Exact' wordt door het systeem gemeten en derhalve niet gebruikt. Als je deze wel gebruikt, meet het systeem niet meer op het betreffende meetpunt.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Verwerken van vertraging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je kunt een vertraging verwerken per planregel of per trein. Door het verwerken van een vertraging in PRL:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Blijft het plan actueel;\n- Worden meekijkers automatisch op de hoogte gebracht;\n- Kan ARI opdracht blijven geven tot het instellen van rijwegen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer je vertraging verwerkt, kan je daarbij het ezelsbruggetje VASSVI gebruiken:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Verwerk vertraging;\n- Aansluitingen en gevolgen (TAD);\n- Stationnement;\n- Spoorgebruik (afwijken/treinlengte);\n- Volgorde vrije baan;\n- Invoer voorwaardelijke vertraging.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Door deze stappen te doorlopen, ga je bewust om met de gevolgen van vertraging.\nWat houdt dit nu in:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Allereerst Verwerk je de vertraging in het plan;\n- Check of er Aansluitingen zijn met andere treinen;\n- Check of er een Stationnement is dat ingekort kan worden;\n- Check of het aankomstspoor vrij is of dat je moet afwijken (Spoorgebruik;\n- Check of de trein(en) nog in dezelfde Volgorde vertrek(ken) naar de vrije baan;\n- Check of er treinen zijn die een aansluiting overnemen, of die keren onder een ander nummer en daardoor ook vertraging krijgen. Als dat het geval is moet je voorwaardelijke vertraging Invoeren.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        'Volgordewisseling in procesleiding a.g.v. vertraging verwerken (werking ARI)',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorrangsrelaties',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'ARI zal zoveel mogelijk zelf volgordewisselingen voorkomen door gebruik te maken van voorrangsrelaties (met planregels die al of niet aanstaan voor ARI). Dit houdt in dat ARI rekening houdt met de volgorde in het plan. Planregels met een eerdere insteltijd naar een bepaald eindspoor moeten eerst zijn uitgevoerd voordat planregels met een latere insteltijd worden uitgevoerd. Hierdoor zal het aantal meldingen van een volgordewisseling sterk verminderd worden. Als volgordewisseling onvermijdelijk is zal ARI de planregels waarvoor dit geconstateerd wordt uitzetten voor ARI.\n\nBij het in behandeling nemen van een in te stellen rijweg controleert ARI of er andere planregels zijn met rijwegen die aan de volgende voorwaarden voldoen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De rijweg leidt naar hetzelfde eindspoor;\n- De insteltijd is eerder dan de insteltijd van de in te stellen rijweg;\n- De insteltijd is gelijk aan de insteltijd van de in te stellen rijweg;\n- De plantijd is eerder of gelijk aan de plantijd van de in te stellen rijweg;\n- De rijweg is nog niet tot en met het conflictspoor ingesteld.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Volgordewisselingen en de gevolgen voor de TRDL',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "ARI zal volgordewisseling op eindspoor zoveel mogelijk zelf voorkomen, tenzij ARI constateert dat volgordewisseling niet vermeden kan worden. In deze gevallen worden, zonder het procesplan te wijzigen, de planregels met melding teruggegeven aan de TRDL. Alle planregels die voorrang geven aan een planregel die wordt uitgezet voor of door ARI, worden ook uitgezet door ARI.\n\nBij gefaseerde rijweginstelling van planregels zal ARI de rijweg naar behoefte maximaal instellen tot v????r het conflictpunt. Pas als de rijweg weer beschikbaar is na het passeren van de voorrang krijgende trein(en) wordt de rijweginstelling voortgezet. Dit zou kunnen betekenen dat de melding 'volgordewisseling' dus alleen zal verschijnen wanneer handmatig ingrijpen van een TRDL nodig is. Bij integrale rijweginstelling van planregels zal dit niet gebeuren. Hier wordt de planregel wel in behandeling genomen door ARI en zal er pas tot rijweginstelling worden overgegaan nadat de gehele rijweg beschikbaar komt.\n\nBij een volgordewisseling naar de vrije baan geef je een standaardmelding. Als de vertragingsmarge van een trein is overschreden en er geen afhandelingstrategie beschikbaar is of de strategie niet toepasbaar is, mag je de volgorde in de treindienst alleen wijzigen na toestemming van de DVL.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zeegroene planregels en volgordewisselingen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "De planregel blijft, totdat de voorrang krijgende planregel is ingesteld, in je plan staan en toont 'zeegroen'. Indien om wat voor reden een planregel bovenin je plan staat met hetzelfde eindspoor (nader bericht of onverwerkte vertraging etc.) zullen de nog in te stellen planregels, indien deze aan de ARI voorwaarden voldoen, niet (geheel) worden ingesteld. Dit  betekent dat er geen rijwegen worden ingesteld naar het betrokken eindspoor van de bovenste planregel. Om dit te voorkomen is het belangrijk om je plan op orde te hebben. De stelregel is dat je moet zorgen dat de situatie in je plan overeenkomt met de situatie 'buiten'. Om dit te realiseren is het belangrijk om regelmatig vertraging te verwerken en te plannen.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Afhandelingsafspraken',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Er zijn twee soorten afhandelingsafspraken:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Treingerelateerde afspraken, gebundeld in:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "- Leidraden;\n- TAD'en, deze bevatten: WRT (Wachttijden Reizigerstreinen en Afhandelingsstrategieen per trein(serie) in de vorm van if/then scenario's.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Infragerelateerde afspraken:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Versperringsmaatregelen;\n- Knooppuntmaatregelen;\n- Ontkoppelmaatregelen;\n- Maatregelen voor extreme weersomstandigheden.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Indien spoorwegondernemingen of de verkeersleider in concrete gevallen van de afspraken willen afwijken, dan vindt hierover tijdig afstemming plaats.\nDaarnaast zijn er maatregelen die in het hier en nu worden bedacht, maar wel onderdeel kunnen zijn van de leidraad voor een corridor:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Ontluchtingsmaatregelen t.b.v. Fase 1 of beperkingen in gebruik van de infra/werkdruk',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Treingerelateerde afspraken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Om snel en adequaat de kunnen bijsturen, heeft VL zoveel mogelijk vooraf gedefinieerde afspraken gemaakt met vervoerders en AM bij treingerelateerde vertragingen, zoals TAD'en en leidraden voor bijsturing. Deze zijn bedoeld om snel en met een minimum aan communicatie te kunnen bijsturen bij planafwijkingen.\nDe bijsturingsbesluiten worden door de DVL onder gedelegeerde bevoegdheid en/of in afstemming met de VLC genomen. Omwille van slagvaardigheid en voorspelbaarheid is een deel van de bijsturingsbesluiten daarop weer gedelegeerd naar de TRDL.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Leidraad',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Er is per belangrijke reizigerscorridor een leidraad aanwezig waarin de bijsturingsdoelen van het treinverkeer in zijn opgenomen. Binnen deze leidraden zijn beschreven:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Landelijke bijsturingsdoelen;\n- Bijsturingsdoelen van de corridor;\n- Te hanteren kaders door Prorail VM;\n- Bijbehorende bijsturingsopdrachten en principes;\n- Logistieke kaart van de corridor met de logistieke mogelijkheden.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Uitgangspunten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Deze vooraf gedefinieerde afhandelingsafspraken worden toegepast (mits passend binnen het genomen verdelingsbesluit;\n- Er wordt zo min mogelijk van deze afspraken afgeweken;\n- Het plan wordt waar mogelijk door de DVL aangepast na besluitvorming binnen het proces VM.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'TreinAfhandelingsDocument (TAD)',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Om niet bij elke vertraging contact te doen plaatsvinden tussen TRDL, DVL en vervoerder zijn er van tevoren al afspraken gemaakt hoe te handelen bij bepaalde vertragingen. Deze afspraken zijn vastgelegd in het TAD.\n\nAls de vertraging van een trein binnen de grenzen van het TAD valt, voert de TRDL de hierbij genoemde afhandeling uit. Staat de afhandeling niet in de TAD dan is het aan de expertise van de TRDL en DVL hoe deze situatie op te lossen. Vaak zal er geen aansluiting overgenomen worden.\n\nIn een TAD zijn de WRT (wachtijden reizgerstreinen) en If/Then scenario's samengevoegd. Als de uitvoering van het TAD een volgordewisseling tot gevolg heeft, geef je dit door aan je buurTRDL. Als er geen goede oplossing voorhanden is overleg je met de DVL.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Wachttijden Reizigerstreinen (WRT)',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- De WRT geeft voor elk knooppunt aan hoe lang treinen mogen wachten op een aansluiting bij vertraagd aankomende treinen. En geeft weer wat de uiterlijke vertrektijd is van de wachtende trein.\n- Als twee treinen vertraagd zijn die normaliter aansluiting op elkaar overnemen, geldt de WRT niet;\n- De WRT bepaalt tevens de laatste aansluitingen van reizigerstreinen bij het einde van de reizigersdienst.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/wrt_lezen1.png',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/wrt_lezen2.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Afhandelingsstrategie per trein/treinserie',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- In de afhandelingsstrategie is per station aangegeven wat er moet gebeuren met een oplopende vertraging;\n- Voorkomt het ontstaan van een domino-effect bij vertragingen;\n- Zorgt ervoor dat er geen verdringing plaatsvindt van andere spoorwegondernemingen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "If/Then scenario's",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "- If/Then-scenario's zijn bedoeld voor vertragingen in de treindienst die op de knoop ontstaan;\n- Ze worden van kracht als een trein een vooraf bepaalde vertragingsmarge overschrijdt;\n- De TRDL is bevoegd de treindienst op zijn knoop af te wikkelen volgens de if/then-scenario's.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Versperringsmaatregelen (VSM)',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De VSM is een set vooraf gedefinieerde afspraken, die gemaakt is om bij een versperd baanvak snel en op beheerste wijze:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Een nieuw actueel plan te kunnen communiceren;\n- Transparant te zijn richting vervoerders en hun klanten betreffende dit nieuwe actuele plan en de eventuele omleidingsroutes;\n- Punctueel te zijn op de niet versperde baanvakken;\n- Reizigers via omleidingsroutes te laten leiden door vervoerders.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Knooppuntmaatregelen (KPM)',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De KPM is een set vooraf gedefinieerde afspraken, die gemaakt is om bij uitval van een knooppunt, de treindienst vanaf de omliggende knooppunten zo ongestoord mogelijk te laten verlopen. De KPM wordt vertaald naar een VSM en maakt daarmee deel uit van de VSM.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Ontkoppelmaatregelen (OKM)',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De OKM is een set vooraf gedefinieerde afspraken, die gemaakt is om de toevoer naar een gestremd baanvak te stoppen. De treinen worden in voorkomende situaties op vooraf gedefinieerde ontkoppelpunten gekeerd of afgerangeerd. Ontkoppelpunten maken onderdeel uit van de VSM.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Bijsturings- en/of plannormen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het verleggen van bestaande treinbewegingen en inleggen van nieuwe treinbewegingen zijn normen vastgelegd.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Opvolgtijden',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Standaard opvolgtijden bij vertrek en aankomst tussen twee treinen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- 1e trein reizigers - 2e trein reizigers: 3 minuten;\n- 1e trein reizigers - 2e trein goederen: 3 minuten;\n- 1e trein goederen - 2e trein reizigers: 4 minuten;\n- 1e trein goederen - 2e trein goederen: 4 minuten;',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De opvolgingstijd tussen twee rijdende goederentreinen is 3 minuten. Standaard opvolgingstijd bij inhalingen onderweg:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- 1e trein aankomst - 2e trein door: 2 minuten;\n- 1e trein door - 2e trein vertrek: 2 minuten;',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De opvolgingstijd bij twee reizigerstreinen die een minimaal stationnement hebben op hetzelfde station; 4 minuten.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Halteringstijden',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De technisch minimale norm voor halterende goederentreinen is 2 minuten. Voor reizigerstreinen geldt een minimale norm van < 1 minuut, in de planning is dat een korte stop (+). De vervoerder kan hiervan willen afwijken (verlengen van de haltering).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Kopmaken en keren',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het kopmaken en keren geldt een minimumnorm van 4 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Combineren',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Minimumtijd voor het combineren is 3 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Splitsen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Minimumtijd voor het splitsen is 2 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Klaarmelding',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een klaarmelding is een maatregel in Procesleiding die een TRDL kan nemen als een trein niet zonder toestemming van een bevoegd functionaris mag vertrekken. Dit kan bijvoorbeeld het geval zijn bij het laten instappen van een invalide reiziger of bij het verhelpen van een storing in het materieel.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Een klaarmelding plaatsen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Een klaarmelding wordt aangevraagd op het moment dat er iets bijzonders gebeurt in het vertrekproces van een treinstel. Dit kan inhouden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Dat er moeilijkheden zijn met reizigers te laten in- of overstappen;\n- Dat er nog treinstellen gecombineerd moeten worden, of;\n- Dat een storingsmonteur tijdens de stop van een treinstel een storing verhelpt.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Op het moment dat een klaarmelding nodig is, neemt de functionaris in kwestie contact op met de TRDL. In het bericht zal aangegeven worden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Welke trein de klaarmelding moet ontvangen;\n- Waarom;\n- De prognose;\n- Wie er verantwoordelijk is voor het 'klaarmelden' van de trein op het moment dat deze weer gereed is voor vertrek.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Toepassing',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Nadat je dit bericht in ontvangst hebt genomen, neem je de benodigde acties in procesleiding:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- In je planscherm zoek je de planregel op van de betreffende trein. Deze muteer je naar het mutatievenster.\n- Klik in het mutatievenster op de 'K' van Klaarmelding. Er opent zich nu een pop-up venster.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/klaarmelding1.png',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- In het venster kun je ????n of meerdere klaarmeldingen aan de planregel toevoegen. Vul de reden van de klaarmelding in en noteer welke functionaris verantwoordelijk is.\n- Als je de melding hebt toegevoegd, klik je op 'Voer In'. De pop-up verdwijnt weer.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/klaarmelding2.png',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Je kunt nu in het mutatiescherm zien dat de planregel een klaarmelding heeft, omdat de 'K' dikgedrukt wordt weergegeven.\n- Je kunt de planregel nu weer invoeren in het plan met 'Voer in plan' of 'Voer alles in plan'.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/klaarmelding3.png',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "In het planscherm zal de planregel met de klaarmelding voorzien zijn van een 'K'. Voer indien van toepassing nu de verwachte vertraging in en verwerk deze.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/klaarmelding4.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Een klaarmelding afhandelen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer een rijweg ingesteld wordt terwijl de klaarmelding(en) nog niet is afgevinkt, dan geeft PRL een waarschuwing.\nOm een klaarmelding af te vinken, handel je als volgt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Selecteer de betreffende planregel met de klaarmelding;\n- Ga nu naar de planmenubalk en klik op de functieknop 'Klaar'. Er opent een zelfde pop-up als bij de waarschuwing;\n- Klik op elke klaarmelding die voor deze treinactiviteit is binnengekomen op het ruitje onder 'Ja'.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Hierna kun je de pop-up sluiten door op 'Voer in' te klikken.\nAls alle klaarmeldingen zijn afgevinkt zal de 'K' in de planregel (in het planscherm) veranderen in een '-'.\nDoor op deze manier een klaarmelding af te handelen weet iedereen die met jou meekijkt ook dat de trein is klaargemeld. Als je de planregel zou instellen zonder de klaarmelding af te handelen, blijft de 'K' ook in de historie achter de planregel staan.",
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

class AIVertragingenBasisNavigation extends StatelessWidget {
  const AIVertragingenBasisNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_vertragingen) {
          await Navigator.pushNamed(context, 'ww_vertragingen');
        } else if (result == PopupNavigation.ai_monitoring) {
          await Navigator.pushNamed(context, 'ai_monitoring');
        } else if (result == PopupNavigation.ai_klanthinder) {
          await Navigator.pushNamed(context, 'ai_klanthinder');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_vertragingen,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Vertragingen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_monitoring,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Monitoring',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_klanthinder,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Klanthinder',
          ),
        ),
      ],
    );
  }
}
