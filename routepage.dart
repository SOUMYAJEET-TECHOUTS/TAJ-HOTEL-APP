import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taj_hotel_ui/pages/card.dart';
import 'package:taj_hotel_ui/pages/home_page.dart';
import 'package:taj_hotel_ui/pages/hotels.dart';
import 'package:taj_hotel_ui/pages/modify.dart';
//import 'package:taj_hotel_ui/pages/hotels.dart';
import 'package:taj_hotel_ui/pages/login.dart';
import 'package:taj_hotel_ui/pages/offers.dart';
import 'package:taj_hotel_ui/widgets/bottom_navbar.dart';

Map<String,WidgetBuilder>  routePage ={

         
        "/" : (context) => const BottomNavBar(),
        "/login":(context)=> const Login(),
        "/offer":(context)=> const Offers(),
      

      };
      final List<Widget> routes = [
    const HomePage(),
    const Modify(),
     Hotels(),
     const GiftCard(),
    

        // Second bottomnavigation bar tab
     
      ];