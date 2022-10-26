import '/all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomNavigationScreen();
  }
}

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

  Future<void> _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(
          seconds: 1,
        ),
        //Set curve to choose animationstyle
        curve: Curves.easeInOutCubicEmphasized,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return showExitPopup(
          context,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const AppBarText(title: 'TRDLtool'),
          actions: const <Widget>[
            SearchButton(),
            LogOutButton(),
          ],
        ),
        drawer: drawerWidget,
        body: Center(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() => _selectedIndex = index);
            },
            children: const <Widget>[
              HomeIndex0(),
              HomeIndex1(),
              HomeIndex2(),
              HomeIndex3(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Utils.iconWW),
              label: 'Werkwijze',
            ),
            BottomNavigationBarItem(
              icon: Icon(Utils.iconAI),
              label: 'Achtergrond',
            ),
            BottomNavigationBarItem(
              icon: Icon(Utils.iconGame),
              label: 'ProQuiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Utils.iconChat),
              label: 'ProChat',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}