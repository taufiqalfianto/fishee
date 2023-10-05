import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInController extends GetxController {
  RxBool isloading = false.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  SupabaseClient client = Supabase.instance.client;

  Future<void> SignIn(BuildContext context) async {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      isloading.value = true;

      // try {
      //   AuthResponse response = await client.auth.signInWithPassword(
      //     email: email.text,
      //     password: password.text,
      //   );
      //   isloading.value = false;
        
      // } catch (e) {}
    }
  }
}
