import '/all_imports.dart';

class WWMondelingeCommunicatie extends StatelessWidget {
  const WWMondelingeCommunicatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWMondelingeCommunicatieNavigation(),
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
                    title: 'Mondelinge Communicatie',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Bij aanvang van ieder bericht geldt identificatieplicht;\n\n- Gebruik bij het voeren van een gesprek de dienstuitdrukkingen en de berichtenstructuur;\n\n- Houd je aan de gespreksdiscipline.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt of treinen komen onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Om onveilige situaties te voorkomen zijn met de gesprekspartners van de TRDL uniforme uitgangspunten afgesproken voor het wisselen van mondelinge berichten. De TRDL heeft in deze afspraken een sturende rol.',
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

class WWMondelingeCommunicatieNavigation extends StatelessWidget {
  const WWMondelingeCommunicatieNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ai_mondelinge_communicatie',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Mondelinge Communicatie',
          ),
        ),
      ],
    );
  }
}
