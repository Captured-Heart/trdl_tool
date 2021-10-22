import 'package:trdl_tool/all_imports.dart';

class HomeIndex1 extends StatelessWidget {
  HomeIndex1({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        title: const AppBarText(title: 'TRDLtool'),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pushReplacementNamed(context, 'login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                                title:
                                    'Achtergrondinformatie Treindienstleider',),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De Werkwijze Treindienstleider is online beschikbaar op SharePoint. Deze werkwijze is altijd actueel en wordt inhoudelijk beheerd door de staf Verkeersleiding, treindienstleiding i.s.m. Human Factors Verkeersleiding (HF VL).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De achtergrondinformatie is onderdeel van de Werkwijze Treindienstleiding, samen met de documenten Vakmanschap en TRA (Taak Risico Analyse). De opbouw van de achtergrondinformatie volgt de opbouw van de nieuwe werkwijze.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De TRDLtool is nog volop in ontwikkeling en krijgt regelmatig updates. Kom snel terug voor meer achtergrondinformatie.',
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
