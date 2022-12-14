import '/all_imports.dart';

class WWDerdenDieren extends StatelessWidget {
  const WWDerdenDieren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWDerdenDierenNavigation(),
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
                    title: 'Derden en/of dieren langs de baan',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Na de melding van onbevoegden en/of dieren op of langs het spoor met (potentieel) gevaar voor schade aan mens, materieel en/of infra, handel je als volgt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Geef een aanwijzing VR en een schouwopdracht af;\n\n- Staak het afgeven van aanwijzingen na 2 opeenvolgende nihil meldingen;\n\n- Indien de MCN meldt dat de onbevoegde of het dier zich nog steeds op of langs het spoor bevindt of er in het komende half uur geen trein rijdt, informeer je de MKS/BO;\n\n- Indien de MKS/BO is ingelicht of de melding van de MKS/BO is verkregen, staak je pas het afgeven van aanwijzingen na toestemming van de MKS/BO.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Om aangereden dieren te verwijderen, licht je MKS/BO in.',
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
                        'Het spoor is afgesloten voor onbevoegden en/of dieren. Betreden van het spoor door onbevoegden en/of dieren kan een gevaarlijke situatie opleveren voor betrokkenen en/of de treindienst. Een MCN kan ter plaatse het risico op een gevaarlijke situatie beoordelen.\n\nDe TRDL meldt onbevoegden en/of dieren langs het spoor zodat deze verwijderd kunnen worden en/of de afscheiding van het spoor hersteld kan worden.',
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

class WWDerdenDierenNavigation extends StatelessWidget {
  const WWDerdenDierenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_derden_dieren) {
          await Navigator.pushNamed(context, 'ai_derden_dieren');
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
          value: PopupNavigation.ai_derden_dieren,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Derden / Dieren',
          ),
        ),
      ],
    );
  }
}