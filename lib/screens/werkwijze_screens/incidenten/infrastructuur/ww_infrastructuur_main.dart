import '/all_imports.dart';

class WWInfraMain extends StatelessWidget {
  const WWInfraMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWInfrastructuurMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Infra',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een melding gestoorde of defecte infra, handel je als volgt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Bepaal de urgentie en neem samen met de DVL een verdelingsbesluit over de directe gevolgen van de storing;\n\n- Meld de storing aan bij de MKS/BO onder vermelding van urgent/urgent met tijdsafspraak/niet urgent. Indien aanwezig, vermeld je het nummer van de storings WBI. Geef aan of en wanneer urgent herstel met tijdsafspraak moet of kan plaatsvinden;\n\n- Wanneer de geschatte aankomsttijd bekend is, bepaal je samen met de DVL de exacte aanvang en einde van de beschikbaar te stellen infracapaciteit met een maximale periode van 25 minuten;\n\n- Na deze analyse maak je in overleg met de LWB een heroverweging over urgent/urgent met tijdsafspraak/niet urgent herstel en informeer je de DVL.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het streven is de infracapaciteit beschikbaar te stellen binnen 10 minuten na prognose aankomst LWB. Als er geen urgent herstel plaats hoeft te vinden en je de gestoorde infra wel laat berijden, dan kan een analyse op veilige berijdbaarheid nodig zijn. Dit hoor je van de MKS/BO.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      NavButton(
                        buttontext: 'Wissels',
                        destination: 'ww_wissels_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Overwegen',
                        destination: 'ww_overwegen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Beveiliging',
                        destination: 'ww_beveiliging_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bovenleiding',
                        destination: 'ww_bovenleiding_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Spoor',
                        destination: 'ww_spoor_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kunstwerken',
                        destination: 'ww_kunstwerken_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Sectiestoring',
                        destination: 'ww_sectiestoring',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij het afhandelen van defecte of gestoord infra is bovenstaande procedure de algemene afspraak. Voor de afhandeling van specifieke infra-incidenten staan de procedures beschreven in de betreffende hoofdstukken.',
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

class WWInfrastructuurMainNavigation extends StatelessWidget {
  const WWInfrastructuurMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_infrastructuur_main) {
          await Navigator.pushNamed(context, 'ai_infrastructuur_main');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
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
          value: PopupNavigation.ai_infrastructuur_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}