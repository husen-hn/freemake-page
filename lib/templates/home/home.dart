import 'package:flutter/material.dart';
import 'package:freemake_page/components/nav_drawer.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;
import 'package:freemake_page/templates/home/footer.dart';
import 'package:freemake_page/templates/home/header.dart';
import 'package:freemake_page/templates/home/how_work.dart';
import 'package:freemake_page/templates/home/release.dart';
import 'package:freemake_page/templates/home/who_is.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const NavDrawer(),
        body: ListView(
          children: const [
            ab.AppBar(),
            Header(),
            WhoIs(),
            Release(),
            HowWork(),
            Footer()
          ],
        ));
  }
}
