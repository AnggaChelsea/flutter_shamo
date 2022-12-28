import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WhistlistCart extends StatelessWidget {
  const WhistlistCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Color(0x252836)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            //ClipRRect untuk nambah border radius atau style lainnnya
            child: Image.asset(
              'assets/icon_shoes_whistlist.png',
              width: 60,
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
                  'Teerrel urban hir',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: semiBold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$120.00",
                  style: TextStyle(color: Colors.blue[600]),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/icon_love_whistlist.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
