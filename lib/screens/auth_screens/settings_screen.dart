import '/all_imports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleSettings,
        ),
        actions: const <Widget>[
          HomeButton(),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Work in progress...'),
        ),
      ),
    );
  }
}
