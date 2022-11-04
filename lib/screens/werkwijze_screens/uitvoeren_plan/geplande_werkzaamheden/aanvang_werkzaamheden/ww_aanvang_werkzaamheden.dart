import '/all_imports.dart';

enum WhereToGoFromWWAanvangWerkzaamheden {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_aanvang_werkzaamheden,
}

class WWAanvangWerkzaamheden extends StatelessWidget {
  const WWAanvangWerkzaamheden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWAanvangWerkzaamhedenNavigation(),
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
                    title: 'Aanvang Werkzaamheden',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Neem de (veiligheids)maatregelen die in de WBI/WECO zijn vermeld of met de LWB zijn afgesproken;\n\n- Meld de LWB dat je de infracapaciteit benoemd op de WBI/WECO beschikbaar hebt gesteld voor werkzaamheden.',
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
                        'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                  ),
                ],
              ),
              /*CONTEXT CARD*/
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij geplande werkzaamheden wordt in de voorbereiding op de werkzaamheden een werkplekbeveiligingsinstructie (WBI) gemaakt. In de WBI/WECO worden de gemaakte afspraken voor de werkplekbeveiliging vastgelegd.\n\nVoorafgaand aan de werkzaamheden stellen TRDL en LWB samen vast of ze over dezelfde WBI/WECO beschikken.',
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

class WWAanvangWerkzaamhedenNavigation extends StatelessWidget {
  const WWAanvangWerkzaamhedenNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWAanvangWerkzaamheden>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWAanvangWerkzaamheden result) async {
        if (result == WhereToGoFromWWAanvangWerkzaamheden.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWAanvangWerkzaamheden.ai_aanvang_werkzaamheden) {
          await Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWAanvangWerkzaamheden>>[
        const PopupMenuItem<WhereToGoFromWWAanvangWerkzaamheden>(
          value: WhereToGoFromWWAanvangWerkzaamheden.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWAanvangWerkzaamheden>(
          value: WhereToGoFromWWAanvangWerkzaamheden.ai_aanvang_werkzaamheden,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanvang Werkzaamheden',
          ),
        ),
      ],
    );
  }
}