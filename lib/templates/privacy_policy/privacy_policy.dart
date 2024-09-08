import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;
import 'package:freemake_page/templates/home/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const ab.AppBar(),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 120),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        color: Colors.grey[800]),
                    children: [
                      const TextSpan(
                          text: 'Freemake Privacy Policy\n\n\n',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: 'Introduction\n\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'Freemake respects your online privacy and is committed to protecting any personal information ("Personal Information") you share with us. This Privacy Policy explains how we collect, use, and disclose your Personal Information when you use our application, '),
                      TextSpan(
                        text: 'https://husen-hn.github.io/freemake-page.\n\n',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse(
                                'https://husen-hn.github.io/freemake-page'));
                          },
                      ),
                      const TextSpan(
                          text: 'What Personal Information Do We Collect?\n\n'),
                      const TextSpan(
                          text:
                              'Freemake does not collect any personal information when you use our application.\n\n'),
                      const TextSpan(
                          text: 'How We Use Your Information\n\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'We may only ask for Personal Information if it helps us:\n'),
                      const TextSpan(
                          text: 'Provide you with a service you request.\n'),
                      const TextSpan(
                          text:
                              'Contact you for clarification on inaccurate information or to follow up on a customer service issue.\n'),
                      const TextSpan(text: 'Sharing Your Information'),
                      const TextSpan(text: 'Freemake will never:\n'),
                      const TextSpan(
                          text:
                              'Sell your Personal Information to third parties.\n'),
                      const TextSpan(
                          text:
                              'Share your Personal Information with third parties without your consent, unless legally required.\n\n'),
                      const TextSpan(
                          text: 'Links to Other Websites\n\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'Our application may contain links to other websites. Freemake is not responsible for the privacy practices of those websites. We encourage you to read the privacy statements of each website you visit.\n\n'),
                      const TextSpan(
                          text: 'Third-Party Advertising\n\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'We may use third-party advertising companies to display ads on our application. These companies may use non-personal information (not including your name, address, email, or phone number) about your visits to this and other websites to deliver targeted advertising. For more information on this practice and how to opt out, visit: '),
                      TextSpan(
                        text: 'https://www.adivery.com.\n\n',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse('https://www.adivery.com'));
                          },
                      ),
                      const TextSpan(
                          text: "Children's Privacy\n\n",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'Our application is not intended for children. We do not knowingly collect Personal Information from anyone under 13 years old.\n\n'),
                      const TextSpan(
                          text: 'Changes to This Policy\n\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              'We may update this Privacy Policy. We will post any changes prominently on our website for a reasonable period.\n\n')
                    ]),
              )),
        ),
        const Footer()
      ],
    ));
  }
}
