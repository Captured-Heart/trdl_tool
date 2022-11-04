import '/all_imports.dart';

class WWOngeplandWerkMaterieel extends StatelessWidget {
  const WWOngeplandWerkMaterieel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOngeplandWerkMaterieelNavigation(),
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
                    title: 'Materieel (ongepland werk)',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je stelt infracapaciteit ter beschikking voor het ongepland uitvoeren van werkzaamheden en/of de inspectie aan materieel en maakt een tijdsafspraak.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Door infracapaciteit beschikbaar te stellen, zorg je voor het creëren van een veilige werkplek voor werkzaamheden of inspectie aan materieel.',
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

class WWOngeplandWerkMaterieelNavigation extends StatelessWidget {
  const WWOngeplandWerkMaterieelNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_ongepland_werk_materieel) {
          await Navigator.pushNamed(
            context,
            'ai_ongepland_werk_materieel',
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
          value: PopupNavigation.ai_ongepland_werk_materieel,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Ongepland Werk (Materieel)',
          ),
        ),
      ],
    );
  }
}