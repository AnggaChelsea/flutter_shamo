import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/pages/detail_chat.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/sign_page.dart';
import 'package:shamo/pages/signup_page.dart';
import 'package:shamo/pages/spalsh_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SpalshPage(),
        '/sign-page': (context) => SignPage(),
        '/signup-page': (context) => SignupPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat(),
      },
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Scaffold(
//       body: Center(
//           child: Text(
//         "hallo semuanya",
//         style: secondaryTextStyle.copyWith(
//             fontSize: 50, backgroundColor: Colors.pink),
//       )),
//     );
//   }
// }
