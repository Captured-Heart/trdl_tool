import 'package:trdl_tool/core/all_imports.dart';

class Dienstovergave extends StatelessWidget {
  const Dienstovergave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Dienstovergave',
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
                        title: 'Dienstovergave',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Om de dienst over te dragen/over te nemen maak je gebruik van het \'dienstovergave formulier\'. Door het invullen van dit formulier borg je een uniforme manier van dienstovergave of dienstovername.\n\nJe draagt of neemt de dienst persoonlijk over na elke onderbreking van je reguliere dienst. Je spreekt samen de bijzonderheden door en tekent het formulier voor overgave of overname.',
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
                        text: 'Het rijden van treinen op sporen waarop zij niet of met beperkingen mogen rijden.',
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
                        text: 'Een TRDL draagt de verantwoordelijkheid voor een bediengebied over aan een bevoegd TRDL, waarbij hij deze informeert over bijzonderheden die afwijken van het oorspronkelijke plan en waarvoor eventuele aanpassingen moeten worden gedaan.',
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
