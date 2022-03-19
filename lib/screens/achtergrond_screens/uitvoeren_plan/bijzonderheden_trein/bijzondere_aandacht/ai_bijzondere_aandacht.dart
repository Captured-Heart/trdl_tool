import 'package:trdl_tool/core/all_imports.dart';

class AIBijzondereAandacht extends StatelessWidget {
  const AIBijzondereAandacht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Bijzondere aandacht',
        ),
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
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Treinen met bijzondere aandacht',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het kan voorkomen dat er in de dienst bijzonderheden_trein verwacht worden die bijzondere aandacht van de Trdl en DVL eisen. Denk hierbij aan de koninklijke trein of een supporterstrein. Deze bijzonderheden_trein worden aan het begin van de dienst via de OvD-S aangekondigd bij de OvD-V.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De OvD-V bespreekt deze bijzonderheden_trein met de Trdl en DVL. Wanneer de bijzonderheden_trein niet via de OvD-S op de post aangekondigd kunnen worden, zal de VLC de betreffende trein(en) aankondigen bij de DVL. Die geeft dan eventuele bijzonderheden weer aan je door.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Opdracht van bevoegd functionaris',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij evenementen kan er, op last van de overheidshulpdiensten in het kader van crowd control of dreigende openbare ordeproblemen, de opdracht komen om een trein eerder, later of meteen te laten vertrekken. Je kunt hierbij denken aan bijvoorbeeld bijzonderheden_trein met voetbalsupporters of demonstranten die de politie gecontroleerd wil laten vertrekken om escalatie te voorkomen.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Wie kan een melding doen?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je kan als treindienstleider gebeld worden door een medewerker van de MKS-BO in opdracht van de politie, of door de Algemeen Leider (AL).',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Afspraken',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als een trein meteen moet vertrekken geef je, zodra dat mogelijk is, de rijweg vrij en licht je de decentrale verkeersleider in. Wanneer de trein eerder of later moet vertrekken bespreek je dat met de decentrale verkeersleider en die zal door een voorwaardelijke vertraging of vervroeging (VW-vertraging) de trein herplannen. Je verwerkt het bericht in procesleiding.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Aandachtspunten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Houd de trein zoveel rijdend;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Zet de trein niet aan de kant;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Zorg dat gewenste aanpassingen m.b.t. voorbrengen materieel via het lokale orderproces worden aangevraagd;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Zorg dat vertragings- en vervroegingsoorzaken worden verklaard in monitoring.',
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