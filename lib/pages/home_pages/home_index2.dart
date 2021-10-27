import 'package:trdl_tool/all_imports.dart';

class HomeIndex2 extends StatelessWidget {
  HomeIndex2({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const AvatarMenu(),
        title: const AppBarText(title: 'TRDLtool'),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pushReplacementNamed(context, 'login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: const SafeArea(
        child: ProQuiz(),
      ),
    );
  }
}
