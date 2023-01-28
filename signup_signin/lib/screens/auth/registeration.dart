import 'package:flutter/material.dart';
import 'package:signup_signin/helper/constant.dart';
import 'package:signup_signin/screens/auth/login.dart';
import 'package:signup_signin/widget/inputField.dart';

class Registeration extends StatefulWidget {
  const Registeration({super.key});

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = deviceWidth(context);
    double height = deviceHeight(context);

    return Scaffold(
        body: Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [primaryColor, secondaryColor],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spancer(h: height * 0.1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                spancer(w: width * 0.05),
                Container(
                    width: width * 0.5,
                    child: const Text(
                      'Best Data sharing Experience',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
            spancer(h: height * 0.05),
            InputField(width: width, controller: email, hintText: 'Email'),
            spancer(h: height * 0.01),
            InputField(
                width: width, controller: username, hintText: 'Username'),
            spancer(h: height * 0.01),
            InputField(
                width: width, controller: password, hintText: 'Password'),
            spancer(h: height * 0.10),
            Container(
              width: double.maxFinite,
              alignment: Alignment.centerRight,
              padding: spacing(h: 20),
              child: Container(
                width: width * 0.3,
                alignment: Alignment.center,
                padding: spacing(w: 10, h: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(width)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'OK',
                      style: TextStyle(color: primaryColor, fontSize: 18),
                      textAlign: TextAlign.right,
                    ),
                    spancer(w: 10),
                    Icon(
                      Icons.arrow_right_alt_rounded,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.10,
            ),
            Row(
              children: [
                Text(
                  'Already Registered?',
                  style: TextStyle(color: secondaryTextColor, fontSize: 18),
                ),
                spancer(w: 4),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
