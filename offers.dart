import 'package:flutter/material.dart';
import 'package:taj_hotel_ui/widgets/top_bar.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        const TopBarWidget(),
        const SizedBox(height: 20),
        Stack(children: [
          Image.asset(
            'images/offerhome.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 400, left: 10),
            child: Text(
              "OFFERS &\nPROMOTIONS",
              style: TextStyle(
                fontSize: 55,
                fontFamily: 'AdobeGaramondPro',
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ])
      ])),
    );
  }
}
