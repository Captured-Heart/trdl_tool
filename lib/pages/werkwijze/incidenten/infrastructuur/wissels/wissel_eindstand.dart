import 'package:trdl_tool/all_imports.dart';

class WisselEindstand extends StatelessWidget {
  const WisselEindstand({Key? key}) : super(key: key);

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
                        title: 'Wissel komt niet in de gevraagde eindstand',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Probeer het wissel meerdere keren om te leggen. Wanneer het wissel maar in één stand in de controle komt, leg je het wissel in die stand vast.',
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
                        text: 'Logistiek risico.',
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
                        text: 'Wanneer een wissel niet in de gevraagde eindstand komt, probeert het wissel gedurende 1 minuut alsnog in de eindstand te komen. Lukt dit niet, dan stopt in de meeste gevallen de wisselmotor. De communicatie met het wissel is niet gestoord en het wissel kan dus nog steeds een opdracht aannemen.',
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
