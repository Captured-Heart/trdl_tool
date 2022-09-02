import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWAtbVeiligheidsstoring {
  home_screen,
  ai_atb,
}

class WWAtbVeiligheidsstoring extends StatelessWidget {
  const WWAtbVeiligheidsstoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWAtbVeiligheidsstoring>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWAtbVeiligheidsstoring result) {
              if (result == WhereToGoFromWWAtbVeiligheidsstoring.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAtbVeiligheidsstoring.ai_atb) {
                Navigator.pushNamed(context, 'ai_atb');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAtbVeiligheidsstoring>>[
              PopupMenuItem<WhereToGoFromWWAtbVeiligheidsstoring>(
                value: WhereToGoFromWWAtbVeiligheidsstoring.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromWWAtbVeiligheidsstoring>(
                value: WhereToGoFromWWAtbVeiligheidsstoring.ai_atb,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI ATB',),
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
                      title: 'ATB veiligheidsstoring',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij een ATB veiligheidsstoring aan de baan voorkom je rijweginstelling naar het betrokken spoor.\n\nJe stelt pas een rijweg in naar het betrokken spoor nadat je de MCN hebt ingelicht.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Het opvolgen van het onjuiste seinbeeld door MCN.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Er is sprake van een ATB veiligheidsstoring wanneer de treinbeveiliging (ATB) een hogere snelheid aangeeft dan de blokbeveiliging (seinen). De MCN is mogelijk niet op de hoogte van de afwijking en wordt niet door de treinbeveiliging beschermd.',
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
