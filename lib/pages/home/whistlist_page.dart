import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/whistlist_cart.dart';
import 'package:shamo/theme.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: Color.fromARGB(255, 19, 19, 20),
        centerTitle: true,
        title: Text("Favorites shoes"),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWhistlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: Color(0x242231),

        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/icon_whislist_love.png",
            width: 74,
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            " You don\'t have dream shoes?",
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Let\'s find your favorite shoes",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: Text(
              "Explore Store",
              style: TextStyle(color: Colors.white70),
            ),
          )
        ]), //agar menyesuaikan dengan lebar layar
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: Color(0x242231),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            WhistlistCart(),
            WhistlistCart(),
            WhistlistCart(),
            WhistlistCart(),
          ],
        ),
      ));
    }

    return Container(
      child: Column(
        children: [
          header(),
          // emptyWhistlist(),
          content(),
        ],
      ),
    );
  }
}
