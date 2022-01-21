import 'package:trdl_tool/core/all_imports.dart';

class Infra extends StatelessWidget {
  const Infra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Infrastructuur',
        ),
        actions: const [
          HomeButton(),
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
                        text: 'Bij een melding gestoorde of defecte infra, handel je als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Bepaal de urgentie en neem samen met de DVL een verdelingsbesluit over de directe gevolgen van de storing;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Meld de storing aan bij de MKS/BO onder vermelding van urgent/urgent met tijdsafspraak/niet urgent. Indien aanwezig, vermeld je het nummer van de storings WBI. Geef aan of en wanneer urgent herstel met tijdsafspraak moet of kan plaatsvinden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Wanneer de geschatte aankomsttijd bekend is, bepaal je samen met de DVL de exacte aanvang en einde van de beschikbaar te stellen infracapaciteit met een maximale periode van 25 minuten;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Na deze analyse maak je in overleg met de LWB een heroverweging over urgent/urgent met tijdsafspraak/niet urgent herstel en informeer je de DVL.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Het streven is de infracapaciteit beschikbaar te stellen binnen 10 minuten na prognose aankomst LWB. Als er geen urgent herstel plaats hoeft te vinden en je de gestoorde infra wel laat berijden, dan kan een analyse op veilige berijdbaarheid nodig zijn. Dit hoor je van de MKS/BO.',
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
                            destination: 'wissels',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Overwegen',
                            destination: 'overwegen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Beveiliging',
                            destination: 'beveiliging',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bovenleiding',
                            destination: 'bovenleiding',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Spoor',
                            destination: 'spoor',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Kunstwerken',
                            destination: 'kunstwerken',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Sectiestoring',
                            destination: 'sectiestoring',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Bij het afhandelen van defecte of gestoord infra is bovenstaande procedure de algemene afspraak. Voor de afhandeling van specifieke infra-incidenten staan de procedures beschreven in de betreffende hoofdstukken.',
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
