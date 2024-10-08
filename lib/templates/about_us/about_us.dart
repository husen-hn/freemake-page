import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';
import 'package:freemake_page/components/nav_drawer.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;
import 'package:freemake_page/templates/home/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const NavDrawer(),
        body: ListView(
          children: [
            const ab.AppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  children: [
                    Image.asset(Assets.logo,
                        width: 100, semanticLabel: 'Freemake logo'),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: SelectableText('Freemake',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: SelectableText('version 0.0.1 - beta',
                            style:
                                TextStyle(fontSize: 14, color: Colors.grey))),
                    SelectableText.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          const TextSpan(
                            text: 'Freemake is a product by ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'HUSEN',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(
                                    Uri.parse('https://github.com/husen-hn'));
                              },
                          ),
                          const TextSpan(
                            text:
                                ' that lets anyone convert and share videos and audios in various formats and resolutions.',
                            style: TextStyle(color: Colors.black),
                          ),
                        ])),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: SelectableText('Customer Support',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    SelectableText.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          const TextSpan(
                            text: 'Email: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'hosseinspell@gmail.com',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(
                                    Uri.parse('mailto:hosseinspell@gmail.com'));
                              },
                          ),
                        ])),
                    const SizedBox(
                      height: 10,
                    ),
                    SelectableText.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          const TextSpan(
                            text: 'Website: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'https://husen-hn.github.io/freemake-page',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(Uri.parse(
                                    'https://husen-hn.github.io/freemake-page'));
                              },
                          ),
                        ])),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: SelectableText('Third Party Library',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    SelectableText.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                            style: const TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                            children: [
                              const TextSpan(
                                text: 'This software uses code of',
                              ),
                              TextSpan(
                                text: ' FFmpeg',
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse('https://ffmpeg.org'));
                                  },
                              ),
                              const TextSpan(
                                text: ' licensed under the',
                              ),
                              TextSpan(
                                text: " LGPLv3.0",
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        'https://www.gnu.org/licenses/lgpl-3.0.en.html'));
                                  },
                              ),
                              const TextSpan(
                                text: " and it's sourse can be downloaded",
                              ),
                              TextSpan(
                                text: " here",
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        'http://ffmpeg.org/download.html'));
                                  },
                              ),
                              const TextSpan(
                                text: ".",
                              ),
                            ]))
                  ],
                ),
              ),
            ),
            const Footer()
          ],
        ));
  }
}
