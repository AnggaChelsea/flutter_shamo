import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/chat_tial.dart';
import 'package:shamo/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headers() {
      return AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Message Support",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: medium),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        //hiden icon back
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: Container(
          width: double.infinity, //ini untuk widht selebar layar
          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_headset.png",
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Opps No Message",
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontWeight: medium),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "You Have never done transaction",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white38,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  //stylng butotn
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: Colors.blue[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Explore SHoes",
                    style: TextStyle(
                        fontSize: 16, fontWeight: medium, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity, //ini untuk widht selebar layar
          color: Colors.black54,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              ChatTial(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        headers(),
        content(),
      ],
    );
  }
}
