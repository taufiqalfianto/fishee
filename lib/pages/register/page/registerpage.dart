import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smarthome/pages/homepage.dart';
import '../controller/controller.dart';
import 'package:smarthome/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();
  bool _passicon = true;

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    textfield('Name', controller.name),
                    textfield('Email', controller.email),
                    textfield('Telepon', controller.phone),
                    textfield('Serial Number', controller.serialnumber),
                    passtextfield('Password', controller.password),
                  ],
                ),
              ),

              SizedBox(
                height: 56,
              ),
              Obx(
                () => button(context),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget textfield(String text, TextEditingController controller) {
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
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "form has not empty";
            }
            ;
            return null;
          },
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
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget passtextfield(String text, TextEditingController controller) {
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
        TextFormField(
          validator: (value) {
            if (value!.isEmpty || !value.contains('@')) {
              return 'email not valid';
            }
            return null;
          },
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
            if (controller.isLoading.isFalse) {
              controller.SignUp(context);
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
              child: controller.isLoading.isFalse
                  ? Text(
                      'Register Your Fishee',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: whitecolor,
                      ),
                    )
                  // : CircularProgressIndicator(
                  //     color: whitecolor,
                  //     strokeWidth: 3,
                  //   ),
                  : Text(
                      'Loading ...',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: whitecolor,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
