import '/all_imports.dart';

class WWOverwegen extends StatelessWidget {
  const WWOverwegen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOverwegenNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Overwegen / overwegstoring',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
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
                        "1. Een AHOB boom geheel of gedeeltelijk is 'afgebroken';\n2. De knipperende rode lichten van meer dan één paal niet branden of niet zichtbaar zijn;\n3. Geen van de overwegbellen werken;\n4. Aan tenminste één zijde van de overweg geen herkenbaar Andreaskruis meer aanwezig is.",
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
                        "- Bij de melding 'meerdere overwegen gestoord' geef je een aanwijzing OVW af voor de overwegen op de desbetreffende melder;\n\n- Voor een storing aan overige overwegen die niet op een storingsmelder zitten, bekijk je de plaatselijke regelgeving;\n\n- Wanneer je een veiligheidsstoring aan een overweg gemeld krijgt, laat je de werking controleren in beide rijrichtingen met een aanwijzing OVW. Bij een daadwerkelijke veiligheidsstoring staak je het treinverkeer over deze overweg;\n\n- Als je een melding 'storingsmelder overwegen defect' of een systeemfoutmelding overwegen (DOSS) krijgt, meld je dit aan de MKS/BO. Geef pas aanwijzingen OVW af nadat je de melding krijgt dat een overweg daadwerkelijk gestoord is.\n\nAls er een storing gemeld wordt aan een overweg op CBG die niet op de storingsmelder is aangesloten, geef je een aanwijzing VR met een snelheid van max. 10 km/u, met vermelding van reden, aan de betrokken MCN.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je staakt het afgeven van aanwijzingen pas na toestemming van de MKS/BO.\n\nNa een aanrijding op een overweg staak je pas met het afgeven van aanwijzing OVW als deze overweg is vrijgegeven door de storingsdienst.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer een overweg langdurig dicht ligt, kunnen weggebruikers ongewenst gedrag vertonen (slalommen). Bij een beschadigde of niet goed functionerende overweg toont de overweg onjuiste beelden naar het wegverkeer.\n\nDe storingsmonteur kan de veilige berijdbaarheid ter plaatse vaststellen. De storingsmonteur bepaalt of en hoe je het betrokken wissel weer mag laten berijden.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWOverwegenNavigation extends StatelessWidget {
  const WWOverwegenNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_overwegen_main) {
          await Navigator.pushNamed(context, 'ai_overwegen_main');
        } else if (result == PopupNavigation.ai_overwegen_storing) {
          await Navigator.pushNamed(context, 'ai_overwegen_storing');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_overwegen_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Overwegen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_overwegen_storing,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Overwegen Storing',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}