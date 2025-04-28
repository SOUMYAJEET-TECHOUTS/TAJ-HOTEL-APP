import 'package:flutter/material.dart';
//import 'package:taj_hotel_ui/pages/offers.dart';
import 'package:taj_hotel_ui/widgets/routepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: routes,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              children: [
                // Offers Container
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                       Navigator.pushNamed(context, "/offer");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'OFFERS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 92, 90, 90),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(width: 1),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'SEARCH',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 92, 90, 90),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(width: 1),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 155, 117, 3),
                      alignment: Alignment.center,
                      child: const Text(
                        'BOOK A STAY',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Original Bottom Navigation Bar
          BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                //backgroundColor: Color.fromARGB(255, 2, 41, 72),
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit_note),
                label: 'Modify',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.hotel),
                label: 'Hotels',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Gift Card',
              ),
            ],
            currentIndex: _selectIndex,
            selectedItemColor: const Color.fromARGB(255, 128, 107, 3),
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            onTap: (value) {
              setState(() {
                _selectIndex = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
