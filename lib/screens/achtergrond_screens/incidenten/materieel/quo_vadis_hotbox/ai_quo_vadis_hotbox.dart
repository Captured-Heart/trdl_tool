import '/all_imports.dart';

class AIQuoVadisHotbox extends StatelessWidget {
  const AIQuoVadisHotbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIQuoVadisHotboxNavigation(),
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
                    title: 'Quo Vadis & Hotbox',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Quo Vadis (WILD)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Quo Vadis (WILD: Wheel Impact and Load Detection) is ontwikkeld voor het meten van de kwaliteit van verschillende componenten van de trein. In Nederland wordt het systeem ingezet voor het meten van gewichten van passerende treinen, het detecteren van scheefbelading en voor het bepalen van de kwaliteit van de wielen.\nQuo Vadis meet door middel van sensoren die doorbuiging van en trillingen in de spoorstaaf meten aan beide benen.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_1.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Wat meet Quo Vadis aan de trein:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Meettijdstip;\n- Snelheid trein;\n- Lengte trein;\n- Aantal assen;\n- Totaal gewicht;\n- Aantal voertuigen;\n- Materieeltype voertuig;\n- RFID tag voertuig;\n- Scheve belading voertuig;\n- Aslast as;\n- Diagonale onbalans draaistel;\n- Piekkracht wiel;\n- Etc.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Quo Vadis locaties',
                  ),
                ],
              ),
              TextCard(
                widgetList: [
                  SubTitleText(
                    subtitle: 'Gewichtsmodule',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De gewichtsmodule bepaalt het gewicht van een totale trein uit het gemeten gewicht van elke as. Na verzending van de gegevens naar de centrale database, worden de gegevens o.a. gebruikt voor het berekenen van de gebruiksvergoeding. Door een slimme koppeling met de gegevens van TROTS wordt door ProRail ook de belasting van de wissels bepaald.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_3.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: [
                  SubTitleText(
                    subtitle: 'Wieldefect module',
                  ),
                  //TODO Hier verder moet toevoegen nieuwe informatie!
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIQuoVadisHotboxNavigation extends StatelessWidget {
  const AIQuoVadisHotboxNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_quo_vadis_hotbox) {
          await Navigator.pushNamed(context, 'ww_quo_vadis_hotbox');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else if (result == PopupNavigation.ai_vaste_rem) {
          await Navigator.pushNamed(context, 'ai_vaste_rem');
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
          value: PopupNavigation.ww_quo_vadis_hotbox,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Quo Vadis & Hotbox',
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
          value: PopupNavigation.ai_vaste_rem,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Vaste Rem',
          ),
        ),
      ],
    );
  }
}
