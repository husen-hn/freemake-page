import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 64, right: 64),
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SelectableText(
                  'Freemake Video/Audio Converter\nHigh-Quality Freeware for All Your Media Needs',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 40),
                const SelectableText(
                  "Convert Videos/Audios to Multiple Formats with Freemake’s Reliable and Free Software, Supporting All Popular and Rare Formats for Various Devices.",
                  style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 110),
                const SelectableText(
                  'Download the app:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      Assets.directDL,
                      width: 160,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      Assets.cafebazaarDL,
                      width: 160,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Image.asset(Assets.convert,
                width: MediaQuery.of(context).size.width * 0.22),
          )
        ],
      ),
    );
  }
}
