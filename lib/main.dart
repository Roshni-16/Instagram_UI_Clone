import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/screens/login_screens/forgot_password.dart';
import 'package:instagram_clone/screens/login_screens/login_screen.dart';
import 'package:instagram_clone/screens/search_page.dart';
import 'package:instagram_clone/screens/login_screens/sign_up.dart';
import 'package:instagram_clone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram_UI_Clone',
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const
          // ForgotPassword(),
          // SignUp(),
          // LoginScreen(),
          SplashScreen(),
      // ProfileScreen(),
      //
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : const HomePage(),
    );
  }
}
