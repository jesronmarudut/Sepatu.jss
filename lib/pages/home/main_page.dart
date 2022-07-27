import 'package:flutter/material.dart';
import 'package:sepatu/pages/cart_page.dart';
import 'package:sepatu/pages/home/chat_page.dart';
import 'package:sepatu/pages/home/home_page.dart';
import 'package:sepatu/pages/home/profile_page.dart';
import 'package:sepatu/pages/home/wishlist_page.dart';
import 'package:sepatu/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //   Widget cartButton() {
    //     return FloatingActionButton(
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/cart');
    //       },
    //       backgroundColor: warna2,
    //       child: Image.asset(
    //         'assets/icon_cart.png',
    //         width: 30,
    //       ),
    //     );
    //   }

    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: warna1,
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10, bottom: 7.5),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 23,
                  color: currentIndex == 0 ? warna2 : Color(0xff504F5E),
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10, bottom: 7.5),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 23,
                  color: currentIndex == 1 ? warna2 : Color(0xff504F5E),
                ),
              ),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10, bottom: 7.5),
                child: Image.asset(
                  'assets/icon_cart.png',
                  width: 23,
                  color: currentIndex == 2 ? warna2 : Color(0xff504F5E),
                ),
              ),
              label: 'Chart'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10, bottom: 7.5),
                child: Image.asset(
                  'assets/icon_wish.png',
                  width: 23,
                  color: currentIndex == 3 ? warna2 : Color(0xff504F5E),
                ),
              ),
              label: 'Whislist'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10, bottom: 7.5),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 23,
                  color: currentIndex == 4 ? warna2 : Color(0xff504F5E),
                ),
              ),
              label: 'Profile'),
        ],
        // selectedLabelStyle: priceTextStyle,1
        selectedItemColor: warna2, //Ganti warna Label
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return CartPage();
          break;
        case 3:
          return WishlistPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      // extendBody: true, //membuat notch transparan
      // backgroundColor: currentIndex == 0 ? warna1 : priceColor,
      backgroundColor: warna1,
      resizeToAvoidBottomInset: false,
      // floatingActionButton: cartButton(),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.centerDocked, //Button di tengah
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
