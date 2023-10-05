import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smarthome/bottomnavbar.dart';
import 'package:smarthome/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  bool light0 = true;

  bool light1 = true;

  bool light2 = true;

  bool light3 = true;

  bool light4 = true;

  bool light5 = true;

  Widget header() {
    return Padding(
      padding: EdgeInsets.only(
        top: 48,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_menu.png',
            scale: 4,
          ),
          Spacer(),
          Text(
            'SmartHome',
            style: TextStyle(
              color: whitecolor,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () async {
              SupabaseClient client = Supabase.instance.client;
              await client.auth.signOut();
            },
            child: Image.asset(
              'assets/icon_notification.png',
              scale: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back home',
                style: TextStyle(
                  color: whitecolor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Slimvally Chike',
                style: TextStyle(
                  color: whitecolor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
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
                'Add Device',
                style: TextStyle(color: whitecolor),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget using() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Container(
        width: 345,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: linearpurple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: linearorange,
                ),
                child: Center(
                  child: Icon(
                    Icons.energy_savings_leaf,
                    color: whitecolor,
                    size: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '40.8 kWh',
                    style: TextStyle(
                      color: whitecolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Energy usage this month',
                    style: TextStyle(
                      color: whitecolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: 84,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: linearorange,
                ),
                child: Center(
                  child: Text(
                    'Manage',
                    style: TextStyle(
                      fontSize: 12,
                      color: whitecolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: 500,
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 135,
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
                      'All Rooms',
                      style: TextStyle(color: whitecolor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/controlling');
              },
              child: Container(
                width: 135,
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
                        'LivingRoom',
                        style: TextStyle(color: whitecolor),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 135,
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
                      'Kitchen',
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

  Widget widgets() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Widget',
                style: TextStyle(
                  color: whitecolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: whitecolor,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Container(
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_ac.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Cat Fish',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
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
              Container(
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_wifi.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Pomfret',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
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
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_lamp.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Gurame',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
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
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_speaker.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Snapper',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
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
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_speaker.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Snapper',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
                        width: 60,
                        value: light4,
                        onToggle: (val) {
                          setState(() {
                            light4 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whitecolor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icon_speaker.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/icon_more.png',
                            scale: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pool Water',
                        style: TextStyle(
                          fontSize: 14,
                          color: whitecolor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Snapper',
                        style: TextStyle(
                          fontSize: 16,
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlutterSwitch(
                        activeColor: purplecolor,
                        height: 30,
                        width: 60,
                        value: light5,
                        onToggle: (val) {
                          setState(() {
                            light5 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
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
              profile(),
              SizedBox(
                height: 32,
              ),
              //
              widgets(),
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
