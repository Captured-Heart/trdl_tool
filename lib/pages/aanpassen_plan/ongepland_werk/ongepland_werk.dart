import 'package:trdl_tool/all_imports.dart';

class OngeplandWerk extends StatelessWidget {
  const OngeplandWerk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
        actions: [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Procedure Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(title: 'Ongepland Werk'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Navigation Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(
                              title: 'Ga snel naar:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavButton(
                            buttontext: 'Materieel',
                            destination: 'materieelongeplandwerk',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infrastructuur',
                            destination: 'infraongeplandwerk',
                          ),
                        ],
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
