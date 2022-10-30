import '/all_imports.dart';

enum WhereToGoFromWWVertragingen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_vertragingen,
}

class WWVertragingen extends StatelessWidget {
  const WWVertragingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWVertragingenNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(title: 'Vertragingen'),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij vertragingen is het belangrijk de treinenloop zo goed mogelijk volgens plan te laten verlopen. Daar waar het plan aangepast moet worden, gebeurt dat zoveel mogelijk volgens vooraf afgesproken afhandelingsafspraken. Deze afhandelingsafspraken zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text: '- Infragerelateerd, of;\n\n- Treingerelateerd.',
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

class WWVertragingenNavigation extends StatelessWidget {
  const WWVertragingenNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWVertragingen>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWVertragingen result) async {
        if (result == WhereToGoFromWWVertragingen.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWVertragingen.ai_vertragingen) {
          await Navigator.pushNamed(context, 'ai_vertragingen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWVertragingen>>[
        const PopupMenuItem<WhereToGoFromWWVertragingen>(
          value: WhereToGoFromWWVertragingen.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWVertragingen>(
          value: WhereToGoFromWWVertragingen.ai_vertragingen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Vertragingen',
          ),
        ),
      ],
    );
  }
}
