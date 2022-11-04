import '/all_imports.dart';

enum WhereToGoFromAIWisselEindstand {
  // ignore: constant_identifier_names
  home_screen,
}

class AIWisselEindstand extends StatelessWidget {
  const AIWisselEindstand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIWisselEindstand>(
            icon: const Icon(IconUtils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIWisselEindstand result) async {
              if (result == WhereToGoFromAIWisselEindstand.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIWisselEindstand>>[
              const PopupMenuItem<WhereToGoFromAIWisselEindstand>(
                value: WhereToGoFromAIWisselEindstand.home_screen,
                child: MenuItemContent(
                  icon: IconUtils.iconHome,
                  text: 'Home',
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Card>[
              /*PROCEDURE CARD*/
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
      ),
    );
  }
}