import '/all_imports.dart';

enum WhereToGoFromWWMondelingeCommunicatie {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_mondelinge_communicatie,
}

class WWMondelingeCommunicatie extends StatelessWidget {
  const WWMondelingeCommunicatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
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
                    subtitle: Utils.textCardTitleProcedure,
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
                    subtitle: Utils.textCardTitleRisico,
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
                    subtitle: Utils.textCardTitleContext,
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
    return PopupMenuButton<WhereToGoFromWWMondelingeCommunicatie>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWMondelingeCommunicatie result) async {
        if (result == WhereToGoFromWWMondelingeCommunicatie.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWMondelingeCommunicatie.ai_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ai_mondelinge_communicatie',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWMondelingeCommunicatie>>[
        const PopupMenuItem<WhereToGoFromWWMondelingeCommunicatie>(
          value: WhereToGoFromWWMondelingeCommunicatie.home_screen,
          child: MenuItemContent(
            icon: Utils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWMondelingeCommunicatie>(
          value:
              WhereToGoFromWWMondelingeCommunicatie.ai_mondelinge_communicatie,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Mondelinge Communicatie',
          ),
        ),
      ],
    );
  }
}