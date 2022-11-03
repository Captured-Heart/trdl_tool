import '/all_imports.dart';

class WWOnregelmatighedenBaan extends StatelessWidget {
  const WWOnregelmatighedenBaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOnregelmatighedenBaanNavigation(),
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
                    title: 'Onregelmatigheden aan de baan',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer een onregelmatigheid aan de baan gemeld wordt, geef je een aanwijzing VR af. Dit doe je totdat de storingsdienst anders aangeeft, of wanneer deze snelheidsbeperking vermeld staat in de van kracht zijnde TSB-Dag- of Weekpublicatie.',
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
                        'Als TRDL heb je na een melding van een onregelmatigheid aan de baan geen zicht op de exacte toestand van het spoor. Daarom moet een MCN met aangepaste snelheid (maximaal 40 km/h) rijden tot de storingsdienst ter plaatse is. De MCN kan dan op tijd stoppen voor het gevaarpunt De storingsmonteur kan de exacte toestand van de baan bepalen en geeft aan of de railinfra veilig bereden kan worden en onder welke voorwaarden.',
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

class WWOnregelmatighedenBaanNavigation extends StatelessWidget {
  const WWOnregelmatighedenBaanNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_onregelmatigheden_baan) {
          await Navigator.pushNamed(context, 'ai_onregelmatigheden_baan');
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
          value: PopupNavigation.ai_onregelmatigheden_baan,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Onregelmatigheden Baan',
          ),
        ),
      ],
    );
  }
}