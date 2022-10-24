import '/all_imports.dart';

enum WhereToGoFromAIBeveiligingBasis2 {
  // ignore: constant_identifier_names
  home_screen,
}

class AIBeveiligingBasis2 extends StatelessWidget {
  const AIBeveiligingBasis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIBeveiligingBasis2>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBeveiligingBasis2 result) async {
              if (result == WhereToGoFromAIBeveiligingBasis2.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBeveiligingBasis2>>[
              const PopupMenuItem<WhereToGoFromAIBeveiligingBasis2>(
                value: WhereToGoFromAIBeveiligingBasis2.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
            ],
          ),
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
                      title: 'Beveiliging Basis 2',
                    ),
                    SizedBoxH(),
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
                  children: const <TitleText>[
                    TitleText(
                      title: 'Work In Progress...',
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