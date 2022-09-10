import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIGevaarlijkeStoffenMilieu {
  home_screen,
}

class AIGevaarlijkeStoffenMilieu extends StatelessWidget {
  const AIGevaarlijkeStoffenMilieu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIGevaarlijkeStoffenMilieu>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIGevaarlijkeStoffenMilieu result) {
              if (result ==
                  WhereToGoFromAIGevaarlijkeStoffenMilieu.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIGevaarlijkeStoffenMilieu>>[
              const PopupMenuItem<WhereToGoFromAIGevaarlijkeStoffenMilieu>(
                value: WhereToGoFromAIGevaarlijkeStoffenMilieu.home_screen,
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
                      title: 'Gevaarlijke Stoffen & Milieu',
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
