import '/all_imports.dart';

class WWSectieStoring extends StatelessWidget {
  const WWSectieStoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWSectiestoringNavigation(),
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
                    title: 'Sectiestoring',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Geef de MCN opdracht om het betrokken spoor te schouwen.\n\nAls er na het schouwen geen zichtbare gebreken aan het spoor zijn geconstateerd, ga je uit van een sectiestoring.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'Bij een onverwachte spoorbezetting is de spoorstroomloop om onbekende reden onderbroken. De beveiliging geeft hiervan een signalering in de vorm van een spoorbezetting. Omdat niet precies duidelijk is wat er aan de hand is, moet ter plaatse bekeken worden of het spoor nog veilig te berijden is.',
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

class WWSectiestoringNavigation extends StatelessWidget {
  const WWSectiestoringNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result == PopupNavigation.ai_sectie_main) {
          await Navigator.pushNamed(context, 'ai_sectie_main');
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
          value: PopupNavigation.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_sectie_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Sectie',
          ),
        ),
      ],
    );
  }
}