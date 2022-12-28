import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({this.text = "", this.isSender = false, this.hasProduct = false});
  //constructor

  @override
  Widget build(BuildContext context) {
    Widget productPriveiw() {
      return Container(
        margin: EdgeInsets.only(bottom: 12),
        width: 230,
        height: 155,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(241, 107, 94, 207),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: isSender
              ? const Color.fromARGB(241, 107, 94, 207)
              : const Color.fromARGB(219, 61, 58, 82),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_spatu_merah.png',
                  width: 70,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Court Vision 2.0 shoes",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$123,333",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue)),
                    child: Text("Add To Cart"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 44,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 24,
                          ),
                          backgroundColor: Color.fromARGB(255, 163, 33, 243),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 16,
                            fontWeight: medium),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 30,
        bottom: 12,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPriveiw() : SizedBox(),
          Row(
              mainAxisAlignment:
                  isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    //contrains disini unutk ukuran layar , jadi lebar layar di kali 0.6
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(241, 107, 94, 207),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: isSender
                          ? const Color.fromARGB(241, 107, 94, 207)
                          : const Color.fromARGB(219, 61, 58, 82),
                    ),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: isSender ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                )
              ]),
        ],
      ),
    );
  }
}
