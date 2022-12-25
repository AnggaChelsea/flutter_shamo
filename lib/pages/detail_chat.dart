import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget textInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(children: [
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
              child: TextFormField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration.collapsed(
                hintText: 'Input Your Password',
                hintStyle: TextStyle(color: Colors.black54)),
          ))
        ]),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: Container(
          child: Row(
            children: [
              Image.asset(
                'assets/icon_logo_shope_detail.png',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shope Detail",
                    style: TextStyle(
                        fontWeight: semiBold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  Text("online",
                      style: TextStyle(
                        color: Colors.white30,
                        fontWeight: semiBold,
                        fontSize: 14,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: textInput(),
    );
  }
}
