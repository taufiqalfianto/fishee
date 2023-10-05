import 'package:flutter/material.dart';
import 'package:smarthome/bottomnavbar.dart';
import 'package:smarthome/theme.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            child: Center(child: header(context)),
            preferredSize: Size(double.infinity, 100)),
        backgroundColor: bgcolor,
        bottomNavigationBar: BottomNavBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: ListView(
            children: [
              alertmessage('It’s Time To Feeding !!!'),
              alertmessage('Low Temperature'),
              alertmessage('Low PH'),
              alertmessage('It’s Time To Feeding !!!'),
              alertmessage('Low Temperature'),
            ],
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: whitecolor,
              size: 24,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          Text(
            'Notification',
            style: TextStyle(
              fontSize: 24,
              color: whitecolor,
            ),
          )
        ],
      ),
    );
  }

  Widget alertmessage(String alert) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: lineardark,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 70,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              alert,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: whitecolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
