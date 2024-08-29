import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class Release extends StatelessWidget {
  const Release({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      height: 460,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFF2A115),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.logo,
                  width: 40,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                _appBarTitle
              ],
            ),
            const SizedBox(height: 30),
            TextButton.icon(
                onPressed: () {},
                label: Text('Releases',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800])),
                icon: const Icon(Icons.chevron_right_sharp),
                style: TextButton.styleFrom(
                  iconColor: Colors.grey[800],
                  backgroundColor: Colors.white,
                )),
            const SizedBox(height: 10),
            Text('release notes and download all older versions',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic))
          ],
        ),
      ),
    );
  }

  RichText get _appBarTitle => RichText(
        text: TextSpan(
          text: 'Free',
          style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 32.0),
          children: <TextSpan>[
            TextSpan(
                text: 'make',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[800])),
          ],
        ),
      );
}
