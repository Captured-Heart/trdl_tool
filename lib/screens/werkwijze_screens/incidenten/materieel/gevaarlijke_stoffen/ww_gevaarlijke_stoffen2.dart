import '/all_imports.dart';

enum WhereToGoFromWWGevaarlijkeStoffen2 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_gevaarlijke_stoffen,
}

class WWGevaarlijkeStoffen2 extends StatelessWidget {
  const WWGevaarlijkeStoffen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWGevaarlijkeStoffen2Navigation(),
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
                    title: 'Gevaarlijke stoffen',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als je een onregelmatigheid met gevaarlijke stoffen gemeld krijgt, neem je de volgende maatregelen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Staak de trein- en rangeerdienst op het betrokken gebied;\n\n- Voorkom rijweginstelling naar het betrokken gebied;\n\n- Laat de MKS/BO de wisselverwarming doven.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Jouw melding bevat in ieder geval:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De plaats van de onregelmatigheid;\n\n- De betrokken trein;\n\n- De aard van de onregelmatigheid.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'En indien mogelijk:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- GEVI-nummer;\n\n- UN-nummer;\n\n- Gevaaretiket;\n\n- Plaats van de wagen in de trein;\n\n- Wagennummer.',
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
                        'Een trein waarbij een incident met gevaarlijke stoffen optreedt mag niet verder rijden. Afhankelijk van de gevaarlijke stof moet de trein- en rangeerdienst gestaakt worden. De hulpdiensten bepalen op basis van windrichting, locatie, gevaarlijke stof en/of grootte van uitstroom hun inzet.',
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

class WWGevaarlijkeStoffen2Navigation extends StatelessWidget {
  const WWGevaarlijkeStoffen2Navigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWGevaarlijkeStoffen2>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWGevaarlijkeStoffen2 result) async {
        if (result == WhereToGoFromWWGevaarlijkeStoffen2.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWGevaarlijkeStoffen2.ai_gevaarlijke_stoffen) {
          await Navigator.pushNamed(context, 'ai_gevaarlijke_stoffen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWGevaarlijkeStoffen2>>[
        const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen2>(
          value: WhereToGoFromWWGevaarlijkeStoffen2.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen2>(
          value: WhereToGoFromWWGevaarlijkeStoffen2.ai_gevaarlijke_stoffen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Gevaarlijke Stoffen',
          ),
        ),
      ],
    );
  }
}