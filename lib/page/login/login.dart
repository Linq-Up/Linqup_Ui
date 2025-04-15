import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            children: [
              const Gap(
                height: 40,
              ),
              Name(
                text: 'Login',
                textColor: Colors.deepPurple.shade900,
                textSize: 30,
                textWeight: FontWeight.bold,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: "Don't have account?",
                    textColor: Colors.grey.shade400,
                    textSize: 16,
                    textWeight: FontWeight.w600,
                  ),
                  const Gap(width: 5),
                  CustomButton(
                    onClick: () => Navigator.pushNamed(context, '/sign-up'),
                    title: 'Sign Up Here',
                    titleColor: Colors.deepPurple.shade900,
                    titleSize: 16,
                    titleWeight: FontWeight.bold,
                  )
                ],
              ),
              const Gap(height: 60),
              const CustomInputWrapper(
                label: 'Email',
                iconData: Icons.email,
                hintText: 'Type something here',
              ),
              const Gap(
                height: 10,
              ),
              const CustomInputWrapper(
                label: 'Password',
                iconData: Icons.lock,
                hintText: 'Type something here',
              ),
              const Gap(
                height: 20,
              ),
              CustomButton(
                onClick: () {
                  Navigator.pushNamed(context, '/home');
                },
                title: 'Login',
                titleColor: Colors.white,
                titleSize: 16,
                titleWeight: FontWeight.w500,
                bgColor: Colors.deepPurple.shade900,
                customPaddingHorizontal: 50,
                customButtonWidth: 350,
                customPaddingVertical: 15,
                topLeft: 25,
                topRight: 25,
                bottomLeft: 25,
                bottomRight: 25,
              ),
              const Gap(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  CustomButton(
                    onClick: () {},
                    title: 'Forgot Password?',
                    titleColor: Colors.deepPurple.shade900,
                    titleSize: 16,
                    titleWeight: FontWeight.bold,
                  ),
                ],
              ),
              const Gap(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 95,
                    height: 1,
                    color: Colors.grey.shade400,
                  ),
                  const Gap(
                    width: 10,
                  ),
                  Name(
                    text: "Or continue with",
                    textColor: Colors.grey.shade400,
                    textSize: 16,
                    textWeight: FontWeight.w600,
                  ),
                  const Gap(
                    width: 10,
                  ),
                  Container(
                    width: 95,
                    height: 1,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              const Gap(
                height: 20,
              ),
              CustomButton(
                onClick: () {},
                title: 'Continue with Google',
                titleColor: Colors.deepPurple.shade900,
                titleSize: 16,
                titleWeight: FontWeight.w500,
                bgColor: Colors.white,
                borderColor: Colors.deepPurple.shade900,
                borderWidth: 1.5,
                customPaddingHorizontal: 50,
                customButtonWidth: 350,
                customPaddingVertical: 15,
                topLeft: 25,
                topRight: 25,
                bottomLeft: 25,
                bottomRight: 25,
              ),
              const Gap(
                height: 15,
              ),
              CustomButton(
                onClick: () {},
                title: 'Continue with Apple',
                titleColor: Colors.deepPurple.shade900,
                titleSize: 16,
                titleWeight: FontWeight.w500,
                bgColor: Colors.white,
                borderColor: Colors.deepPurple.shade900,
                borderWidth: 1.5,
                customPaddingHorizontal: 50,
                customButtonWidth: 350,
                customPaddingVertical: 15,
                topLeft: 25,
                topRight: 25,
                bottomLeft: 25,
                bottomRight: 25,
              ),
              const Gap(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
