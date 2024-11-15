import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController username1Controller = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;

  get FullName => null;

  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'images/insta_title.png',
                height: deviseWidth * .20,
              ),
            ),
            Center(
              child: const Text(
                'Sign Up to see photos and videos from your friends.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login with facebook',
                  style: TextStyle(
                    color: const Color(0xff1877f2),
                    fontSize: deviseWidth * .040,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'OR',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: deviseWidth * .90,
              height: deviseWidth * .14,
              decoration: BoxDecoration(
                color: Color(0xffE8E8E8),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        if (usernameController.text.length >= 2 &&
                            passwordController.text.length >= 2) {
                          inputTextNotNull = true;
                        } else {
                          inputTextNotNull = false;
                        }
                      });
                    },
                    controller: usernameController,
                    style: TextStyle(
                      fontSize: deviseWidth * .040,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Phone number or email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            Container(
              width: deviseWidth * .90,
              height: deviseWidth * .14,
              decoration: BoxDecoration(
                color: Color(0xffE8E8E8),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        if (usernameController.text.length >= 2 &&
                            fullnameController.text.length >= 2) {
                          inputTextNotNull = true;
                        } else {
                          inputTextNotNull = false;
                        }
                      });
                    },
                    controller: FullName,
                    style: TextStyle(
                      fontSize: deviseWidth * .040,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Full Name',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            Container(
              width: deviseWidth * .90,
              height: deviseWidth * .14,
              decoration: BoxDecoration(
                color: Color(0xffE8E8E8),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        if (usernameController.text.length >= 2 &&
                            username1Controller.text.length >= 2) {
                          inputTextNotNull = true;
                        } else {
                          inputTextNotNull = false;
                        }
                      });
                    },
                    controller: username1Controller,
                    style: TextStyle(
                      fontSize: deviseWidth * .040,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            Container(
              width: deviseWidth * .90,
              height: deviseWidth * .14,
              decoration: BoxDecoration(
                color: Color(0xffE8E8E8),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        if (usernameController.text.length >= 2 &&
                            passwordController.text.length >= 2) {
                          inputTextNotNull = true;
                        } else {
                          inputTextNotNull = false;
                        }
                      });
                    },
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                      fontSize: deviseWidth * .040,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            inputTextNotNull
                ? GestureDetector(
                    onLongPressStart: (s) {
                      setState(() {
                        buttonColor = 0xff78C9FF;
                      });
                    },
                    onLongPressEnd: (s) {
                      setState(() {
                        buttonColor = 0xff26A9FF;
                      });
                    },
                    onTap: () {
                      print('Log In');
                    },
                    child: Container(
                      width: deviseWidth * .90,
                      height: deviseWidth * .14,
                      decoration: BoxDecoration(
                        color: Color(buttonColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: deviseWidth * .040,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .14,
                    decoration: BoxDecoration(
                      color: Color(0xff78C9FF),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: deviseWidth * .040,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By Signing up you agree to our Terms. Data Policy and Cookies Policy.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviseWidth * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account? ",
                  style: TextStyle(
                    fontSize: deviseWidth * .040,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: deviseWidth * .040,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
