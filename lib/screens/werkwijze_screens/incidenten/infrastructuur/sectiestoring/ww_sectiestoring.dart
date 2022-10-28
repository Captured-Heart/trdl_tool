import '/all_imports.dart';

enum WhereToGoFromWWSectieStoring {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_infra_main,
  // ignore: constant_identifier_names
  ai_sectie,
}

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
                    subtitle: Strings.procedure,
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
                    subtitle: Strings.risico,
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
                    subtitle: Strings.context,
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
    return PopupMenuButton<WhereToGoFromWWSectieStoring>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWSectieStoring result) async {
        if (result == WhereToGoFromWWSectieStoring.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWSectieStoring.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result == WhereToGoFromWWSectieStoring.ai_sectie) {
          await Navigator.pushNamed(context, 'ai_sectie');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWSectieStoring>>[
        const PopupMenuItem<WhereToGoFromWWSectieStoring>(
          value: WhereToGoFromWWSectieStoring.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWSectieStoring>(
          value: WhereToGoFromWWSectieStoring.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWSectieStoring>(
          value: WhereToGoFromWWSectieStoring.ai_sectie,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Sectie',
          ),
        ),
      ],
    );
  }
}
