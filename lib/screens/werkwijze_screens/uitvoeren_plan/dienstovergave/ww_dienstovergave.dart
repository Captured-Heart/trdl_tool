import '/all_imports.dart';

enum WhereToGoFromWWDienstovergave {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_dienstovergave,
}

class WWDienstovergave extends StatelessWidget {
  const WWDienstovergave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWDienstovergave>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWDienstovergave result) async {
              if (result == WhereToGoFromWWDienstovergave.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWDienstovergave.ai_dienstovergave) {
                await Navigator.pushNamed(context, 'ai_dienstovergave');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWDienstovergave>>[
              const PopupMenuItem<WhereToGoFromWWDienstovergave>(
                value: WhereToGoFromWWDienstovergave.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconInfo,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWDienstovergave>(
                value: WhereToGoFromWWDienstovergave.ai_dienstovergave,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Dienstovergave',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Dienstovergave',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Om de dienst over te dragen/over te nemen maak je gebruik van het 'dienstovergave formulier'. Door het invullen van dit formulier borg je een uniforme manier van dienstovergave of dienstovername.\n\nJe draagt of neemt de dienst persoonlijk over na elke onderbreking van je reguliere dienst. Je spreekt samen de bijzonderheden door en tekent het formulier voor overgave of overname.",
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het rijden van treinen op sporen waarop zij niet of met beperkingen mogen rijden.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een TRDL draagt de verantwoordelijkheid voor een bediengebied over aan een bevoegd TRDL, waarbij hij deze informeert over bijzonderheden die afwijken van het oorspronkelijke plan en waarvoor eventuele aanpassingen moeten worden gedaan.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}