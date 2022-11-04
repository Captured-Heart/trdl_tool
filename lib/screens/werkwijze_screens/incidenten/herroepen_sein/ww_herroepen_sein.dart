import '/all_imports.dart';

class WWHerroepenSein extends StatelessWidget {
  const WWHerroepenSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWHerroepenSeinNavigation(),
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
                    title: 'Herroepen van een sein',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor bijsturing mag je een sein herroepen nadat de MCN is ingelicht of wanneer je zeker weet dat er geen MCN op of bij de trein aanwezig is.\n\nBenader de machinist via de bestaande communicatiemogelijkheden. Als je geen contact krijgt, herroep je het sein.',
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
                    text: 'Het ten onrechte herroepen van seinen.',
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
                        'Het herroepen van een sein kan noodzakelijk zijn om een verstoring van de treindienst te voorkomen of beperken. Bij het herroepen van een sein voor bijsturing is het inlichten van de MCN wenselijk, om hem niet te laten schrikken van een wisselend seinbeeld.',
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

class WWHerroepenSeinNavigation extends StatelessWidget {
  const WWHerroepenSeinNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
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
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}