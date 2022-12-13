import '/all_imports.dart';


//TODO: YOU COULD DECLARE THE PAGECONTROLLER LIKE THIS AND USE IN ANY PART OF YOUR APP
// final pageControllerProvider = Provider<PageController>((ref) {
//   return PageController(initialPage:0 );
// });
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

  //
  late PageController _pageController;

  Future<void> _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;

      //TODO: BELOW METHOD, CAN BE OUTSIDE OF THE SETSTATE
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
              icon: Icon(IconUtils.iconWW),
              label: 'Werkwijze',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconUtils.iconAI),
              label: 'Achtergrond',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconUtils.iconGame),
              label: 'ProQuiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconUtils.iconChat),
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