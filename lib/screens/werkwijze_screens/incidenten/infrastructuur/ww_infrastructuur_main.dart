import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWInfraMain { home_screen }

class WWInfraMain extends StatelessWidget {
  const WWInfraMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWInfraMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWInfraMain result) {
              if (result == WhereToGoFromWWInfraMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWInfraMain>>[
              const PopupMenuItem<WhereToGoFromWWInfraMain>(
                value: WhereToGoFromWWInfraMain.home_screen,
                child: Text('Home'),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        title: 'Infra',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
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
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
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
                            'Bij het afhandelen van defecte of gestoord infra is bovenstaande procedure de algemene afspraak. Voor de afhandeling van specifieke infra-incidenten staan de procedures beschreven in de betreffende hoofdstukken.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
