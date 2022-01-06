import 'package:trdl_tool/core/all_imports.dart';

class Dienstovergave extends StatelessWidget {
  const Dienstovergave({Key? key}) : super(key: key);

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
                        title: 'Dienstovergave',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Om de dienst over te dragen/over te nemen maak je gebruik van het ‘dienstovergave formulier’. Door het invullen van dit formulier borg je een uniforme manier van dienstovergave of dienstovername.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je draagt of neemt de dienst persoonlijk over na elke onderbreking van je reguliere dienst. Je spreekt samen de bijzonderheden door en tekent het formulier voor overgave of overname.',
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
                        text:
                            'Het rijden van bijzonderheden_trein op sporen waarop zij niet of met beperkingen mogen rijden.',
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
                        text:
                            'Een treindienstleider draagt de verantwoordelijkheid voor een bediengebied over aan een bevoegd treindienstleider, waarbij hij deze informeert over bijzonderheden die afwijken van het oorspronkelijke plan en waarvoor eventuele aanpassingen moeten worden gedaan.',
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
