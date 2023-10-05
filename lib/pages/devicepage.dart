import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smarthome/bottomnavbar.dart';
import 'package:smarthome/theme.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  int currentIndex = 1;
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;
  bool light3 = true;
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
            'MyDevice',
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

  Widget device() {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '4 Devices',
            style: TextStyle(
                fontSize: 24, color: whitecolor, fontWeight: FontWeight.bold),
          ),
          Text(
            'You have 4 active devices',
            style: TextStyle(
                fontSize: 18, color: whitecolor, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Widget numdevice() {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
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
                        'LG Smart Ac',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Living Room',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Bedroom',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  FlutterSwitch(
                    activeColor: purplecolor,
                    height: 35,
                    width: 60,
                    value: light1,
                    onToggle: (val) {
                      setState(() {
                        light1 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
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
                    'assets/icon_wifi.png',
                    scale: 2,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wifi Router',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'AllRooms',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  FlutterSwitch(
                    activeColor: purplecolor,
                    height: 35,
                    width: 60,
                    value: light2,
                    onToggle: (val) {
                      setState(() {
                        light2 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
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
                    'assets/icon_lamp.png',
                    scale: 2,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smart Lamp',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'AllRooms',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  FlutterSwitch(
                    activeColor: purplecolor,
                    height: 35,
                    width: 60,
                    value: light3,
                    onToggle: (val) {
                      setState(() {
                        light3 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
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
                    'assets/icon_speaker.png',
                    scale: 2,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smart Speaker',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whitecolor,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Living Room',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 26,
                            width: 77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whitecolor.withOpacity(
                                0.2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'BedRoom',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  FlutterSwitch(
                    activeColor: purplecolor,
                    height: 35,
                    width: 60,
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
        ],
      ),
    );
  }

  Widget addwidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        width: 340,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whitecolor.withOpacity(0.1),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  gradient: linearorange,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Add New Device',
                style: TextStyle(
                  color: whitecolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              )
            ],
          ),
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
          header(),
          SizedBox(
            height: 24,
          ),
          device(),
          SizedBox(
            height: 24,
          ),
          numdevice(),
          SizedBox(
            height: 24,
          ),
          addwidget(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
