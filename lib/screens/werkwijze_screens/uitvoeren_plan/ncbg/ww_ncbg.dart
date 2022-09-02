import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWNcbg {
  home_screen,
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
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWNcbg>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWNcbg result) {
              if (result == WhereToGoFromWWNcbg.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWNcbg.ai_ncbg) {
                Navigator.pushNamed(context, 'ai_ncbg');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWNcbg>>[
              const PopupMenuItem<WhereToGoFromWWNcbg>(
                value: WhereToGoFromWWNcbg.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWNcbg>(
                value: WhereToGoFromWWNcbg.ai_ncbg,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI NCBG',
                ),
              ),
            ],
          ),
          const HomeButton(),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
