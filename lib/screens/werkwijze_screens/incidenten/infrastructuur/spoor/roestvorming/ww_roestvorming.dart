import '/all_imports.dart';

class WWRoestvorming extends StatelessWidget {
  const WWRoestvorming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWRoestvormingNavigation(),
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
                    title: 'Roestvorming op geïsoleerde sporen',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer de norm voor roestvorming overschreden is, voorkom je rijweginstelling naar de betrokken infra en pas je de procedure roestrijden toe:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Leg de wissels in de rijweg vast;\n\n- Stel tegengestelde rijwegen uit;\n\n- Geef voor de overweg(en) in de rijweg een aanwijzing OVW af;\n\n- Stel een rijweg in over het betreffende spoor met geel knipper;\n\n- Volg de trein op het scherm;\n\n- Laat de MCN zich binnen melden.',
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
                        'Vuil en roest verminderen de kwaliteit van het wiel-rail contact. Om deze kwaliteit op voldoende niveau te handhaven moet het spoor regelmatig worden bereden. Het regelmatig berijden met het doel om de kwaliteit van de treindetectie op niveau te houden wordt roestrijden genoemd.',
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

class WWRoestvormingNavigation extends StatelessWidget {
  const WWRoestvormingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_roestvorming) {
          await Navigator.pushNamed(context, 'ai_roestvorming');
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
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
          value: PopupNavigation.ai_roestvorming,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Roestvorming',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 2',
          ),
        ),
      ],
    );
  }
}