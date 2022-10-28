import '/all_imports.dart';

enum WhereToGoFromWWBeschadigdWissel {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_beschadigd_wissel,
}

class WWBeschadigdWissel extends StatelessWidget {
  const WWBeschadigdWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWBeschadigdWisselNavigation(),
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
                    title: 'Beschadigd wissel',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een beschadigd wissel staak je het treinverkeer over het betrokken wissel.\n\nEen wissel moet als beschadigd worden beschouwd als:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het bij een ontsporing betrokken is geweest, of;\n\n- Als het een breuk of andere uiterlijke afwijking vertoont.',
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
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'Bij een beschadigd wissel is de veilige berijdbaarheid van het wissel niet meer gegarandeerd. Dat is niet altijd zichtbaar in Procesleiding.\n\nDe storingsmonteur kan de veilige berijdbaarheid ter plaatse vaststellen. De storingsmonteur bepaalt of en hoe je het betrokken wissel weer mag laten berijden.',
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

class WWBeschadigdWisselNavigation extends StatelessWidget {
  const WWBeschadigdWisselNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWBeschadigdWissel>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWBeschadigdWissel result) async {
        if (result == WhereToGoFromWWBeschadigdWissel.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWBeschadigdWissel.ai_beschadigd_wissel) {
          await Navigator.pushNamed(context, 'ai_beschadigd_wissel');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWBeschadigdWissel>>[
        const PopupMenuItem<WhereToGoFromWWBeschadigdWissel>(
          value: WhereToGoFromWWBeschadigdWissel.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBeschadigdWissel>(
          value: WhereToGoFromWWBeschadigdWissel.ai_beschadigd_wissel,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Beschadigd Wissel',
          ),
        ),
      ],
    );
  }
}
