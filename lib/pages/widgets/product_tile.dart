import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/icon_spatu.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
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
                "Footbal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Predator 20,4 filrm groud",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "\$6500.00",
                style: TextStyle(
                    fontSize: 14, color: Colors.blue, fontWeight: medium),
              )
            ],
          ),
        )
      ]),
    );
  }
}
