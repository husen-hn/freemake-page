import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLScreen = MediaQuery.of(context).size.width > 600;
    return Container(
      padding: EdgeInsets.only(
          left: isLScreen ? 64 : 32, right: isLScreen ? 64 : 32),
      height: isLScreen
          ? MediaQuery.of(context).size.height
          : MediaQuery.of(context).size.height * 0.7,
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
                SelectableText(
                  'Freemake Video/Audio Converter\nHigh-Quality Freeware for All Your Media Needs',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isLScreen ? 32 : 16,
                      fontFamily: 'Montserrat',
                      color: Colors.grey[900]),
                ),
                SizedBox(height: isLScreen ? 40 : 20),
                SelectableText(
                  "Convert Videos/Audios to Multiple Formats with Freemake’s Reliable and Free Software, Supporting All Popular and Rare Formats for Various Devices.",
                  style: TextStyle(
                      fontSize: isLScreen ? 16 : 12,
                      fontFamily: 'Montserrat',
                      color: Colors.grey[800]),
                ),
                SizedBox(height: isLScreen ? 110 : 40),
                SelectableText(
                  'Download the app:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isLScreen ? 14 : 10,
                      fontFamily: 'Montserrat',
                      color: Colors.grey[900]),
                ),
                const SizedBox(height: 10),
                isLScreen
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _launchUrl(Uri.parse(
                                  'https://github.com/husen-hn/freemake-page/releases/latest'));
                            },
                            child: Image.asset(
                              Assets.directDL,
                              width: 160,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              _launchUrl(Uri.parse(
                                  'https://cafebazaar.ir/app/com.husen.freemake'));
                            },
                            child: Image.asset(
                              Assets.cafebazaarDL,
                              width: 160,
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _launchUrl(Uri.parse(
                                  'https://github.com/husen-hn/freemake-page/releases/latest'));
                            },
                            child: Image.asset(
                              Assets.directDL,
                              width: 130,
                            ),
                          ),
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () {
                              _launchUrl(Uri.parse(
                                  'https://cafebazaar.ir/app/com.husen.freemake'));
                            },
                            child: Image.asset(
                              Assets.cafebazaarDL,
                              width: 130,
                            ),
                          )
                        ],
                      )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: isLScreen ? 30 : 10, right: isLScreen ? 30 : 10),
            child: Image.asset(Assets.convert,
                width: MediaQuery.of(context).size.width * 0.2),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
