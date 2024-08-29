import 'package:flutter/material.dart';

class HowWork extends StatelessWidget {
  const HowWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SelectableText('How does Freemake work?',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        // ListView.builder(
        //   itemCount: 2,
        //   itemBuilder: (context, index) {},
        // )
      ],
    );
  }
}
