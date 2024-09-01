import 'package:flutter/material.dart';
import 'package:freemake_page/assets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF32a1ce),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.directDL,
                    width: 120,
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.cafebazaarDL,
                    width: 120,
                  ),
                )
              ]),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.21,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text('About Us',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[900])),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text('Privacy policy',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[900])),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text('Terms of Use',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[900])),
                    )
                  ],
                ),
              )
            ],
          ),
          Text('Copyright © 2024, Freemake application All rights reserved.',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.grey[900]))
        ],
      ),
    );
  }
}
