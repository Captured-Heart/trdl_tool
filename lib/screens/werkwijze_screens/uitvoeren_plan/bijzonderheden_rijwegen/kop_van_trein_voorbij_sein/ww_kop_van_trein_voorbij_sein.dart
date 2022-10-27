import '/all_imports.dart';

enum WhereToGoFromWWKopVanTreinVoorbijSein {
  // ignore: constant_identifier_names
  home_screen,
}

class WWKopVanTreinVoorbijSein extends StatelessWidget {
  const WWKopVanTreinVoorbijSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWKopVanTreinVoorbijSeinNavigation(),
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
                    title: 'Kop van de trein/rangeerdeel voorbij het sein',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je stelt een rijweg in en deelt de MCN mee dat het sein uit de stand stop is gebracht, of je neemt veiligheidsmaatregelen en geeft de MCN opdracht om te gaan rijden.',
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
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt.',
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
                        'Wanneer de kop van de trein of rangeerdeel bij vertrek voorbij het sein staat, kan de MCN niet waarnemen of het sein veilig staat voor vertrek en kan het vertrekproces niet gestart worden.',
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

class WWKopVanTreinVoorbijSeinNavigation extends StatelessWidget {
  const WWKopVanTreinVoorbijSeinNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWKopVanTreinVoorbijSein>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWKopVanTreinVoorbijSein result) async {
        if (result == WhereToGoFromWWKopVanTreinVoorbijSein.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWKopVanTreinVoorbijSein>>[
        const PopupMenuItem<WhereToGoFromWWKopVanTreinVoorbijSein>(
          value: WhereToGoFromWWKopVanTreinVoorbijSein.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
      ],
    );
  }
}
