import '/all_imports.dart';

enum WhereToGoFromAIOpengeredenWissel {
  // ignore: constant_identifier_names
  home_screen,
}

class AIOpengeredenWissel extends StatelessWidget {
  const AIOpengeredenWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIOpengeredenWissel>(
            icon: const Icon(IconUtils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIOpengeredenWissel result) async {
              if (result == WhereToGoFromAIOpengeredenWissel.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIOpengeredenWissel>>[
              const PopupMenuItem<WhereToGoFromAIOpengeredenWissel>(
                value: WhereToGoFromAIOpengeredenWissel.home_screen,
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