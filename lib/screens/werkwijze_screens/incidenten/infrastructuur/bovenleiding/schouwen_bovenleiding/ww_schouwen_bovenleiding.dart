import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWSchouwenBovenleiding {
  home_screen,
  ai_incidenten_schouwenbovenleiding,
}

class WWSchouwenBovenleiding extends StatelessWidget {
  const WWSchouwenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWSchouwenBovenleiding>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWSchouwenBovenleiding result) {
              if (result == WhereToGoFromWWSchouwenBovenleiding.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWSchouwenBovenleiding
                      .ai_incidenten_schouwenbovenleiding) {
                Navigator.pushNamed(
                    context, 'ai_incidenten_schouwenbovenleiding');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWSchouwenBovenleiding>>[
              PopupMenuItem<WhereToGoFromWWSchouwenBovenleiding>(
                value: WhereToGoFromWWSchouwenBovenleiding.home_screen,
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
              PopupMenuItem<WhereToGoFromWWSchouwenBovenleiding>(
                value: WhereToGoFromWWSchouwenBovenleiding
                    .ai_incidenten_schouwenbovenleiding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Schouwen Bovenleiding'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        title: 'Schouwen bovenleiding',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Op advies van het OBI laat je de bovenleiding schouwen, indien mogelijk vanaf het nevenspoor. Schouwen op het betrokken spoor doe je met een trein zonder reizigers. De MCN moet wel aangeven of deze in staat is om te schouwen.',
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
                        text:
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                            'Bij een onregelmatigheid aan de bovenleiding kan het gewenst zijn de situatie buiten te laten beoordelen door een MCN. De mogelijkheid bestaat dat de schouwtrein vastloopt op de locatie van de onregelmatigheid, waarbij eventuele reizigers niet meer handelingsvrij zijn.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
