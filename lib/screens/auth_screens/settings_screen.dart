import '/all_imports.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(currentUserProvider);
  }

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
      body: SafeArea(
        child: Center(
          child: TextCard(
            widgetList: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.email_outlined,
                ),
                title: Text(
                  'Emailadres: ${ref.watch(currentUserProvider)?.email}',
                ),
                trailing: IconButton(
                  onPressed: () async {
                    await showEditEmailPopup(context);
                  },
                  icon: const Icon(
                    Icons.edit_outlined,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_outlined,
                ),
                title: Text(
                  'Gebruikersnaam: ${ref.watch(currentUserProvider)?.displayName}',
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit_outlined,
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
