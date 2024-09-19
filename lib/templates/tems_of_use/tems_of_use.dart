import 'package:flutter/material.dart';
import 'package:freemake_page/components/nav_drawer.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;
import 'package:freemake_page/templates/home/footer.dart';

class TemsOfUse extends StatelessWidget {
  const TemsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const NavDrawer(),
        body: ListView(
          children: [
            const ab.AppBar(),
            ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
                  child: SelectableText.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            color: Colors.grey[800]),
                        children: const [
                          TextSpan(
                              text: 'Freemake Terms and Conditions\n\n',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'Welcome to the Freemake app. By accessing and using this website, you agree to be bound by the following terms and conditions. These terms apply to all users of the site, including visitors and those who download software.\n\n'),
                          TextSpan(
                              text: 'Content and Use\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'Freemake provides information, materials, and software on this website. All content is protected by copyright, either by Freemake or its suppliers.\nInformation: All information on the website is provided "as is" without any guarantees or warranties, expressed or implied. This includes, but is not limited to, warranties of merchantability, fitness for a specific purpose, or accuracy. Freemake is not responsible for any errors or omissions in the information.\n\n'),
                          TextSpan(
                              text: 'Third-Party Links\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'This website may contain links to third-party websites. Freemake does not control these websites and is not responsible for their content. While we review linked content before adding them, we cannot guarantee their ongoing accuracy or compliance. If you become aware of an issue with a linked website, please contact Freemake. We will remove the link promptly if necessary.\n\n'),
                          TextSpan(
                              text: 'Limitation of Liability\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'FREEMAKE SHALL NOT BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT, OR CONSEQUENTIAL DAMAGES ARISING OUT OF OR RELATED TO YOUR USE OF THIS WEBSITE OR THE SOFTWARE DOWNLOADED FROM IT. This includes, but is not limited to, damages for loss of use, data, or profits, even if Freemake has been advised of the possibility of such damages.\n\n'),
                          TextSpan(
                              text: 'Changes and Updates\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "Freemake reserves the right to change these terms and conditions at any time. We will update this page with any revisions. It's your responsibility to periodically review the terms for changes. Continued use of the website after any changes constitutes your acceptance of the new terms.\n\n"),
                          TextSpan(
                              text: 'Technical Accuracy\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'Freemake strives to provide accurate information on this website. However, technical inaccuracies, typographical errors, or other mistakes may occur. We periodically update the website, and these changes will be reflected in new versions. Freemake may also make improvements or changes to the products and programs described on the website at any time.\n\n'),
                          TextSpan(
                              text: 'Contact Us\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'If you have any questions about these terms and conditions, please contact Freemake.\n\n'),
                        ]),
                  ),
                )),
            const Footer()
          ],
        ));
  }
}
