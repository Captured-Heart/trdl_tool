import '/all_imports.dart';

class AIWisselEindstand extends StatelessWidget {
  const AIWisselEindstand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIWisselEindstandNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <TitleText>[
                  TitleText(
                    title: 'Wissel niet in eindstand',
                  ),
                ],
              ),
              TextCard(
                widgetList: <SubTitleText>[
                  SubTitleText(
                    subtitle: 'Work in progress...',
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

class AIWisselEindstandNavigation extends StatelessWidget {
  const AIWisselEindstandNavigation({Key? key}) : super(key: key);

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