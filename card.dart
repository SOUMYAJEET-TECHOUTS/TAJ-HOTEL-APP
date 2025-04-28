import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:taj_hotel_ui/widgets/top_bar.dart';

class GiftCard extends StatefulWidget {
  const GiftCard({super.key});

  @override
  State<GiftCard> createState() => _GiftCard();
}

class _GiftCard extends State<GiftCard> {
  // List of items for the grid, each having an image, name, and price
  final List<Map<String, String>> items = [
    {'image': 'images/gift1.jpg', 'name': 'SIGNATURE'},
    {'image': 'images/gift2.png', 'name': 'WEDDING'},
    {'image': 'images/gift3.png', 'name': 'BIRTHDAY'},
    {'image': 'images/gift4.png', 'name': 'ANNIVERSARY'},
    {'image': 'images/gift5.png', 'name': 'J WELLNESS'},
    {'image': 'images/gift6.png', 'name': 'QMIN'},
  ];
  final List<Map<String, dynamic>> cardlist = [
    {
      'image': 'images/thirteen.png',
      'title': 'JAISALMER',
      'detail':
          'Nestled in the heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbnd',
    },
    {
      'image': 'images/fourteen.png',
      'title': ' JAIPUR',
      'detail':
          'Experience the royalty of Rajasthan. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/fiveteen.png',
      'title': ' UDAIPUR',
      'detail':
          'A serene escape by the lake.heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/sixteen.png',
      'title': 'JODHPUR',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarWidget(),
            Stack(
              children: [
                Image.asset(
                  'images/card.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 360, left: 10),
                  child: Text(
                    "------\t\tTAJ\nEXPERIENCES\nE-GIFT CARDS",
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'AdobeGaramondPro',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            // The row for E-GIFT CARDS, PHYSICAL GIFT CARDS, and MORE
            Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 230, 230),
                border: Border.all(color: Colors.grey, width: 0),
              ),
              padding: const EdgeInsets.only(top: 5, left: 15, right: 110),
              child: const Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "E-GIFT\nCARDS",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(color: Colors.grey, width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "PHYSICAL\nGIFT\tCARDS",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(color: Colors.grey, width: 1),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "\t\tMORE  ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_outlined, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // GridView of items
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  childAspectRatio: 0.68,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset(
                          items[index]['image']!,
                          height: 120,
                          width: 200,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            items[index]['name']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'AdobeGaramondPro',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 137, 123, 2),
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          child: const Text(
                            "BUY NOW",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 135, 122, 3),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 135, 122, 3),
                          width: 1,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 146, 132, 4),
                          padding: const EdgeInsets.symmetric(vertical: 17),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          minimumSize: const Size(double.infinity, 10),
                        ),
                        child: const Text(
                          "PARTICIPATING HOTELS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 135, 122, 3),
                          width: 1,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "FREQUENTLY ASKED QUESTIONS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 135, 122, 3),
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 135, 122, 3),
                          width: 1,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "TERMS & CONDITIONS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 135, 122, 3),
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 50),
              height: 230,
              width: double.infinity,
              color: const Color.fromARGB(255, 235, 232, 232),
              child: const Column(
                children: [
                  Text(
                    "----GIFT TO MANY",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'AdobeGaramondPro',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Elevate your corporate or personal gifting with the Taj Experiences E-Gift Cards bundle offers and curate exclusive experiences th...gold-more-icon",
                    style: TextStyle(
                      color: Color.fromARGB(255, 106, 103, 103),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "CONTACT US FOR A QUOTE",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 135, 122, 4),
                      decoration: TextDecoration.underline,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: double.infinity,
              color: const Color.fromARGB(255, 235, 232, 232),
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Image.asset("images/card1.jpg"),
            ),
            Container(
              height: 580,
              decoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.5),
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: Column(
                children: [
                  CarouselSlider(
                    items: cardlist.map((item) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          // height: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 50.0),
                          child: Column(
                            children: [
                              Flexible(child: Image.asset(item['image'])),
                              Flexible(
                                  child: Container(
                                padding: EdgeInsets.all(16.0),
                                color: Colors.white,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Text(
                                      item['title'],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontFamily: 'AdobeGaramondPro'),
                                    ),
                                    Text(
                                      item['detail'],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'AdobeGaramondPro'),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                      height: 530,
                      viewportFraction: 0.75,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              height: 1900,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'images/10.png',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'SUBSCRIBE FOR LATEST UPDATES',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your email Address',
                                //filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: const RoundedRectangleBorder(),
                            ),
                            child: const Text(
                              'Subscribe',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'FOR BOOKING CONTACT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1-800-111-825',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'reservations@ihcltata.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 167, 151, 3),
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 145, vertical: 18),
                        ),
                        child: const Text(
                          'CALL NOW',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'CUSTOMER SUPPORT',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'contacttaj@tajhotels.com',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'website.feedback@tajhotels.com',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'CONNECT WITH US',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Row(
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
                      const SizedBox(height: 30),
                      const Text(
                        'QUICK LINKS',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          // First Column
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align text to the start
                              children: [
                                Text(
                                  'Hotels\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Dining\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Wellness\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Timeless Wedding\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Event Venues\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Taj Magazine\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Sitemap',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Taj\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Holidays\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Offers\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Gifting\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Neupass\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Epicure\n',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Taj Blog',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      const Text(
                        "OUR BRANDS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'AdobeGaramondPro'),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'images/logo.png',
                                width: 100,
                                height: 70,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'images/g.png',
                                width: 160,
                                height: 100,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'images/v.png',
                                width: 150,
                                height: 100,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'images/a.png',
                                width: 130,
                                height: 160,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'images/t.png',
                                width: 130,
                                height: 100,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                          const SizedBox(width: 50),
                          Column(
                            children: [
                              Image.asset(
                                'images/s1.png',
                                width: 150,
                                height: 150,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 10),
                              Image.asset('images/gi.png',
                                  width: 150, height: 100),
                              const SizedBox(height: 10, width: 60),
                              Image.asset(
                                'images/q.png',
                                width: 150,
                                height: 280,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "-----------------------------------------------------------------",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          // fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Corporate | Pressroom | Work With Us",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 2,
                          //fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        "Terms of  Service | AccessibilityInvestor Relations ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 2,
                          // fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        "Partners | Privacy PolicyCookies Policy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 2,
                          //fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "-----------------------------------------------------------------",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          // fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "2024 The Indian Hotels Company Limited. All Rights Reserved",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: 2,
                          // fontFamily: 'AdobeGaramondPro'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
