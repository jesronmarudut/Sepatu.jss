import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class CheckoutSuccesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: warna1,
        centerTitle: true,
        title: Text('Checkout Success'),
        elevation: 0,
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon_empty_cart.png', width: 80),
            SizedBox(height: 20),
            Text(
              'You made a transaction',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Text('Stay at home while we\nprepare yout dream shoes',
                style: secondaryTextStyle, textAlign: TextAlign.center),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(top: defaultMargin),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                    backgroundColor: warna2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Order Other Shoes',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(top: 12),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: warna6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'View My Order',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium, color: warna6),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: warna1,
      appBar: header(),
    );
  }
}
