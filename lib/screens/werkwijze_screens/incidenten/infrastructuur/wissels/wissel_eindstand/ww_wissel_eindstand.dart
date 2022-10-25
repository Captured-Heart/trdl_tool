import '/all_imports.dart';

enum WhereToGoFromWWWisselEindstand {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_wissel_eindstand,
}

class WWWisselEindstand extends StatelessWidget {
  const WWWisselEindstand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWWisselEindstand>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWWisselEindstand result) async {
              if (result == WhereToGoFromWWWisselEindstand.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWWisselEindstand.ai_wissel_eindstand) {
                await Navigator.pushNamed(context, 'ai_wissel_eindstand');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWWisselEindstand>>[
              const PopupMenuItem<WhereToGoFromWWWisselEindstand>(
                value: WhereToGoFromWWWisselEindstand.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWisselEindstand>(
                value: WhereToGoFromWWWisselEindstand.ai_wissel_eindstand,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Wissel Eindstand',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Wissel komt niet in de gevraagde eindstand',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Probeer het wissel meerdere keren om te leggen. Wanneer het wissel maar in één stand in de controle komt, leg je het wissel in die stand vast.',
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
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Logistiek risico.',
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
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer een wissel niet in de gevraagde eindstand komt, probeert het wissel gedurende 1 minuut alsnog in de eindstand te komen. Lukt dit niet, dan stopt in de meeste gevallen de wisselmotor. De communicatie met het wissel is niet gestoord en het wissel kan dus nog steeds een opdracht aannemen.',
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
