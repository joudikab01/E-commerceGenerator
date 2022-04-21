import 'package:flutter/material.dart';
import 'package:generator/generated/l10n.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 2 / 3,
      height: screenSize.height,
      child: Drawer(
        child: Column(
          children: [
            Image.asset('cover.jpg'),
            ListTile(
              title: Text(
                S.of(context).fromDrawerMain,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
            Divider(
              height: 3,
              indent: screenSize.width * 1 / 8,
              endIndent: screenSize.width * 1 / 8,
              color: Colors.grey[600],
            ),
            ListTile(
              title: Text(
                S.of(context).fromDrawerCart,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.shopping_cart),
            ),
            Divider(
              height: 3,
              indent: screenSize.width * 1 / 8,
              endIndent: screenSize.width * 1 / 8,
              color: Colors.grey[600],
            ),
            ListTile(
              title: Text(
                S.of(context).fromDrawerSettings,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Settings');
              },
              leading: Icon(Icons.settings),
            ),
            Divider(
              height: 3,
              indent: screenSize.width * 1 / 8,
              endIndent: screenSize.width * 1 / 8,
              color: Colors.grey[600],
            ),
            ListTile(
              title: Text(
                S.of(context).fromDrawerContact,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/ContactUs');
              },
              leading: Icon(Icons.quick_contacts_dialer_outlined),
            ),
            Expanded(
              child: SizedBox(),
            ),
            ListTile(
              title: Text(
                S.of(context).fromDrawerLogOut,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
