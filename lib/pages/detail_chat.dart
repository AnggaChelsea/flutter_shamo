import 'package:flutter/material.dart';
import 'package:input_form_field/input_form_field.dart';
import 'package:shamo/pages/widgets/chat_bubble.dart';
import 'package:shamo/theme.dart';

class DetailChat extends StatelessWidget {
  DetailChat({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(219, 61, 58, 82),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(241, 107, 94, 207),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/icon_shoes_cart.png",
              width: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "COURT VISIO...",
                  style: TextStyle(color: Colors.white70),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$57.00',
                  style: TextStyle(color: Colors.blue[600]),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/icon_cancle.png",
            width: 22,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget textInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(245, 26, 25, 25),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration.collapsed(
                        hintText: "Typle message...",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/icon_send_button.png",
                width: 45,
              )
            ]),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, This item is still available?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text:
                'Good night, This item is only available in size 42 and 43 cd cd cd cd',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 19, 20),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon_logo_shope_detail.png',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
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
          ],
        ),
      ),
      bottomNavigationBar: textInput(),
      body: content(),
    );
  }
}
