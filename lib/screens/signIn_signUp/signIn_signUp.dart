import 'package:chat_app/components/primary_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/chats/chat_screen.dart';
import 'package:flutter/material.dart';

class SignIn_Signup extends StatefulWidget {
  const SignIn_Signup({Key? key}) : super(key: key);

  @override
  _SignIn_SignupState createState() => _SignIn_SignupState();
}

class _SignIn_SignupState extends State<SignIn_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 4,
            ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 150,
            ),
            Spacer(
              flex: 1,
            ),
            PrimaryButton(
                text: "Sign In",
                press: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                }),
            Spacer(),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {}),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      )),
    );
  }
}
