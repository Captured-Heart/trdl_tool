import 'package:trdl_tool/all_imports.dart';

showAvatarPopup(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(
          6.0,
        ),
        content: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(kDarkGreen),
                ),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 78.0,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Huidige gebruiker: $emailCurrentUser',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Log uit',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  showLogOutPopup(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Versie & Updates',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  showVersionUpdatePopup(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
