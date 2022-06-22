import 'dart:html';

import 'package:sepatu/pages/widgets/checkout_card.dart';
import 'package:sepatu/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: warna4,
        foregroundColor: warna2,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle,
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          //NOTE": LIST ITEM
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),
          // ADDRESS DETAIL
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: warna4, borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address Details',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium)),
                SizedBox(height: 12),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          '/assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          '/assets/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          '/assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Store Location',
                            style: thirdTextStyle.copyWith(
                                fontSize: 12, fontWeight: light)),
                        Text('Converse Black Edition',
                            style:
                                primaryTextStyle.copyWith(fontWeight: medium)),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text('Your Address',
                            style: thirdTextStyle.copyWith(
                                fontSize: 12, fontWeight: light)),
                        Text('Bandung',
                            style:
                                primaryTextStyle.copyWith(fontWeight: medium)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: warna1,
      appBar: header(),
      body: content(),
    );
  }
}
