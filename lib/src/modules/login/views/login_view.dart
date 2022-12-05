import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/buttons/custom_button.dart';
import '../../../components/field/custom_text_field.dart';
import '../../../components/icons/flash_chat.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {Key? key}) : super(key: key);
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AnimationLogo(size: 170),
            Column(
              children: const [
                CustomTextField(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ],
            ),
            CustomButton(
              text: isLogin ? 'Login' : 'Register',
              borderRadius: 30,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
