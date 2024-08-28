import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64, right: 64, top: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
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
                  "Convert Videos/Audios to Multiple Formats with Freemake’s Reliable and Free Software, Supporting All Popular and Rare Formats for Various Devices",
                  style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 50),
                const SelectableText(
                  'Download the app:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 20),
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
          Image.asset(Assets.convert,
              width: MediaQuery.of(context).size.width * 0.3)
        ],
      ),
    );
  }
}
