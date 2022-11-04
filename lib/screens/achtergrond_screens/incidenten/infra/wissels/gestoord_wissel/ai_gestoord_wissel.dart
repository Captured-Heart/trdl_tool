import '/all_imports.dart';

enum WhereToGoFromAIGestoordWissel {
  // ignore: constant_identifier_names
  home_screen,
}

class AIGestoordWissel extends StatelessWidget {
  const AIGestoordWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIGestoordWissel>(
            icon: const Icon(IconUtils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIGestoordWissel result) async {
              if (result == WhereToGoFromAIGestoordWissel.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIGestoordWissel>>[
              const PopupMenuItem<WhereToGoFromAIGestoordWissel>(
                value: WhereToGoFromAIGestoordWissel.home_screen,
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