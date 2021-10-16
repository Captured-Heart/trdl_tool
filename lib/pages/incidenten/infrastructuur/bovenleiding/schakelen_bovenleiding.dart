import 'package:trdl_tool/all_imports.dart';

class SchakelenBovenleiding extends StatelessWidget {
  const SchakelenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
        actions: [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //PROCEDURE CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(title: 'Schakelen bovenleiding'),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Procedure',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Het OBI meldt welke groepen geschakeld zijn/gaan worden. Je maakt een WECO op.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //RISICO CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Risico\'s',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //CONTEXT CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Context',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'De bedieningsdeskundige van het OBI is installatieverantwoordelijke voor de bovenleiding. Wanneer de bovenleiding ongepland geschakeld wordt heeft dit gevolgen voor het kunnen rijden met elektrische tractie. De treinen in het betrokken gebied moeten de stroomafnemers laten zakken, omdat er problemen kunnen ontstaan wanneer het OBI de groepen weer onder spanning brengt.',
                            ),
                          ),
                        ],
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
