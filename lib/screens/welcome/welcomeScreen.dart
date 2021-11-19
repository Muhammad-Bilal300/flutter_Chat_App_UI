import 'package:chat_app/screens/signIn_signUp/signIn_signUp.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 2),
          Image.asset("assets/images/welcome_image.png"),
          Spacer(flex: 3),
          Text(
            "Welcome  to our freedom\nmessaging app",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "Freedom to talk any person in your\nMother language.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color!
                    .withOpacity(0.65)),
          ),
          Spacer(flex: 3),
          FittedBox(
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn_Signup()));
                },
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .color!
                            .withOpacity(0.8),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                      size: 18,
                    ),
                  ],
                )),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
