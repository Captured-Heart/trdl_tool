import '/all_imports.dart';

class WWStoringBrug extends StatelessWidget {
  const WWStoringBrug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWStoringBrugNavigation(),
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
                    title: 'Storing beweegbare brug',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je mag een gestoorde beweegbare brug alleen laten berijden na toestemming van de storingsdienst.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'Wanneer een beweegbare brug door een storing niet in de vergrendeling ligt, is het beweegbare gedeelte van de brug niet veilig berijdbaar. Een storingsmonteur kan ter plaatse beoordelen of en onder welke voorwaarden de brug bereden kan worden.',
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

class WWStoringBrugNavigation extends StatelessWidget {
  const WWStoringBrugNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_kunstwerken_storing) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_storing');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_kunstwerken_storing,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Storing Brug',
          ),
        ),
      ],
    );
  }
}