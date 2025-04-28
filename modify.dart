import 'package:flutter/material.dart';

class Modify extends StatefulWidget {
  const Modify({super.key});

  @override
  State<Modify> createState() => _ModifyState();
}

class _ModifyState extends State<Modify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Positioned(
          top: 50,
          left: 10,
          child: Icon(
            Icons.menu,
            size: 40,
          ),
        ),
        Positioned(
          top: 40,
          left: 90,
          child: Image.asset(
            'images/10.png',
            height: 60,
            width: 80,
            color: const Color.fromARGB(255, 3, 45, 79),
          ),
        ),
        const Positioned(
          top: 110,
          left: 8,
          child: Text(
            "View, Change,Or Cancel Your\nReservation Or Order",
            style: TextStyle(
              fontFamily: 'AdobeGaramondPro',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 116, 9, 2),
            ),
          ),
        ),
        Positioned(
          top: 210,
          left: 1.6,
          right: 1.6,
          child: Container(
            alignment: Alignment.topLeft,
            height: 280,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 0.2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "\tWith A Number",
                    style: TextStyle(
                      fontFamily: 'AdobeGaramondPro',
                      fontSize: 27,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 116, 9, 2),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter itinerary, confirmation, or item number',
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.6),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        backgroundColor: const Color.fromARGB(255, 95, 86, 2),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.4,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "SEARCH",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 510,
          left: 10,
          right: 1.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 13, color: Colors.black),
                    children: [
                      TextSpan(
                          text:
                              'Don\'t know your itinerary, confirmation, or item number?\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text:
                            'Your itinerary, confirmation, and/or item numbers were included in an email sent at the time of booking. Please check your email to recover the number.',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.normal),
                      ),
                    ]),
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.grey, thickness: 0.2),
              const SizedBox(height: 10),
              const Divider(
                  color: Color.fromARGB(255, 93, 8, 2), thickness: 0.3),
            ],
          ),
        ),
        const Positioned(
          top: 625,
          left: 70,
          child: Row(
            children: [
              Text(
                "ABOUT US",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "CAREERS",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "PRESSROOM",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "SITEMAP",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 650,
          left: 115,
          child: Text(
            "Follow Taj Hotel Places Resorts Safaris",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          top: 670,
          left: 80,
          child: Row(
            children: [
              SizedBox(
                width: 50,
                height: 40,
                child: IconButton(
                  icon: Image.asset('images/fb.png'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 50,
                height: 40,
                child: IconButton(
                  icon: Image.asset('images/insta.png'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 50,
                height: 40,
                child: IconButton(
                  icon: Image.asset('images/x.png'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 50,
                height: 40,
                child: IconButton(
                  icon: Image.asset('images/yt.png'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 50,
                height: 40,
                child: IconButton(
                  icon: Image.asset('images/link.png'),
                  onPressed: () {},
                ),
              ),
             
            ],
          ),
          
        ),
      ]),
    );
  }
}
