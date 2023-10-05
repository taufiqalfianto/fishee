import 'package:flutter/material.dart';
import 'package:smarthome/theme.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Stack(
          children: [
            Positioned(
              top: 200,
              left: 0,
              right: 10,
              child: bgimage(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      header(),
                      button(context),
                    ],
                  ),
                  Positioned(
                    top: 450,
                    left: 250,
                    child: usericon(
                      80,
                      80,
                      'assets/user1.png',
                    ),
                  ),
                  Positioned(
                    top: 400,
                    left: 50,
                    child: usericon(
                      70,
                      70,
                      'assets/user2.png',
                    ),
                  ),
                  Positioned(
                    top: 325,
                    left: 200,
                    child: usericon(
                      60,
                      60,
                      'assets/user3.png',
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 100,
                    child: usericon(
                      50,
                      50,
                      'assets/user4.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: 'Ask something and',
            style: TextStyle(
              fontSize: 32,
              color: whitecolor,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' communicate',
                style: TextStyle(
                  fontSize: 32,
                  color: orangecolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nwith other',
                style: TextStyle(
                  fontSize: 32,
                  color: whitecolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' breeders',
                style: TextStyle(
                  fontSize: 32,
                  color: purplecolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bgimage() {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/bgimage.png',
          ),
        ),
      ),
    );
  }

  Widget usericon(double width, double height, String image) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }

  Widget button(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/login');
      },
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: linearpurple,
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: whitecolor,
            ),
          ),
        ),
      ),
    );
  }
}
