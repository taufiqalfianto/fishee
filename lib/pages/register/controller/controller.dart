import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController serialnumber = TextEditingController();
  TextEditingController password = TextEditingController();

  SupabaseClient client = Supabase.instance.client;
 
  Future<void> SignUp(BuildContext context) async {
    if (name.text.isNotEmpty &&
        email.text.isNotEmpty &&
        serialnumber.text.isNotEmpty &&
        password.text.isNotEmpty) {
      isLoading.value = true;
      
      try {
        AuthResponse response = await client.auth.signUp(
          password: password.text,
          email: email.text,
        );
        isLoading.value = false;
        await client.from("User").insert({
          "name": name.text,
          "email": email.text,
          "phone": phone.text,
          "serialnumber": serialnumber.text,
          "password": password.text,
          "created_at": DateTime.now().toIso8601String(),
          "cuid": response.user!.id,
        });

      } catch (e) {
        isLoading.value = false;
        SnackBar(
          content: AwesomeSnackbarContent(
            title: 'ERROR',
            message: e.toString(),
            contentType: ContentType.failure,
          ),
        );
      }
    } else {
      SnackBar(
        content: AwesomeSnackbarContent(
          title: 'ERROR',
          message: "Email, password and name are required",
          contentType: ContentType.failure,
        ),
      );
      // Get.snackbar('ERROR', "Email, password and name are required");
    }
  }
}
