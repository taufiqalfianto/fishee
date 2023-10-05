import 'package:flutter/material.dart';
import 'package:smarthome/theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        gradient: linearpurple,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Image.asset(
                  'assets/icon_smarthome.png',
                  width: 28,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/controlling');
                },
                child: Image.asset(
                  'assets/icon_device.png',
                  width: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/device');
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whitecolor,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 32,
                    color: purplecolor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pushNamed(context, '/notification');
                }),
                child: Image.asset(
                  'assets/icon_notification.png',
                  width: 28,
                ),
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/icon_user.png',
                  width: 28,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
