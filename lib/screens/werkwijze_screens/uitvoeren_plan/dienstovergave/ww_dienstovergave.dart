import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWDienstovergave { home_screen, ai_dienstovergave }

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
        actions: [
          PopupMenuButton<WhereToGoFromWWDienstovergave>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWDienstovergave result) {
              if (result == WhereToGoFromWWDienstovergave.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWDienstovergave.ai_dienstovergave) {
                Navigator.pushNamed(context, 'ai_dienstovergave');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWDienstovergave>>[
              PopupMenuItem<WhereToGoFromWWDienstovergave>(
                value: WhereToGoFromWWDienstovergave.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWDienstovergave>(
                value: WhereToGoFromWWDienstovergave.ai_dienstovergave,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Dienstovergave'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
                          'Om de dienst over te dragen/over te nemen maak je gebruik van het \'dienstovergave formulier\'. Door het invullen van dit formulier borg je een uniforme manier van dienstovergave of dienstovername.\n\nJe draagt of neemt de dienst persoonlijk over na elke onderbreking van je reguliere dienst. Je spreekt samen de bijzonderheden door en tekent het formulier voor overgave of overname.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
