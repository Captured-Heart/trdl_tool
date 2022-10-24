import '/all_imports.dart';

enum WhereToGoFromAISeinenBasis2 {
  // ignore: constant_identifier_names
  home_screen,
}

class AISeinenBasis2 extends StatelessWidget {
  const AISeinenBasis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAISeinenBasis2>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAISeinenBasis2 result) async {
              if (result == WhereToGoFromAISeinenBasis2.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAISeinenBasis2>>[
              const PopupMenuItem<WhereToGoFromAISeinenBasis2>(
                value: WhereToGoFromAISeinenBasis2.home_screen,
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
                      title: 'Seinen - basisinformatie 2',
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