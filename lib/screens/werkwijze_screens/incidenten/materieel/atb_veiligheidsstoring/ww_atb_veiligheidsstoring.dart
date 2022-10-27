import '/all_imports.dart';

enum WhereToGoFromWWAtbVeiligheidsstoring {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_atb,
}

class WWAtbVeiligheidsstoring extends StatelessWidget {
  const WWAtbVeiligheidsstoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWATBVeiligheidsstoring(),
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
                    title: 'ATB veiligheidsstoring',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een ATB veiligheidsstoring aan de baan voorkom je rijweginstelling naar het betrokken spoor.\n\nJe stelt pas een rijweg in naar het betrokken spoor nadat je de MCN hebt ingelicht.',
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
                    text: 'Het opvolgen van het onjuiste seinbeeld door MCN.',
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
                        'Er is sprake van een ATB veiligheidsstoring wanneer de treinbeveiliging (ATB) een hogere snelheid aangeeft dan de blokbeveiliging (seinen). De MCN is mogelijk niet op de hoogte van de afwijking en wordt niet door de treinbeveiliging beschermd.',
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

class WWATBVeiligheidsstoring extends StatelessWidget {
  const WWATBVeiligheidsstoring({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWAtbVeiligheidsstoring>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWAtbVeiligheidsstoring result) async {
        if (result == WhereToGoFromWWAtbVeiligheidsstoring.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWAtbVeiligheidsstoring.ai_atb) {
          await Navigator.pushNamed(context, 'ai_atb');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWAtbVeiligheidsstoring>>[
        const PopupMenuItem<WhereToGoFromWWAtbVeiligheidsstoring>(
          value: WhereToGoFromWWAtbVeiligheidsstoring.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWAtbVeiligheidsstoring>(
          value: WhereToGoFromWWAtbVeiligheidsstoring.ai_atb,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI ATB',
          ),
        ),
      ],
    );
  }
}
