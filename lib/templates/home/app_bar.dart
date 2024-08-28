import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.asset(
              Assets.logo,
              width: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            _appBarTitle
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About Us'),
              Text('Privacy policy'),
              Text('Terms of Use')
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
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFC12F),
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
