import 'package:trdl_tool/all_imports.dart';

class OpbouwPlanBasisAchtergrond extends StatelessWidget {
  const OpbouwPlanBasisAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
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
                              title: 'Rijwegen - basisinformatie: plan(regel)opbouw',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een rijweg is een spoorgedeelte dat ter beschikking wordt gesteld om verplaatsing van (meestal) een trein van A naar B mogelijk te maken​​​​​​​.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er zijn drie manieren om een rijweg in te stellen:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Automatisch vanuit het plan d.m.v. ARI',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '(ARI = Automatische Rijweg Instelling) - ARI maakt gebruik van een wacht- en een tijdvenster. Instellingen van ARI vind je in de PBH++.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Handmatig, in het planscherm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Als ARI de rijweg niet kan instellen, zul je dit handmatig moeten doen. Doe dit zo veel mogelijk in het planscherm.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Handmatig, in het bedienscherm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Blijkt het om wat voor reden dan ook niet mogelijk de rijweg in het planscherm in te stellen, dan kun je de rijweg in het bedienscherm instellen.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Het plan',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Om een trein van het ene naar het andere station te laten rijden, gebruik je een plan waarmee je een rijweg kan instellen. Het plan is een uitgebreidere versie van de dienstregeling waarin je alle informatie vindt die nodig is om een trein of rangeerbeweging via de juiste route en op de juiste tijd op de plaats van bestemming te krijgen. In dit deel van de achtergrondinformatie lees je alles over hoe het plan van een treindienstleider in elkaar zit, wat voor soorten rijwegen er zijn en hoe je een rijweg kunt instellen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een rijweg is het stuk spoor dat voor een trein beschikbaar wordt gesteld om van A naar B te komen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De mogelijkheid tot verplaatsing wordt aangegeven tussen:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Twee sporen, beginnend op het VAN-spoor en eindigend op het NAAR-spoor;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Waar van toepassing: twee variabele seinen, beginnend met een VAN-sein en eindigend bij het NAAR-sein, corresponderend met de VAN- en NAAR-sporen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er zijn 2 verschillende soorten rijwegen:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Enkelvoudige rijwegen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Een enkelvoudige rijweg bestaat uit een enkele seinstap. Een seinstap is een rijweginstelling van sein tot het eerstvolgende sein in dezelfde rijrichting.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Samengestelde rijwegen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Een samengestelde rijweg bestaat uit 2 of meer aaneengesloten rijwegen (seinstappen). Voor het instellen van een samengestelde rijweg moet het begin- en eindpunt van de totale rijweg worden opgegeven. Een samengestelde rijweg kan in zijn geheel of per deel afzonderlijk worden ingesteld.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voorwaarden voor het instellen van een rijweg:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere bedienbare infraelementen, die in de ingestelde rijweg liggen, worden vergrendeld (grendel, brug, etc.);',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg is nu vastgelegd;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg wordt gecontroleerd op spoorbezetting;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Het sein komt uit de stand stop, als er geen spoorbezetting is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Wanneer de rijweg wordt ingesteld met Rijden Op Zicht (ROZ - het seinbeeld geel knipper) vindt er geen controle plaats op eventuele spoorbezetting.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Opbouw planregel - planscherm',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image.asset(
                              'assets/images/achtergrond/opbouwPlanregelPlanscherm1.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image.asset(
                              'assets/images/achtergrond/opbouwPlanregelPlanscherm2.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Om een trein van het ene naar het andere station te laten rijden, gebruik je een plan waarmee je een rijweg kan instellen. Het plan is een uitgebreidere versie van de dienstregeling waarin je alle informatie vindt die nodig is om een trein of rangeerbeweging via de juiste route en op de juiste tijd op de plaats van bestemming te krijgen. In dit deel van de achtergrondinformatie lees je alles over hoe het plan van een treindienstleider in elkaar zit, wat voor soorten rijwegen er zijn en hoe je een rijweg kunt instellen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een rijweg is het stuk spoor dat voor een trein beschikbaar wordt gesteld om van A naar B te komen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De mogelijkheid tot verplaatsing wordt aangegeven tussen:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Twee sporen, beginnend op het VAN-spoor en eindigend op het NAAR-spoor;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Waar van toepassing: twee variabele seinen, beginnend met een VAN-sein en eindigend bij het NAAR-sein, corresponderend met de VAN- en NAAR-sporen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er zijn 2 verschillende soorten rijwegen:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Enkelvoudige rijwegen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Een enkelvoudige rijweg bestaat uit een enkele seinstap. Een seinstap is een rijweginstelling van sein tot het eerstvolgende sein in dezelfde rijrichting.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Samengestelde rijwegen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Een samengestelde rijweg bestaat uit 2 of meer aaneengesloten rijwegen (seinstappen). Voor het instellen van een samengestelde rijweg moet het begin- en eindpunt van de totale rijweg worden opgegeven. Een samengestelde rijweg kan in zijn geheel of per deel afzonderlijk worden ingesteld.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voorwaarden voor het instellen van een rijweg:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere bedienbare infraelementen, die in de ingestelde rijweg liggen, worden vergrendeld (grendel, brug, etc.);',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg is nu vastgelegd;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De rijweg wordt gecontroleerd op spoorbezetting;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Het sein komt uit de stand stop, als er geen spoorbezetting is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Wanneer de rijweg wordt ingesteld met Rijden Op Zicht (ROZ - het seinbeeld geel knipper) vindt er geen controle plaats op eventuele spoorbezetting.',
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
