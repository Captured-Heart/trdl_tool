import '/all_imports.dart';

enum WhereToGoFromWWOpengeredenWissel {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_opengereden_wissel,
}

class WWOpengeredenWissel extends StatelessWidget {
  const WWOpengeredenWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOpengeredenWisselNavigation(),
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
                    title: 'Opengereden wissel',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Stel vast of het wissel eendelig, meerdelig of EBI-switch is.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Eendelig: laat het wissel alleen met de punt mee vrijmaken wanneer er geen uiterlijke beschadigingen zijn. Je mag het wissel weer laten berijden na de constatering dat de tongen in de juiste stand liggen en aansluiten. Dit laat je doen met maximaal 10 km/h, tenzij anders wordt aangegeven door de storingsdienst;\n\n- Meerdelig: laat het wissel alleen met de punt mee vrijmaken met maximaal 10 km/h na toestemming van de storingsdienst;\n\n- EBI-switch: laat het wissel alleen met de punt mee vrijmaken met maximaal 10 km/h en behandel het als een beschadigd wissel.',
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
                        'Een trein kan een wissel met de punt mee in de verkeerde stand berijden. De wisseltongen worden dan open gereden en het wissel is daardoor niet meer veilig berijdbaar. Van een open gereden wissel moet de afstelling gecontroleerd worden.',
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

class WWOpengeredenWisselNavigation extends StatelessWidget {
  const WWOpengeredenWisselNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWOpengeredenWissel>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWOpengeredenWissel result) async {
        if (result == WhereToGoFromWWOpengeredenWissel.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWOpengeredenWissel.ai_opengereden_wissel) {
          await Navigator.pushNamed(context, 'ai_opengereden_wissel');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWOpengeredenWissel>>[
        const PopupMenuItem<WhereToGoFromWWOpengeredenWissel>(
          value: WhereToGoFromWWOpengeredenWissel.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOpengeredenWissel>(
          value: WhereToGoFromWWOpengeredenWissel.ai_opengereden_wissel,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Opengereden Wissel',
          ),
        ),
      ],
    );
  }
}
