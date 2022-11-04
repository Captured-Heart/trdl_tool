import '/all_imports.dart';

class WWWisselEindstand extends StatelessWidget {
  const WWWisselEindstand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWWisselEindstandNavigation(),
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
                    title: 'Wissel komt niet in de gevraagde eindstand',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Probeer het wissel meerdere keren om te leggen. Wanneer het wissel maar in één stand in de controle komt, leg je het wissel in die stand vast.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Logistiek risico.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer een wissel niet in de gevraagde eindstand komt, probeert het wissel gedurende 1 minuut alsnog in de eindstand te komen. Lukt dit niet, dan stopt in de meeste gevallen de wisselmotor. De communicatie met het wissel is niet gestoord en het wissel kan dus nog steeds een opdracht aannemen.',
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

class WWWisselEindstandNavigation extends StatelessWidget {
  const WWWisselEindstandNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_wissel_eindstand) {
          await Navigator.pushNamed(context, 'ai_wissel_eindstand');
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
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_wissel_eindstand,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Wissel Eindstand',
          ),
        ),
      ],
    );
  }
}