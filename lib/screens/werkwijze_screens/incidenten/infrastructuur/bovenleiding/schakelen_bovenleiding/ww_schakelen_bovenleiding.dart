import 'package:trdl_tool/core/all_imports.dart';

class WWSchakelenBovenleiding extends StatelessWidget {
  const WWSchakelenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Schakelen bovenleiding',
        ),
        actions: const [
          HomeButton(),
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
                        text: 'Het OBI meldt welke groepen geschakeld zijn/gaan worden. Je maakt een WECO op.',
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
                        text: 'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
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
                        text: 'De bedieningsdeskundige van het OBI is installatieverantwoordelijke voor de bovenleiding. Wanneer de bovenleiding ongepland geschakeld wordt heeft dit gevolgen voor het kunnen rijden met elektrische tractie. De treinen in het betrokken gebied moeten de stroomafnemers laten zakken, omdat er problemen kunnen ontstaan wanneer het OBI de groepen weer onder spanning brengt.',
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
