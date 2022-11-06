import '/all_imports.dart';

class AIGevaarlijkeStoffenMilieu extends StatelessWidget {
  const AIGevaarlijkeStoffenMilieu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIGevaarlijkeStoffenMilieuNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Gevaarlijke Stoffen & Milieu',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <TitleText>[
                  TitleText(
                    title: 'Work In Progress...',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIGevaarlijkeStoffenMilieuNavigation extends StatelessWidget {
  const AIGevaarlijkeStoffenMilieuNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
      ],
    );
  }
}
