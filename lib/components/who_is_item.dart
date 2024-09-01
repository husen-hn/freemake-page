import 'package:flutter/material.dart';

class WhoIsItem extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const WhoIsItem(
      {required this.icon,
      required this.title,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.16,
      child: Column(
        children: [
          Image.asset(
            icon,
            width: 100,
          ),
          const SizedBox(height: 30),
          SelectableText(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey[900]),
          ),
          const SizedBox(height: 10),
          SelectableText(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.grey[800]),
          )
        ],
      ),
    );
  }
}
