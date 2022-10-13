import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWVasteRem {
  home_screen,
  ai_materieel_main,
  ai_vaste_rem,
}

class WWVasteRem extends StatelessWidget {
  const WWVasteRem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWVasteRem>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWVasteRem result) {
              if (result == WhereToGoFromWWVasteRem.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWVasteRem.ai_materieel_main) {
                Navigator.pushNamed(context, 'ai_materieel_main');
              } else if (result == WhereToGoFromWWVasteRem.ai_vaste_rem) {
                Navigator.pushNamed(context, 'ai_vaste_rem');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWVasteRem>>[
              const PopupMenuItem<WhereToGoFromWWVasteRem>(
                value: WhereToGoFromWWVasteRem.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWVasteRem>(
                value: WhereToGoFromWWVasteRem.ai_materieel_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Materieel',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWVasteRem>(
                value: WhereToGoFromWWVasteRem.ai_vaste_rem,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Vaste Rem',
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
                      title: 'Vaste rem',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Na een melding van een vaste rem/rook of vuur onder de trein:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Geef je de MCN opdracht de trein beheerst tot stilstand te brengen;\n\n- Stel je de gevraagde infra ter beschikking aan de MCN (nevenspoor);\n\n- De MCN geeft aan onder welke omstandigheden hij verder mag rijden.',
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
                          'Trein komt niet tijdig tot stilstand voor het gevaarpunt.',
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
                          'Een vaste rem verhit de wielband. Wanneer de temperatuur te hoog oploopt, kan de wielband van het wiel lopen. Het is van belang de trein zo recht mogelijk door wissels te laten rijden.',
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
