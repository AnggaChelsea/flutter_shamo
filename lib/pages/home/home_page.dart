import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/pages/widgets/product_tile.dart';
import 'package:shamo/pages/widgets/products_card.dart';
import 'package:shamo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo Angga",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: textColorWhite,
                      ),
                    ),
                    Text("@angga",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: semiBold,
                            color: primaryTextColor))
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/icon_avatar.png'))),
              )
            ],
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),
              child: Text(
                "Semua Type",
                style: TextStyle(
                    color: Colors.white, fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white54,
                ),
                color: transparentButtonColor,
              ),
              child: Text(
                "Putsal",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 57),
                    fontSize: 13,
                    fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white54,
                ),
                color: transparentButtonColor,
              ),
              child: Text(
                "Volly",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 57),
                    fontSize: 13,
                    fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white54,
                ),
                color: transparentButtonColor,
              ),
              child: Text(
                "Basket Ball",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 57),
                    fontSize: 13,
                    fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white54,
                ),
                color: transparentButtonColor,
              ),
              child: Text(
                "Bola",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 57),
                    fontSize: 13,
                    fontWeight: medium),
              ),
            ),
          ]),
        ),
      );
    }

    Widget popularProductTtitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Popular Sport',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      );
    }

    Widget newtravelsTtitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'New Refils',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ]),
      );
    }

    Widget popularProductImage() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductsCard(),
                ProductsCard(),
                ProductsCard(),
                ProductsCard(),
                ProductsCard(),
              ],
            )
          ]),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        category(),
        popularProductTtitle(),
        popularProductImage(),
        newtravelsTtitle(),
        newArrivals(),
      ],
    );
  }
}
