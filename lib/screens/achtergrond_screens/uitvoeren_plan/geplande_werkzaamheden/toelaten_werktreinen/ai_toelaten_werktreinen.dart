import '/all_imports.dart';

class AIToelatenWerktreinen extends StatelessWidget {
  const AIToelatenWerktreinen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIToelatenWerktreinenNavigation(),
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
                    title: 'Toelaten werktreinen',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle:
                        'Toelating (werk)trein tot buitendienst gesteld gebied',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Alleen met toestemming van de leider werkplekbeveiliging (LWB) mag je een (werk)trein toelaten op een buitendienst gesteld spoor. Je maakt dan afspraken met de LWB over het toelaten van de werktrein, o.a. over spoorgebruik, binnen melden. In dit geval moet je eenmalig zijn veiligheidsmaatregelen opheffen en weer aanbrengen na het passeren van de (werk)trein. Een (werk)trein zal bij voorkeur met een aanwijzing STS toegelaten worden tot het buitendienst gestelde spoor. De reden hiervan is het ontbreken van blokverband en overgang trein naar werktrein m.b.t. taken en verantwoordelijkheden van de betrokken functionarissen.\n\nJe maakt afspraken met de LWB over werktreinen, waarbij:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Alleen de LWB de werktrein mag toelaten tot buitendienst gestelde sporen;\n\n- Alleen jij de werktrein mag toelaten op in dienst zijnde sporen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De LWB instrueert de begeleider buitendienst gesteld spoor (BBD) en (werktrein)MCN over:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De verplaatsingen van en de werkzaamheden uit te voeren met de werktrein;\n\n- De communicatie;\n\n- De aanwezigheid van mensen, obstakels en eventueel andere werktreinen;\n\n- De voertuiginstructie (VTI);\n\n- Bijzondere omstandigheden die van belang zijn voor het veilig rijden.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        'Toelating (werk)trein tot in dienst gesteld gebied',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Alleen met jouw toestemming mag de (werk)trein toegelaten worden op een in dienst gesteld spoor. Indien een werktrein niet op seinbeeld de buitendienststelling kan verlaten zal je een aantal handelingen moeten verrichten om de trein uit het gebied te krijgen.\n\nDit doe je met behulp van een rijopdracht voor de MCN, waarbij je zorg draagt voor de veilige rijweg. Dit kan door middel van de W-route of het handmatig sturen en vastleggen van de infra-elementen die zich in het in dienst gesteld gebied bevinden en het uitsluiten van de tegengestelde rijweg. Voor het gebruik van de W-route dient de buitendienststelling wel met een VHR begrensd te zijn.\n\nIndien nodig gebruik je het TOM-venster om een wissel in de juiste stand te sturen en vast te leggen.\n\nDe rijopdracht voor de MCN is vergelijkbaar met een aanwijzing STS, echter staat de MCN niet voor een sein, maar op de grens van de buitendienststelling. Je controleert of de juiste MCN de rijopdracht krijgt, zich op de juiste locatie bevindt en je geeft de bijzonderheden aan in de route. Dit doe je door middel van de 3 U's: U bent, U staat en U gaat. Vervolgens zal je de inhoudelijke gegevens benoemen die bij de STS horen. Je benoemt alleen de relevante punten.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorbeeld',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Nadat de veiligheidsmaatregelen zijn genomen voor de rijopdracht volgt het gesprek met de MCN (MCN herhaalt):',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "'U bent de machinist van trein 89663,\n\nU staat voor wissel 257A in Eindhoven,\n\nU gaat via wissel 257A rechtsleidend naar spoor Echo Bravo.\n\nDe machinist van trein 89663 moet achter wissel 257A rijden op zicht, de wissels voorzichtig berijden met een snelheid van max. 10 km/h en rekening houden met het niet goed functioneren van de overwegen en krijgt bij deze een rijopdracht van de treindienstleider.'",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Zodra de werktrein het gebied veilig heeft verlaten, zorg je ervoor dat de buitendienstelling is afgedekt conform afspraak (bijvoorbeeld door het wissel weer terug te leggen d.m.v. TOM-venster).',
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

class AIToelatenWerktreinenNavigation extends StatelessWidget {
  const AIToelatenWerktreinenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_toelaten_werktreinen) {
          await Navigator.pushNamed(context, 'ww_toelaten_werktreinen');
        } else if (result == PopupNavigation.ai_bijzonderheden_rijwegen_main) {
          await Navigator.pushNamed(
            context,
            'ai_bijzonderheden_rijwegen_main',
          );
        } else if (result == PopupNavigation.ai_geplande_werkzaamheden_main) {
          await Navigator.pushNamed(
            context,
            'ai_geplande_werkzaamheden_main',
          );
        } else if (result == PopupNavigation.ai_inzet_railvoertuig_icb) {
          await Navigator.pushNamed(context, 'ai_inzet_railvoertuig_icb');
        } else if (result == PopupNavigation.ai_voertuig_onjuiste_detectie) {
          await Navigator.pushNamed(context, 'ai_voertuig_onjuiste_detectie');
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
          value: PopupNavigation.ww_toelaten_werktreinen,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Toelaten Werktreinen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_bijzonderheden_rijwegen_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Bijzonderheden Rijwegen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_geplande_werkzaamheden_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Geplande Werkzaamheden',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_inzet_railvoertuig_icb,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Inzet Railvoertuig ICB',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_voertuig_onjuiste_detectie,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Voertuig Onjuiste Detectie',
          ),
        ),
      ],
    );
  }
}
