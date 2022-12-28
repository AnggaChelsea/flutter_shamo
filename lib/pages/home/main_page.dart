// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/whistlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Image.asset(
          "assets/icon_cart.png",
          height: 20,
        ),
      );
    }

    Widget customButtomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              backgroundColor: Color.fromARGB(255, 26, 26, 26),
              onTap: (value) => {
                    print(value),
                    setState(
                      () {
                        currentIndex = value;
                      },
                    )
                  },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/icon_home.png",
                      height: 20,
                      color: currentIndex == 0
                          ? Colors.blue
                          : Color.fromARGB(255, 89, 85, 85),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/icon_chat.png",
                      width: 21,
                      color: currentIndex == 1
                          ? Colors.blue
                          : Color.fromARGB(255, 89, 85, 85),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/icon_bottom_love.png",
                      height: 20,
                      color: currentIndex == 2
                          ? Colors.blue
                          : Color.fromARGB(255, 89, 85, 85),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/icon_bottom_profile.png",
                      height: 20,
                      color: currentIndex == 3
                          ? Colors.blue
                          : Color.fromARGB(255, 89, 85, 85),
                    ),
                  ),
                  label: '',
                )
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WhistlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}
