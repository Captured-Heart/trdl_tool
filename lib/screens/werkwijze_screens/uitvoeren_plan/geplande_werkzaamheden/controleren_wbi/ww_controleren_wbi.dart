import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWControlerenWBI {
  home_screen,
  ai_controleren_wbi,
  ai_fouten_wbi,
}

class WWControlerenWBI extends StatelessWidget {
  const WWControlerenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWControlerenWBI>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWControlerenWBI result) {
              if (result == WhereToGoFromWWControlerenWBI.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWControlerenWBI.ai_controleren_wbi) {
                Navigator.pushNamed(context, 'ai_controleren_wbi');
              } else if (result ==
                  WhereToGoFromWWControlerenWBI.ai_fouten_wbi) {
                Navigator.pushNamed(context, 'ai_fouten_wbi');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWControlerenWBI>>[
              const PopupMenuItem<WhereToGoFromWWControlerenWBI>(
                value: WhereToGoFromWWControlerenWBI.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWControlerenWBI>(
                value: WhereToGoFromWWControlerenWBI.ai_controleren_wbi,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Controleren WBI',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWControlerenWBI>(
                value: WhereToGoFromWWControlerenWBI.ai_fouten_wbi,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Fouten WBI',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'Controleren WBI',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor aanvang van de werkzaamheden controleer je of:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Niet onbedoeld een rijweg instelbaar is naar de buitendienststelling;\n\n- De veiligheidsmaatregelen van de LWB invloed hebben op je eigen veiligheidsmaatregelen;\n\n- Voldaan is aan de toetscriteria WBI/WECO die beschreven zijn in de werkinstructie WBI/WECO.',
                    ),
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
                          'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
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
                          'In de voorbereiding is de treindienst aangepast aan de werkzaamheden. Fouten in de WBI/WECO kunnen ervoor zorgen dat werkplekbeveiligingsmaatregelen van de TRDL en/of de LWB niet of niet juist getroffen kunnen worden.\n\nFouten kunnen gecorrigeerd worden in overleg met de afdeling Werkplekbeveiliging.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
