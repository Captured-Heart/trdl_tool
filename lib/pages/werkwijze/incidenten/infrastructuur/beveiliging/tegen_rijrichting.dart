import 'package:trdl_tool/all_imports.dart';

class TegenRijrichting extends StatelessWidget {
  const TegenRijrichting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Tegen de rijrichting rijden',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Links rijden tegen de rijrichting bij linkerspoor beveiliging:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Geef een aanwijzing OVW af voor alle overwegen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Rechts rijden tegen rijrichting bij linkerspoor beveiliging:',
                      ),
                      BodyText(
                        indents: 1,
                        text: '* Toegestaan wanneer:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '1. De overwegen zijn voorzien van een extra aankonigingssectie plus aanwijzing OVW;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '2. Het baanvak is uitgerust met ULS, óf;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '3. Er geen overwegen zijn.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Keren op de vrije baan bij dubbel/enkelspoor beveiliging:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Geef een aanwijzing OVW af voor de overwegen waarvan de trein de aankondiging volledig gepasseerd is.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De blokbeveiliging controleert bij rijweginstelling de dynamische voorwaarden bij rijrichting naar de vrije baan. Bij het rijden tegen de rijrichting in wordt niet aan alle dynamische voorwaarden voldaan, waardoor de blokbeveiliging niet of niet volledig werkt.',
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
