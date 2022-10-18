import 'package:trdl_tool/all_imports.dart';

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      /*SET CURVE TO CHOOSE ANIMATION STYLE*/
      _pageController.animateToPage(
        index,
        duration: const Duration(
          seconds: 2,
        ),
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
          actions: const [
            SearchButton(),
            LogOutButton(),
          ],
        ),
        drawer: drawerWidget,
        body: Center(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _selectedIndex = index);
            },
            children: const [
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
              icon: Icon(
                Icons.train,
              ),
              label: 'Werkwijze',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
              ),
              label: 'Achtergrond',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_esports,
              ),
              label: 'ProQuiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.forum,
              ),
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
