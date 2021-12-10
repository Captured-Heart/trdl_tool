import 'package:trdl_tool/all_imports.dart';

class GeplandeWerkzaamheden extends StatelessWidget {
  const GeplandeWerkzaamheden({Key? key}) : super(key: key);

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
                        title: 'Geplande Werkzaamheden',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Dit zijn vooraf geplande werkzaamheden die zijn vastgelegd in een Werkplek Beveiligings Instructie (WBI/WECO).',
                      ),
                    ],
                  ),
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Aanvang Werkzaamheden',
                            destination: 'aanvangwerkzaamheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Controleren WBI',
                            destination: 'controlerenwbi',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Fouten in de WBI',
                            destination: 'foutenindewbi',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
