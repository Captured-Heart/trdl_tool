import '/all_imports.dart';

class WWTegenRijrichting extends StatelessWidget {
  const WWTegenRijrichting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWTegenRijrichtingNavigation(),
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
                    title: 'Tegen de rijrichting rijden',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Links rijden tegen de rijrichting bij linkerspoor beveiliging:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text: '- Geef een aanwijzing OVW af voor alle overwegen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Rechts rijden tegen rijrichting bij linkerspoor beveiliging:',
                  ),
                  BodyText(
                    indents: 1,
                    text: '* Toegestaan wanneer:',
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        '1. De overwegen zijn voorzien van een extra aankonigingssectie plus aanwijzing OVW;\n2. Het baanvak is uitgerust met ULS, óf;\n3. Er geen overwegen zijn.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Keren op de vrije baan bij dubbel/enkelspoor beveiliging:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Geef een aanwijzing OVW af voor de overwegen waarvan de trein de aankondiging volledig gepasseerd is.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'De blokbeveiliging controleert bij rijweginstelling de dynamische voorwaarden bij rijrichting naar de vrije baan. Bij het rijden tegen de rijrichting in wordt niet aan alle dynamische voorwaarden voldaan, waardoor de blokbeveiliging niet of niet volledig werkt.',
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

class WWTegenRijrichtingNavigation extends StatelessWidget {
  const WWTegenRijrichtingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_tegen_rijrichting) {
          await Navigator.pushNamed(context, 'ai_tegen_rijrichting');
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
          value: PopupNavigation.ai_tegen_rijrichting,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Tegen de Rijrichting',
          ),
        ),
      ],
    );
  }
}