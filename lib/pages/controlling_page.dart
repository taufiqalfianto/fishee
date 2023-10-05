import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smarthome/bottomnavbar.dart';
import 'package:smarthome/theme.dart';

class ControllingPage extends StatefulWidget {
  ControllingPage({Key? key}) : super(key: key);

  @override
  State<ControllingPage> createState() => _ControllingPageState();
}

class _ControllingPageState extends State<ControllingPage> {
  int currentIndex = 0;

  bool light0 = true;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget header() {
    return Padding(
      padding: EdgeInsets.only(
        top: 48,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: whitecolor,
            ),
          ),
          Text(
            'LivingRoom',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: whitecolor,
            ),
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  gradient: linearorange,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Add',
                style: TextStyle(
                  color: whitecolor,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget menu() {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Container(
        width: 500,
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 118,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: lineardark,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_smarthome.png',
                      scale: 4,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cat Fish',
                      style: TextStyle(color: whitecolor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 118,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: whitecolor.withOpacity(0.2),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_livingroom.png',
                      scale: 4,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Snapper',
                      style: TextStyle(color: whitecolor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 118,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: whitecolor.withOpacity(0.2),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_kitchen.png',
                      scale: 4,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Shirmp',
                      style: TextStyle(color: whitecolor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget indicator() {
    return Container(
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 70,
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: whitecolor),
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(
                  'Celcius',
                  style: TextStyle(
                    color: whitecolor,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: whitecolor),
              shape: BoxShape.circle,
              gradient: linearpurple,
            ),
            child: Center(
              child: Text(
                '60',
                style: TextStyle(
                  color: whitecolor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rooms() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Container(
        width: 345,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: whitecolor.withOpacity(
            0.1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_ac.png',
                scale: 2,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Automatic Feeder',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: whitecolor,
                    ),
                  ),
                  Text(
                    'Active',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: whitecolor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              FlutterSwitch(
                activeColor: purplecolor,
                height: 40,
                width: 70,
                value: light0,
                onToggle: (val) {
                  setState(() {
                    light0 = val;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget temp() {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Container(
        width: 500,
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: lineardark,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_cool.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'PH',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: whitecolor.withOpacity(
                      0.05,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_wind.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Temperature',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: whitecolor.withOpacity(
                      0.05,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_sun.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Weather',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: whitecolor.withOpacity(
                      0.05,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_timer.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Off',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      bottomNavigationBar: BottomNavBar(),
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              SizedBox(
                height: 24,
              ),
              menu(),
              SizedBox(
                height: 40,
              ),
              indicator(),
              SizedBox(
                height: 40,
              ),
              rooms(),
              SizedBox(
                height: 24,
              ),
              temp(),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
