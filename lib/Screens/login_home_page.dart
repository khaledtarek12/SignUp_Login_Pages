
import 'package:chat_app/Screens/signup_home_page.dart';
import 'package:chat_app/Widget/button.dart';
import 'package:chat_app/Widget/custom_awsome_icons.dart';
import 'package:chat_app/Widget/cutom_row_devider.dart';
import 'package:chat_app/Widget/cutom_row_radiobutton.dart';
import 'package:chat_app/Widget/text_form_validator_field.dart';
import 'package:chat_app/const.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginHomePage extends StatefulWidget {
  const LoginHomePage({super.key});

  static String id = 'LoginHomePage';

  @override
  State<LoginHomePage> createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();

    bool isLoading = false;
    // ignore: unused_local_variable
    String? email, password;

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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login to your Account',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        CustomFormTextField(
                          onChange: (data) {
                            email = data;
                          },
                          hint: 'Email',
                          prefexIcon: const Icon(Icons.mail),
                        ),
                        const SizedBox(
                          height: 30,
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
                        const CusttomRadioButtom(),
                        const SizedBox(
                          height: 15,
                        ),
                        const CusttomButtonPage(
                          text: 'Sign In',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Forget your password',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                )),
                          ],
                        ),
                        const CustomRowDevider(),
                        const SizedBox(
                          height: 5,
                        ),
                        const IconSocialMedia(),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account ?'),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignupHomePage.id);
                              },
                              child: const Text(
                                '   Sign up',
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
