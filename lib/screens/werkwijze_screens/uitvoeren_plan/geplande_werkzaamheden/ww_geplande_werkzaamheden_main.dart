import '/all_imports.dart';

class WWGeplandeWerkzaamhedenMain extends StatelessWidget {
  const WWGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: const <Widget>[
          WWGeplandeWerkzaamhedenMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              /*PROCEDURE CARD*/
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Geplande Werkzaamheden',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Dit zijn vooraf geplande werkzaamheden die zijn vastgelegd in een Werkplek Beveiligings Instructie (WBI/WECO).',
                  ),
                ],
              ),
              /*NAVIGATION CARD*/
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      NavButton(
                        buttontext: 'Aanvang Werkzaamheden',
                        destination: 'ww_aanvang_werkzaamheden',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Controleren WBI',
                        destination: 'ww_controleren_wbi',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Fouten in de WBI',
                        destination: 'ww_fouten_in_de_wbi',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWGeplandeWerkzaamhedenMainNavigation extends StatelessWidget {
  const WWGeplandeWerkzaamhedenMainNavigation({
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
        } else if (result == PopupNavigation.ai_geplande_werkzaamheden_main) {
          await Navigator.pushNamed(
            context,
            'ai_geplande_werkzaamheden_main',
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
          value: PopupNavigation.ai_geplande_werkzaamheden_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Geplande Werkzaamheden',
          ),
        ),
      ],
    );
  }
}
