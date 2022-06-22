import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 23, horizontal: 12),
      decoration:
          BoxDecoration(color: warna4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/image_shoes7.png'),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Converse Black Edition',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text('Rp 876.543', style: primaryTextStyle),
              ],
            ),
          ),
          SizedBox(width: 12),
          Text(
            '2 Items',
            style: thirdTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
