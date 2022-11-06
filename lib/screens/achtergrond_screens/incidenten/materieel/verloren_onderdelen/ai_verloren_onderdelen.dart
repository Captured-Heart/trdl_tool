import '/all_imports.dart';

class AIVerlorenOnderdelen extends StatelessWidget {
  const AIVerlorenOnderdelen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIVerlorenOnderdelenNavigation(),
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
                    title: 'Materieel - Verloren Onderdelen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Verloren onderdelen is een incident dat een grote impact kan hebben op de treindienst en mondt daarom al snel uit in een calamiteit. Dit komt met name doordat je de PPLG's binnen het traject dat de trein heeft afgelegd - van het moment dat de trein 'compleet' was tot het bekend werd dat hij iets verloren is - moet laten schouwen door een door het MKS-BO opgeroepen storingsdienst.\n\nAls de trein bijv. van Venlo naar de Kijfhoek is gereden en op de Kijfhoek wordt ontdekt dat er een buffer mist, dan moeten alle emplacementen, stations en aansluitingen tussen Venlo en de Kijfhoek geschouwd worden door een door het MKS-BO opgeroepen storingsdienst. Je moet, totdat de storingsdient aangeeft dat er gestaakt mag worden, alle treinen voorzien van een aanwijzing VR.\n\nVoor de vrije baan tussen de emplacementen geldt dat het schouwen en afgeven van aanwijzingen achterwege gelaten kan worden als het betrokken spoor en nevenspoor/-sporen eenmaal zonder hinder bereden zijn. Dit onderscheid tussen vrije baan en emplacementen is gemaakt, omdat de vrije baan overzichtelijk is en voor MCN goed te schouwen. Emplacementen, stations en aansluitingen zijn vaak minder overzichtelijk en een verloren onderdeel kan daar alle kanten op zijn gestuiterd. Hierdoor wordt het voor MCN een stuk lastiger om te schouwen en is besloten om dit door een storingsdienst te laten doen.",
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

class AIVerlorenOnderdelenNavigation extends StatelessWidget {
  const AIVerlorenOnderdelenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
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
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}