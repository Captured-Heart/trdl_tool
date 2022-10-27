import '/all_imports.dart';

enum WhereToGoFromWWVasteRem {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_materieel_main,
  // ignore: constant_identifier_names
  ai_vaste_rem,
}

class WWVasteRem extends StatelessWidget {
  const WWVasteRem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWVasteRemNavigation(),
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
                    title: 'Vaste rem',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Na een melding van een vaste rem/rook of vuur onder de trein:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Geef je de MCN opdracht de trein beheerst tot stilstand te brengen;\n\n- Stel je de gevraagde infra ter beschikking aan de MCN (nevenspoor);\n\n- De MCN geeft aan onder welke omstandigheden hij verder mag rijden.',
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
                        'Trein komt niet tijdig tot stilstand voor het gevaarpunt.',
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
                        'Een vaste rem verhit de wielband. Wanneer de temperatuur te hoog oploopt, kan de wielband van het wiel lopen. Het is van belang de trein zo recht mogelijk door wissels te laten rijden.',
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

class WWVasteRemNavigation extends StatelessWidget {
  const WWVasteRemNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWVasteRem>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWVasteRem result) async {
        if (result == WhereToGoFromWWVasteRem.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWVasteRem.ai_materieel_main) {
          await Navigator.pushNamed(context, 'ai_materieel_main');
        } else if (result == WhereToGoFromWWVasteRem.ai_vaste_rem) {
          await Navigator.pushNamed(context, 'ai_vaste_rem');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWVasteRem>>[
        const PopupMenuItem<WhereToGoFromWWVasteRem>(
          value: WhereToGoFromWWVasteRem.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWVasteRem>(
          value: WhereToGoFromWWVasteRem.ai_materieel_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Materieel',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWVasteRem>(
          value: WhereToGoFromWWVasteRem.ai_vaste_rem,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Vaste Rem',
          ),
        ),
      ],
    );
  }
}
