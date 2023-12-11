import 'package:chat_app/Widget/button.dart';
import 'package:chat_app/Widget/custom_awsome_icons.dart';
import 'package:chat_app/Widget/cutom_row_devider.dart';
import 'package:chat_app/Widget/text_form_validator_field.dart';
import 'package:chat_app/Widget/textfield.dart';
import 'package:chat_app/const.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupHomePage extends StatefulWidget {
  const SignupHomePage({super.key});

  static String id = 'SignupHomePage';

  @override
  State<SignupHomePage> createState() => _SignupHomePageState();
}

class _SignupHomePageState extends State<SignupHomePage> {
  GlobalKey<FormState> formkey = GlobalKey();

  bool isLoading = false;

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 50),
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: kContaineryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: formkey,
                    child: ListView(
                      children: [
                        const Center(
                          child: Text(
                            'Create a new Account',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        CustomFormTextField(
                          onChange: (data) {
                            email = data;
                          },
                          hint: 'Email or Username',
                          prefexIcon: const Icon(Icons.mail),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomFormTextField(
                          onChange: (data) {
                            password = data;
                          },
                          hint: 'Password',
                          prefexIcon: const Icon(Icons.lock),
                          sufxIcon: const Icon(Icons.visibility_off),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(
                          hint: 'Confirm Password',
                          prefexIcon: Icon(Icons.lock),
                          sufxIcon: Icon(Icons.visibility_off),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(
                          hint: 'Enter your phone',
                          prefexIcon: Icon(Icons.phone),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(
                          hint: 'Doctor',
                          prefexIcon: Icon(Icons.person_add_alt_1_sharp),
                          sufxIcon: Icon(Icons.keyboard_arrow_down_outlined),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CusttomButtonPage(
                            text: 'Next',
                          ),
                        ),
                        const CustomRowDevider(),
                        const SizedBox(
                          height: 15,
                        ),
                        const IconSocialMedia(),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account ?'),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                '   LogIn',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
