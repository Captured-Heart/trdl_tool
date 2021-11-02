import 'package:trdl_tool/all_imports.dart';

class AvatarMenu extends StatelessWidget {
  const AvatarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
        child: CircleAvatar(
          child: IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
    );
  }
}

/*Drawer Menu after AvatarMenu press*/
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(kDarkGreen),
                  ),
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 48.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
