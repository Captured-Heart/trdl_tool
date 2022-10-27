import '/all_imports.dart';

enum WhereToGoFromWWNcbg {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ncbg,
}

class WWNcbg extends StatelessWidget {
  const WWNcbg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWNCBGNavigation(),
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

class WWNCBGNavigation extends StatelessWidget {
  const WWNCBGNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWNcbg>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWNcbg result) async {
        if (result == WhereToGoFromWWNcbg.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWNcbg.ai_ncbg) {
          await Navigator.pushNamed(context, 'ai_ncbg');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWNcbg>>[
        const PopupMenuItem<WhereToGoFromWWNcbg>(
          value: WhereToGoFromWWNcbg.home_screen,
          child: MenuItemContent(
            icon: Utils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWNcbg>(
          value: WhereToGoFromWWNcbg.ai_ncbg,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI NCBG',
          ),
        ),
      ],
    );
  }
}