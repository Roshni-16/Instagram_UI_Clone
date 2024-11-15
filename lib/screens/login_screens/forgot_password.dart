import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_screens/login_screen.dart';
import 'package:instagram_clone/screens/login_screens/sign_up.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  String? _emailErrorText;

  void _validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailErrorText = 'Email is required';
      });
    } else if (!isEmailValid(value)) {
      setState(() {
        _emailErrorText = 'Enter a valid email address';
      });
    } else {
      setState(() {
        _emailErrorText = null;
      });
    }
  }

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.lock_outline,
            color: Colors.black,
            size: 50,
          ),
          const Text(
            'Trouble Logging In? ',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter your email, phone or username and we will send you a link to get back into your account.',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),

          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              errorText: _emailErrorText,
            ),
            validator: (value) => _emailErrorText,
            onChanged: _validateEmail,
          ),
          const SizedBox(
            height: 20,
          ),

          //-----------------------------------------------------------
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  // side: BorderSide(style: BorderStyle.solid)
                ),
              ),
            ),
            child: const Text(
              "Send Login Link",
              style: TextStyle(
                color: (Colors.white),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'OR',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ),
              );
            },
            child: const Text(
              'Create New Account',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text(
              'Back To Login',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
