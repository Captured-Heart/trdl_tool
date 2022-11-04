import '/all_imports.dart';

class WWGestoordWissel extends StatelessWidget {
  const WWGestoordWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWGestoordWisselNavigation(),
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
                    title: 'Gestoord wissel',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Verhinder het wissel voor bediening en stel de laatst gestuurde stand vast. Stel vast of het wissel eendelig of meerdelig is.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Eendelig: laat het wissel met de punt mee berijden, met een controle opdracht en een aanwijzing STS, in de laatst gestuurde stand. Doe dit door middel van de procedure SSCV*. In alle overige situaties laat je het wissel niet berijden, tenzij de plaatselijke regelgeving anders aangeeft;\n\n- Meerdelig: laat het wissel niet berijden tot na toestemming van de storingsdienst.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '* SSCV staat voor:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'S = Stoppen voor het wissel;\nS = Stand van het wissel controleren;\nC = Controleren of de wisseltongen aansluiten en er geen uiterlijke beschadigingen zijn;\nV = voorzichtig berijden met max 10 km/h.',
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
                        'Bij een gestoord wissel kan de TRDL geen bedienopdracht meer geven aan het wissel. Dit kan komen doordat de bedienopdracht niet aangekomen is bij het wissel, het wissel niet volledig is omgelopen, of de eindstand van het wissel niet terug gemeld wordt aan de bediening.',
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

class WWGestoordWisselNavigation extends StatelessWidget {
  const WWGestoordWisselNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_wissel_gestoord) {
          await Navigator.pushNamed(context, 'ai_wissel_gestoord');
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
          value: PopupNavigation.ai_wissel_gestoord,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Gestoord Wissel',
          ),
        ),
      ],
    );
  }
}