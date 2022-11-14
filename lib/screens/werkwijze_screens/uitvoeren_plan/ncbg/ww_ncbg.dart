import '/all_imports.dart';

class WWNcbg extends StatelessWidget {
  const WWNcbg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWNcbgNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              /*PROCEDURE CARD*/
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'NCBG',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Sturingsniveau en uitzonderingen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Binnen een NCBG kent men in beginsel twee verschillende sturingsniveaus, namelijk:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text: '- Rijwegniveau;\n\n- TijdRuimte-slotniveau.',
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

class WWNcbgNavigation extends StatelessWidget {
  const WWNcbgNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_ncbg) {
          await Navigator.pushNamed(context, 'ai_ncbg');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_ncbg,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI NCBG',
          ),
        ),
      ],
    );
  }
}