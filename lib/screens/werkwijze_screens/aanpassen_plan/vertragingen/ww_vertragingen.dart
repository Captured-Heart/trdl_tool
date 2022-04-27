import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWVertragingen {
  home_screen,
  ai_vertragingen,
}

class WWVertragingen extends StatelessWidget {
  const WWVertragingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWVertragingen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWVertragingen result) {
              if (result == WhereToGoFromWWVertragingen.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWVertragingen.ai_vertragingen) {
                Navigator.pushNamed(context, 'ai_vertragingen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWVertragingen>>[
              PopupMenuItem<WhereToGoFromWWVertragingen>(
                value: WhereToGoFromWWVertragingen.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWVertragingen>(
                value: WhereToGoFromWWVertragingen.ai_vertragingen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Vertragingen'),
                  ],
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
                    TitleText(title: 'Vertragingen'),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij vertragingen is het belangrijk de treinenloop zo goed mogelijk volgens plan te laten verlopen. Daar waar het plan aangepast moet worden, gebeurt dat zoveel mogelijk volgens vooraf afgesproken afhandelingsafspraken. Deze afhandelingsafspraken zijn:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Infragerelateerd, of;\n\n- Treingerelateerd.',
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
