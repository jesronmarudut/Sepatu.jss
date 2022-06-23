import 'package:flutter/material.dart';
import 'package:sepatu/pages/cart_page.dart';
import 'package:sepatu/pages/checkout_succes_page.dart';
import 'package:sepatu/pages/edit_profile_page.dart';
import 'package:sepatu/pages/home/chat_page.dart';
import 'package:sepatu/pages/detail_chat_page.dart';
import 'package:sepatu/pages/home/main_page.dart';
import 'package:sepatu/pages/product_page.dart';
import 'package:sepatu/pages/sign_in_page.dart';
import 'package:sepatu/pages/sign_up_page.dart';
import 'package:sepatu/pages/splash_page.dart';
import 'package:sepatu/pages/widgets/checkout_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail_chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccesPage(),
      },
    );
  }
}
