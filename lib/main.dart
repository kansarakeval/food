import 'package:flutter/material.dart';
import 'package:food/screen/cart.dart';
import 'package:food/screen/homepage.dart';
import 'package:food/screen/profilepage.dart';

void main() {
  runApp(
      MaterialApp(
        routes:{
          '/': (Context) => homepage(),
          'profil': (Context) => profilepage(),
          'carts': (Context) => cart(),
        },
        debugShowCheckedModeBanner: false,
      )
  );
}
