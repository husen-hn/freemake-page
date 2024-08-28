import 'package:flutter/material.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ab.AppBar(),
      body: Container(),
    );
  }
}
