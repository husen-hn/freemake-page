import 'package:flutter/material.dart';
import 'package:freemake_page/templates/home/app_bar.dart' as ab;
import 'package:freemake_page/templates/home/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ab.AppBar(),
      body: Column(
        children: [Header()],
      ),
    );
  }
}
