import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 241, 240, 242),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/icon_spatu.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hiking",
                  style: TextStyle(
                      color: Colors.black26, fontSize: 12, fontWeight: medium),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Court Vision 2.0",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: semiBold,
                    color: Colors.black87,
                  ),
                  //this for too length text
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "\$21,000,000",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue[400],
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
