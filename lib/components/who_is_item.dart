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
    bool isLScreen = MediaQuery.of(context).size.width > 600;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.16,
      child: Column(
        children: [
          Image.asset(
            icon,
            width: isLScreen ? 100 : 70,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: isLScreen ? 16 : 14,
                color: Colors.grey[900]),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: isLScreen ? 14 : 12,
                color: Colors.grey[800]),
          )
        ],
      ),
    );
  }
}
