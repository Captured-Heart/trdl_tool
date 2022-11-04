import '/all_imports.dart';

class WWVertragingen extends StatelessWidget {
  const WWVertragingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
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
                    subtitle: StringUtils.textCardTitleProcedure,
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
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_vertragingen) {
          await Navigator.pushNamed(context, 'ai_vertragingen');
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
          value: PopupNavigation.ai_vertragingen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Vertragingen',
          ),
        ),
      ],
    );
  }
}