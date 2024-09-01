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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[900]),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: Colors.grey[900]),
                  )
                ],
              ),
            ),
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
