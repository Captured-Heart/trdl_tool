import '/all_imports.dart';

class AIBijzondereAandacht extends StatelessWidget {
  const AIBijzondereAandacht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBijzondereAandachtNavigation(),
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
                    title: 'Treinen met bijzondere aandacht',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het kan voorkomen dat er in de dienst treinen verwacht worden die bijzondere aandacht van de TRDL en DVL eisen. Denk hierbij aan de koninklijke trein of een supporterstrein. Deze treinen worden aan het begin van de dienst via de OvD-S aangekondigd bij de OvD-V.\n\nDe OvD-V bespreekt deze treinen met de TRDL en DVL. Wanneer de treinen niet via de OvD-S op de post aangekondigd kunnen worden, zal de VLC de betreffende trein(en) aankondigen bij de DVL. Die geeft dan eventuele bijzonderheden weer aan je door.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Opdracht van bevoegd functionaris',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij evenementen kan er, op last van de overheidshulpdiensten in het kader van crowd control of dreigende openbare ordeproblemen, de opdracht komen om een trein eerder, later of meteen te laten vertrekken. Je kunt hierbij denken aan bijvoorbeeld treinen met voetbalsupporters of demonstranten die de politie gecontroleerd wil laten vertrekken om escalatie te voorkomen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Wie kan een melding doen?',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je kan als TRDL gebeld worden door een medewerker van de MKS-BO in opdracht van de politie, of door de Algemeen Leider (AL).',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Afspraken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als een trein meteen moet vertrekken geef je, zodra dat mogelijk is, de rijweg vrij en licht je de DVL in. Wanneer de trein eerder of later moet vertrekken bespreek je dat met de DVL en die zal door een voorwaardelijke vertraging of vervroeging (VW-vertraging) de trein herplannen. Je verwerkt het bericht in procesleiding.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Aandachtspunten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Houd de trein zoveel rijdend;\n\n- Zet de trein niet aan de kant;\n\n- Zorg dat gewenste aanpassingen m.b.t. voorbrengen materieel via het lokale orderproces worden aangevraagd;\n\n- Zorg dat vertragings- en vervroegingsoorzaken worden verklaard in monitoring.',
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

class AIBijzondereAandachtNavigation extends StatelessWidget {
  const AIBijzondereAandachtNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_bijzonderheden_trein_basis) {
          await Navigator.pushNamed(
            context,
            'ai_bijzonderheden_trein_basis',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_bijzonderheden_trein_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Bijzonderheden Trein',
          ),
        ),
      ],
    );
  }
}
