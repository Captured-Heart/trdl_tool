import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWSchakelenBovenleiding {
  home_screen,
  ai_incidenten_schakelenbovenleiding
}

class WWSchakelenBovenleiding extends StatelessWidget {
  const WWSchakelenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWSchakelenBovenleiding>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWSchakelenBovenleiding result) {
              if (result == WhereToGoFromWWSchakelenBovenleiding.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWSchakelenBovenleiding
                      .ai_incidenten_schakelenbovenleiding) {
                Navigator.pushNamed(
                    context, 'ai_incidenten_schakelenbovenleiding');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWSchakelenBovenleiding>>[
              PopupMenuItem<WhereToGoFromWWSchakelenBovenleiding>(
                value: WhereToGoFromWWSchakelenBovenleiding.home_screen,
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
              PopupMenuItem<WhereToGoFromWWSchakelenBovenleiding>(
                value: WhereToGoFromWWSchakelenBovenleiding
                    .ai_incidenten_schakelenbovenleiding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Schakelen Bovenleiding'),
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
                        title: 'Schakelen bovenleiding',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het OBI meldt welke groepen geschakeld zijn/gaan worden. Je maakt een WECO op.',
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
                            'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
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
                            'De bedieningsdeskundige van het OBI is installatieverantwoordelijke voor de bovenleiding. Wanneer de bovenleiding ongepland geschakeld wordt heeft dit gevolgen voor het kunnen rijden met elektrische tractie. De treinen in het betrokken gebied moeten de stroomafnemers laten zakken, omdat er problemen kunnen ontstaan wanneer het OBI de groepen weer onder spanning brengt.',
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
