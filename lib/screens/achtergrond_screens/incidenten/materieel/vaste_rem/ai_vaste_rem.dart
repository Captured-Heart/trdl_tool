import '/all_imports.dart';

class AIVasteRem extends StatelessWidget {
  const AIVasteRem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIVasteRemNavigation(),
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
                    title: 'Vaste Rem',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een treinwiel is voorzien van een wielband, dit is het loopvlak van een treinwiel, deze is door middel van krimping om een treinwiel bevestigd. De wielband wordt verhit waardoor deze uitzet, hierdoor past deze om het treinwiel. Wanneer de wielband is afgekoeld zit hij muurvast om het wiel. Een vaste rem zet dit proces omgekeerd weer in werking, de wielband wordt verhit, waardoor deze los komt te zitten. Wanneer de wielband van het wiel loopt, zal de trein ontsporen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Risico',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een infraversperring en schade aan mens, materieel en milieu.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Afhandeling',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Na de melding vaste rem geef je de MCN van de betreffende trein de opdracht om de trein beheerst tot stilstand te brengen. Je houdt rekening met het feit dat de trein zo min mogelijk wissels berijdt. Als de trein toch wissels moet berijden moeten deze wissels zo recht mogelijk bereden worden. Het overzichtsscherm is hierbij geen goede raadgever; raadpleeg de BVS-tekening. Je informeert de MKS-BO en DVL.\n\nDe MCN stelt een onderzoek in en meldt of de trein nog verder kan rijden. Op zijn verzoek stel je de gevraagde railinfracapaciteit (nevenspoor) ter beschikking. Je hoort van de MCN onder welke voorwaarden de trein verder mag rijden.\nJe herplant de trein in overleg met de DVL.',
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

class AIVasteRemNavigation extends StatelessWidget {
  const AIVasteRemNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_vaste_rem) {
          await Navigator.pushNamed(context, 'ww_vaste_rem');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else if (result == PopupNavigation.ai_quo_vadis_hotbox) {
          await Navigator.pushNamed(context, 'ai_quo_vadis_hotbox');
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
          value: PopupNavigation.ww_vaste_rem,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Vaste Rem',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_quo_vadis_hotbox,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Quo Vadis & Hotbox',
          ),
        ),
      ],
    );
  }
}
