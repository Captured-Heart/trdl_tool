import 'all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationScreen();
  }
}

/// This is the stateful widget that the main application instantiates.
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

/// This is the private State class that goes with BottomNavigationScreen.
class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeIndex0(),
    HomeIndex1(),
    HomeIndex2(),
    HomeIndex3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
    );
  }
}
