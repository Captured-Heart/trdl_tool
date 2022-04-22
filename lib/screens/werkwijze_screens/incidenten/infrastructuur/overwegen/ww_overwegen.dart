import 'package:trdl_tool/all_imports.dart';

//TODO: Hier verder de appbar aanpassen aan de nieuwe navigatie!

class WWOverwegen extends StatelessWidget {
  const WWOverwegen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Overwegen',
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
                        title: 'Overwegen / overwegstoring',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een overweg is gestoord als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De installatie niet goed functioneert;\n\n- De storingsmelder aangeeft dat de overweg gestoord is;\n\n- De installatie is beschadigd. Beschouw de installatie als beschadigd, wanneer:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '1. Een AHOB boom geheel of gedeeltelijk is \'afgebroken\';\n2. De knipperende rode lichten van meer dan één paal niet branden of niet zichtbaar zijn;\n3. Geen van de overwegbellen werken;\n4. Aan tenminste één zijde van de overweg geen herkenbaar Andreaskruis meer aanwezig is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als een overweg die gekoppeld is aan een storingsmelder gestoord is, geef je een aanwijzing OVW af.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Bij de melding \'meerdere overwegen gestoord\' geef je een aanwijzing OVW af voor de overwegen op de desbetreffende melder;\n\n- Voor een storing aan overige overwegen die niet op een storingsmelder zitten, bekijk je de plaatselijke regelgeving;\n\n- Wanneer je een veiligheidsstoring aan een overweg gemeld krijgt, laat je de werking controleren in beide rijrichtingen met een aanwijzing OVW. Bij een daadwerkelijke veiligheidsstoring staak je het treinverkeer over deze overweg;\n\n- Als je een melding \'storingsmelder overwegen defect\' of een systeemfoutmelding overwegen (DOSS) krijgt, meld je dit aan de MKS/BO. Geef pas aanwijzingen OVW af nadat je de melding krijgt dat een overweg daadwerkelijk gestoord is.\n\nAls er een storing gemeld wordt aan een overweg op CBG die niet op de storingsmelder is aangesloten, geef je een aanwijzing VR met een snelheid van max. 10 km/u, met vermelding van reden, aan de betrokken MCN.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je staakt het afgeven van aanwijzingen pas na toestemming van de MKS/BO.\n\nNa een aanrijding op een overweg staak je pas met het afgeven van aanwijzing OVW als deze overweg is vrijgegeven door de storingsdienst.',
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
                        text:
                            'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                          text:
                              'Wanneer een overweg langdurig dicht ligt, kunnen weggebruikers ongewenst gedrag vertonen (slalommen). Bij een beschadigde of niet goed functionerende overweg toont de overweg onjuiste beelden naar het wegverkeer.\n\nDe storingsmonteur kan de veilige berijdbaarheid ter plaatse vaststellen. De storingsmonteur bepaalt of en hoe je het betrokken wissel weer mag laten berijden.'),
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
