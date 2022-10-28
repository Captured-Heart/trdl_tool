import '/all_imports.dart';

enum WhereToGoFromWWVeiligheidsstoringSein {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_veiligheidsstoring_sein,
}

class WWVeiligheidsstoringSein extends StatelessWidget {
  const WWVeiligheidsstoringSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWVeiligheidsstoringSeinNavigation(),
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
                    title: 'Veiligheidsstoring aan een sein',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een veiligheidsstoring voorkom je rijweginstelling naar het betrokken sein. Bij overige storingen licht je de MCN in voordat je een rijweg instelt naar het betrokken sein.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'Wanneer een sein een beter seinbeeld toont dan op grond van de rijweginstelling mag worden verwacht, is er sprake van een veiligheidsstoring.',
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

class WWVeiligheidsstoringSeinNavigation extends StatelessWidget {
  const WWVeiligheidsstoringSeinNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWVeiligheidsstoringSein>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWVeiligheidsstoringSein result) async {
        if (result == WhereToGoFromWWVeiligheidsstoringSein.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWVeiligheidsstoringSein.ai_veiligheidsstoring_sein) {
          await Navigator.pushNamed(
            context,
            'ai_veiligheidsstoring_sein',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWVeiligheidsstoringSein>>[
        const PopupMenuItem<WhereToGoFromWWVeiligheidsstoringSein>(
          value: WhereToGoFromWWVeiligheidsstoringSein.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWVeiligheidsstoringSein>(
          value:
              WhereToGoFromWWVeiligheidsstoringSein.ai_veiligheidsstoring_sein,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Veiligheidsstoring Sein',
          ),
        ),
      ],
    );
  }
}
