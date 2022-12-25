import 'package:flutter/material.dart';

class ChatTial extends StatelessWidget {
  const ChatTial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                'assets/icon_shope.png',
                width: 54,
                height: 54,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, //agar rata kiri
                  children: [
                    Text(
                      "Shoe Store",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Good night, This item is on...",
                      style: TextStyle(fontSize: 14, color: Colors.white38),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text("Now",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white54,
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 1,
            color: Colors.white38,
          )
        ]),
      ),
    );
  }
}
