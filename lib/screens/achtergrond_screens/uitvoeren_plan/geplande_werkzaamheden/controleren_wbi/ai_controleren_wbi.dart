import '/all_imports.dart';

class AIControlerenWBI extends StatelessWidget {
  const AIControlerenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIControlerenWBINavigation(),
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
                    title: 'Controleren WBI',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Toetscriteria WBI/WECO',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Voor aanvang van de werkzaamheden controleer je of:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Niet onbedoeld een rijweg instelbaar is naar het gebied genoemd in de rubriek 'aanduiding van de buitendienststelling';\n\n- De maatregelen van de LWB invloed hebben op jouw eigen maatregelen;\n\n- Bij werkplekbeveiliging met de zelfsignalerende kortsluitlans er geen rijweg ingesteld moet worden vanaf de vrije baan, tenzij de vrije baan onderdeel is van de buitendienststelling;\n\n- Ben jij in de WBI/WECO aangewezen als communicerend TRDL dan stel je vast of:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 2,
                    text:
                        '* De betrokken TRDL(s) in het bezit is (zijn) van de juiste WBI/WECO;\n\n* Er geen factoren zijn die de aanvang van de werkzaamheden kunnen beïnvloeden.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiOverzicht.png',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Je hebt in procesleiding de beschikking over een koppeling met het WBI kantoor. Dit helpt met het controleren van de WBI.\n\nVia de database zijn de te keuren WBI's terug te vinden. Deze hebben de status 'niet gekeurd'.  Alle maatregelen die al zijn ingevoerd zijn terug te vinden en door middel van de preview functie zijn alle periodes van een WBI van tevoren te bekijken via een voorbeeld in een oranje kleur.\n\nAls een WBI/WECO gekeurd is, krijgt deze de status 'goedgekeurd' of 'afgekeurd' door jou toegewezen in procesleiding.",
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

class AIControlerenWBINavigation extends StatelessWidget {
  const AIControlerenWBINavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_controleren_wbi) {
          await Navigator.pushNamed(context, 'ww_controleren_wbi');
        } else if (result == PopupNavigation.ai_fouten_wbi) {
          await Navigator.pushNamed(context, 'ai_fouten_wbi');
        } else if (result == PopupNavigation.ai_geplande_werkzaamheden_basis) {
          await Navigator.pushNamed(context, 'ai_geplande_werkzaamheden_basis');
        } else if (result == PopupNavigation.ai_aanvang_werkzaamheden) {
          await Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
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
          value: PopupNavigation.ww_controleren_wbi,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Controleren WBI',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_fouten_wbi,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Fouten in de WBI',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_geplande_werkzaamheden_basis,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Geplande Werkzaamheden',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_aanvang_werkzaamheden,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanvang Werkzaamheden',
          ),
        ),
      ],
    );
  }
}
