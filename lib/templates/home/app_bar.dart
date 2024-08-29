import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.asset(
              Assets.logo,
              width: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            _appBarTitle
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.21,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About Us', style: TextStyle(fontFamily: 'Montserrat')),
              Text('Privacy policy',
                  style: TextStyle(fontFamily: 'Montserrat')),
              Text('Terms of Use', style: TextStyle(fontFamily: 'Montserrat'))
            ],
          ),
        )
      ]),
    );
  }

  RichText get _appBarTitle => RichText(
        text: const TextSpan(
          text: 'Free',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Color(0xFFF2A115),
              fontSize: 22.0),
          children: <TextSpan>[
            TextSpan(
                text: 'make',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
