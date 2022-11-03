import '/all_imports.dart';

class WWResetAssenteller extends StatelessWidget {
  const WWResetAssenteller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWResetAssetellerNavigation(),
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
                    title: 'Reset assenteller AzLM',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorbereidende reset',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer de monteur zich meldt voor het uitvoeren van een voorbereidende reset zorg je dat de betreffende sporen en/of wissels treinvrij zijn en blijven.\n\nNadat de monteur de voorbereidende reset heeft uitgevoerd:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Zorg je dat een veegtrein klaarstaat om de betreffende sporen en/of wissels te berijden;\n\n- Laat je de veegtrein na toestemming van de monteur vertrekken en laat je de MCN zich melden wanneer hij de betreffende sporen en/of wissels in zijn geheel heeft bereden;\n\n- Meld je monteur wanneer de veegtrein de betreffende sporen en/of wissels in zijn geheel heeft bereden.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Harde reset',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer de monteur zich meldt voor het uitvoeren van een harde reset zorg je dat de betreffende sporen en/of wissels treinvrij zijn en blijven. Je meldt dit aan de monteur. Wanneer je geen uitspraak kunt doen over het treinvrij zijn van de betreffende sporen en/of wissels meld je dit ook aan de monteur.',
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
                        'Wanneer een assentelinstallatie niet met zekerheid kan vaststellen of het saldo van het aantal in- en uitgaande assen nul is, onstaat een gestoorde sectie.\n\nDe voorbereidende reset is de meest veilige manier om een sectie weer vrij te melden na een storing of defect, omdat de veegtrein controleert dat de sectie daadwerkelijk vrij en onbezet is en het assentelsysteem correct functioneert. De ingezette veegtrein mag ook een trein met reizigers zijn.\n\nWanneer een voorbereidende reset niet mogelijk is kan een harde reset gegeven worden.',
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

class WWResetAssetellerNavigation extends StatelessWidget {
  const WWResetAssetellerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_assenteller) {
          await Navigator.pushNamed(context, 'ai_assenteller');
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
          value: PopupNavigation.ai_assenteller,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Assenteller',
          ),
        ),
      ],
    );
  }
}