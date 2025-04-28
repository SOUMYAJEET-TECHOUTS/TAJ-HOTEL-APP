import 'package:flutter/material.dart';
import 'package:taj_hotel_ui/widgets/routepage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taj_Hotel_Ui',
      theme: ThemeData(),
      routes: routePage,
    );
  }
}
