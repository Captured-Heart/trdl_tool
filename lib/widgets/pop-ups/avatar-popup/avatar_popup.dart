import '/all_imports.dart';

Future<dynamic> showAvatarPopup(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(
          12.0,
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100.0,
              child: Icon(
                Icons.person,
                size: 78.0,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ListTile(
              title: Text(
                'Huidige gebruiker:\n$emailCurrentUser',
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
