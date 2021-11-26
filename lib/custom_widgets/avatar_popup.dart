import 'package:trdl_tool/all_imports.dart';

showAvatarPopup(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(
          6.0,
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 128.0,
              child: Icon(
                Icons.person,
                size: 78.0,
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
      );
    },
  );
}
