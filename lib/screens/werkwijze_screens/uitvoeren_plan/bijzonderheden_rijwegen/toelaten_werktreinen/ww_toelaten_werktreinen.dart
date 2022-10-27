import '/all_imports.dart';

enum WhereToGoFromWWToelatenWerktreinen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_geplande_werkzaamheden_main,
  // ignore: constant_identifier_names
  ai_toelaten_werktreinen,
  // ignore: constant_identifier_names
  ai_geplande_werkzaamheden_main,
}

class WWToelatenWerktreinen extends StatelessWidget {
  const WWToelatenWerktreinen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWToelatenWerktreinenNavigation(),
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
                    title: 'Toelaten Werktreinen',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Overleg met de LWB;\n\n- Hef éénmalig de daarvoor noodzakelijke veiligheidsmaatregelen op;\n\n- Laat de werktrein na overleg met de LWB op een veilige manier toe tot de beschikbaar gestelde infracapaciteit;\n\n- Breng de veiligheidsmaatregelen weer aan na het passeren van de werktrein.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.risico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.context,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Op de werkplek zijn de werkenden door middel van veiligheidsmaatregelen beschermd tegen aanrijdgevaar. Op het moment dat een trein noodzakelijk voor de werkzaamheden toegelaten moet worden, geeft de LWB toestemming als de werkenden adequaat beschermd zijn.\n\nVoorafgaand aan de werkzaamheden stellen TRDL en LWB samen vast of ze over dezelfde WBI/WECO beschikken.',
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

class WWToelatenWerktreinenNavigation extends StatelessWidget {
  const WWToelatenWerktreinenNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWToelatenWerktreinen>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWToelatenWerktreinen result) async {
        if (result == WhereToGoFromWWToelatenWerktreinen.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWToelatenWerktreinen.ww_geplande_werkzaamheden_main) {
          await Navigator.pushNamed(
            context,
            'ww_geplande_werkzaamheden_main',
          );
        } else if (result ==
            WhereToGoFromWWToelatenWerktreinen.ai_toelaten_werktreinen) {
          await Navigator.pushNamed(context, 'ai_toelaten_werktreinen');
        } else if (result ==
            WhereToGoFromWWToelatenWerktreinen.ai_geplande_werkzaamheden_main) {
          await Navigator.pushNamed(
            context,
            'ai_geplande_werkzaamheden_main',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWToelatenWerktreinen>>[
        const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
          value: WhereToGoFromWWToelatenWerktreinen.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
          value:
              WhereToGoFromWWToelatenWerktreinen.ww_geplande_werkzaamheden_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Geplande Werkzaamheden',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
          value: WhereToGoFromWWToelatenWerktreinen.ai_toelaten_werktreinen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Toelaten Werktreinen',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
          value:
              WhereToGoFromWWToelatenWerktreinen.ai_geplande_werkzaamheden_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Geplande Werkzaamheden',
          ),
        ),
      ],
    );
  }
}
