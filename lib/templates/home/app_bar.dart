import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/');
          },
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Row(
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
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  Navigator.of(context).pushNamed('/about-us');
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Text('About Us',
                    style: TextStyle(
                        fontFamily: 'Montserrat', color: Colors.grey[800])),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  Navigator.of(context).pushNamed('/privacy-policy');
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Text('Privacy policy',
                    style: TextStyle(
                        fontFamily: 'Montserrat', color: Colors.grey[800])),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  Navigator.of(context).pushNamed('/tems-of-use');
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Text('Terms of Use',
                    style: TextStyle(
                        fontFamily: 'Montserrat', color: Colors.grey[800])),
              )
            ],
          ),
        )
      ]),
    );
  }

  RichText get _appBarTitle => RichText(
        text: TextSpan(
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
