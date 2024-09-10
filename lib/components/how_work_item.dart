import 'package:flutter/material.dart';

class HowWorkItem extends StatelessWidget {
  final int index;
  final String icon;
  final String title;
  final String description;

  const HowWorkItem(
      {required this.index,
      required this.icon,
      required this.title,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    bool isLScreen = MediaQuery.of(context).size.width > 600;
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            index % 2 == 0
                ? Image.asset(
                    icon,
                    width: MediaQuery.of(context).size.width * 0.3,
                  )
                : Container(),
            const SizedBox(width: 50),
            SizedBox(
              width: isLScreen
                  ? MediaQuery.of(context).size.width * 0.2
                  : MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: isLScreen ? 16 : 14,
                        color: Colors.grey[900]),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: isLScreen ? 14 : 12,
                        color: Colors.grey[900]),
                  )
                ],
              ),
            ),
            const SizedBox(width: 50),
            index % 2 == 0
                ? Container()
                : Image.asset(
                    icon,
                    width: MediaQuery.of(context).size.width * 0.3,
                  )
          ],
        ));
  }
}
