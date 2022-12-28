import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: Color.fromARGB(255, 19, 19, 20),
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          //safeArea agar posisi tidak nembus ke atas,
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(children: [
              ClipOval(
                child: Image.asset(
                  "assets/icon_avatar.png",
                  width: 64,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo Angga",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "@AnggaChel",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 80, 79, 94),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/icon_button_exit.png",
                width: 20,
              )
            ]),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 30,
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 36, 34, 49),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Setting",
                style: TextStyle(
                    color: Colors.white70, fontWeight: bold, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
