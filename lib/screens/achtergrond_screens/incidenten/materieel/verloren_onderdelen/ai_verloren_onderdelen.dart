import '/all_imports.dart';

enum WhereToGoFromAIVerlorenOnderdelen {
  // ignore: constant_identifier_names
  home_screen,
}

class AIVerlorenOnderdelen extends StatelessWidget {
  const AIVerlorenOnderdelen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIVerlorenOnderdelen>(
            icon: const Icon(IconUtils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIVerlorenOnderdelen result) async {
              if (result == WhereToGoFromAIVerlorenOnderdelen.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIVerlorenOnderdelen>>[
              const PopupMenuItem<WhereToGoFromAIVerlorenOnderdelen>(
                value: WhereToGoFromAIVerlorenOnderdelen.home_screen,
                child: MenuItemContent(
                  icon: IconUtils.iconHome,
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
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Verloren Onderdelen',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
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