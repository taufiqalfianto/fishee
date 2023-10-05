import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smarthome/pages/homepage.dart';
import 'package:smarthome/pages/login/controller/logincontroller.dart';
import 'package:smarthome/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passicon = true;
  final controller = Get.put(SignInController());
  void secure() {
    setState(() {
      _passicon = !_passicon; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: ListView(
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 230,
                ),
              ),
              SizedBox(height: 26),
              emailtextfield('Email', controller.email),
              SizedBox(height: 24),
              passtextfield('Password', controller.password),
              SizedBox(height: 80),
              button(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailtextfield(String text, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: whitecolor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: controller,
          style: TextStyle(color: whitecolor),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: whitecolor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: purplecolor),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(width: 3, color: purplecolor),
            ),
          ),
        ),
      ],
    );
  }

  Widget passtextfield(
    String text,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: whitecolor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: controller,
          style: TextStyle(color: whitecolor),
          obscureText: _passicon,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: whitecolor,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                secure();
              },
              icon: _passicon
                  ? Icon(
                      Icons.visibility_outlined,
                      color: whitecolor,
                    )
                  : Icon(
                      Icons.visibility_off_outlined,
                      color: whitecolor,
                    ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: purplecolor),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(width: 3, color: purplecolor),
            ),
          ),
        ),
      ],
    );
  }

  Widget button(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (controller.isloading.isFalse) {
              controller.SignIn(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }
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
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          'Or',
          style: TextStyle(color: orangecolor, fontSize: 20),
        ),
        SizedBox(
          height: 18,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text('Register Your Fishee',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: whitecolor,
                fontSize: 24,
              )),
        )
      ],
    );
  }
}
