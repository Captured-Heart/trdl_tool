import '/all_imports.dart';

class AIVeiligheidsstoringSein extends StatelessWidget {
  const AIVeiligheidsstoringSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIVeiligheidsstoringSeinNavigation(),
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
                    title: 'Veiligheidsstoring aan een sein',
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

class AIVeiligheidsstoringSeinNavigation extends StatelessWidget {
  const AIVeiligheidsstoringSeinNavigation({Key? key}) : super(key: key);

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