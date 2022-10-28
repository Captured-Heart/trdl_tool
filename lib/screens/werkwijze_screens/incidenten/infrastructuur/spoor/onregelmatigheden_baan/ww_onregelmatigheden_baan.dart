import '/all_imports.dart';

enum WhereToGoFromWWOnregelmatighedenBaan {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_onregelmatigheden_baan,
}

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
                    subtitle: Strings.procedure,
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
    return PopupMenuButton<WhereToGoFromWWOnregelmatighedenBaan>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWOnregelmatighedenBaan result) async {
        if (result == WhereToGoFromWWOnregelmatighedenBaan.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWOnregelmatighedenBaan.ai_onregelmatigheden_baan) {
          await Navigator.pushNamed(context, 'ai_onregelmatigheden_baan');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWOnregelmatighedenBaan>>[
        const PopupMenuItem<WhereToGoFromWWOnregelmatighedenBaan>(
          value: WhereToGoFromWWOnregelmatighedenBaan.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOnregelmatighedenBaan>(
          value: WhereToGoFromWWOnregelmatighedenBaan.ai_onregelmatigheden_baan,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Onregelmatigheden Baan',
          ),
        ),
      ],
    );
  }
}
