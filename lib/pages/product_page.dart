import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left),
                ),
                Icon(Icons.shopping_bag, color: warna2),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: warna1,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
