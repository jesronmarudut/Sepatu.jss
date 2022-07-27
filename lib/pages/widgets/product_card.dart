import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.asset('assets/image_shoes7.png',
                width: 215, height: 150, fit: BoxFit.contain),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Casual',
                    style: thirdTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Text('Converse Black Edition',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis),
                  SizedBox(height: 6),
                  Text(
                    'Rp 876.543',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
