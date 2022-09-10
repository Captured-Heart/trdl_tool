import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIVerlorenOnderdelen {
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
        actions: [
          PopupMenuButton<WhereToGoFromAIVerlorenOnderdelen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIVerlorenOnderdelen result) {
              if (result == WhereToGoFromAIVerlorenOnderdelen.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIVerlorenOnderdelen>>[
              const PopupMenuItem<WhereToGoFromAIVerlorenOnderdelen>(
                value: WhereToGoFromAIVerlorenOnderdelen.home_screen,
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
          children: [
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
