import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Drawer build(BuildContext context) {
    return Drawer(
        elevation: 20.0,
        child: Drawer(
            elevation: 20.0,
            backgroundColor: const Color(0xFFF8F8F8),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  DrawerHeader(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image.asset(
                          Assets.logo,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        _appBarTitle
                      ])),
                  ListTile(
                    title: const Center(
                      child: Text.rich(TextSpan(
                        children: <InlineSpan>[
                          TextSpan(text: 'About Us '),
                          WidgetSpan(
                              child: Icon(
                            Icons.fiber_manual_record,
                            color: Colors.red,
                            size: 18,
                          )),
                        ],
                      )),
                    ),
                    titleTextStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.grey[900]),
                    leading: const Icon(Icons.chevron_left),
                    onTap: () {
                      Navigator.of(context).pushNamed('/about-us');
                    },
                  ),
                  ListTile(
                    title: const Center(child: Text('Privacy policy')),
                    titleTextStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.grey[900]),
                    leading: const Icon(Icons.chevron_left),
                    onTap: () {
                      Navigator.of(context).pushNamed('/privacy-policy');
                    },
                  ),
                  ListTile(
                    title: const Center(child: Text('Terms of Use')),
                    titleTextStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.grey[900]),
                    leading: const Icon(Icons.chevron_left),
                    onTap: () {
                      Navigator.of(context).pushNamed('/tems-of-use');
                    },
                  ),
                ],
              ),
            )));
  }

  SelectableText get _appBarTitle => SelectableText.rich(
        TextSpan(
          text: 'Free',
          style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Color(0xFFF2A115),
              fontSize: 22.0),
          children: <TextSpan>[
            TextSpan(
                text: 'make',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[900])),
          ],
        ),
      );
}
