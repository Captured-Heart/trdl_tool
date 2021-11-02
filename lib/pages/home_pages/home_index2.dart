import 'package:trdl_tool/all_imports.dart';

class HomeIndex2 extends StatelessWidget {
  const HomeIndex2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const AvatarMenu(),
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          LogOutButton(),
        ],
      ),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(title: 'ProQuiz'),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In een latere update zal hier de ProQuiz verschijnen. Wil je je kennis testen in een zenuwslopende quiz? Ga je gang!',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const NavButton(
                        buttontext: 'Klik hier voor de testversie',
                        destination: 'proquizmain',
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
