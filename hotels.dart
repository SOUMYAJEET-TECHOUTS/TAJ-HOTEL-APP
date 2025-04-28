import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';

class Hotels extends StatefulWidget {
  Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  final List<Map<String, String>> imageList3 = [
    {
      'image': 'images/11.jfif',
      'text2': 'CELEBRATED CHIEFS',
    },
    {
      'image': 'images/12.jfif',
      'text2': 'LEGENDARY RESTAURENTS',
    },
    {
      'image': 'images/13.jfif',
      'text2': 'SIGNATURE RECIPES',
    },
    {
      'image': 'images/14.jfif',
      'text2': 'PREMIER GLOBAL CUISINES',
    },
  ];
  final List<Map<String, String>> imageList4 = [
    {
      'image': 'images/6.png',
    },
    {
      'image': 'images/7.png',
    },
    {
      'image': 'images/8.png',
    },
    {
      'image': 'images/5.png',
    },
    {
      'image': 'images/4.png',
    },
    {
      'image': 'images/3.png',
    },
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

  bool isListView = true;
  List<Map<String, String>> allDestinations = [
    {'image': 'images/11.jfif', 'text2': 'CELEBRATED CHIEFS'},
    {'image': 'images/12.jfif', 'text2': 'LEGENDARY RESTAURENTS'},
    {'image': 'images/13.jfif', 'text2': 'SIGNATURE RECIPES'},
    {'image': 'images/14.jfif', 'text2': 'PREMIER GLOBAL CUISINES'},
  ];
  List<Map<String, String>> filteredDestinations = [];

  int imageCount =
      3; // To keep track of the number of images currently displayed

  @override
  void initState() {
    super.initState();
    filteredDestinations = allDestinations;
  }

  void filterDestinations(String query) {
    setState(() {
      filteredDestinations = allDestinations
          .where((destination) =>
              destination['text2']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  // Function to load more images
  void loadMoreImages() {
    setState(() {
      imageCount += 3; // Increase image count by 3
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const TopBarWidget(),
      Stack(
        children: [
          Image.asset(
            'images/hotelhome.jfif',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 400, left: 10),
            child: Text(
              "----OUR\nDESTINATIONS",
              style: TextStyle(
                fontFamily: 'AdobeGaramondPro',
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 50),
      const Text(
        textAlign: TextAlign.center,
        "THE WORLD\nAWAITS",
        style: TextStyle(
          fontFamily: 'AdobeGaramondPro',
          fontSize: 35,
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(height: 20),
      const Text(
        textAlign: TextAlign.center,
        "The world is full of amazing experiences, Allow us to show you just how wonderful they can be with our luxury hotels",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 147, 133, 6),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          shape: const RoundedRectangleBorder(),
          textStyle: const TextStyle(fontSize: 16),
        ),
        child: const SizedBox(
          width: 300,
          child: Row(
            children: [
              Text("ALL"),
              SizedBox(width: 245),
              Icon(
                Icons.arrow_drop_down_sharp,
                size: 27,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 50),
      Container(
        height: 200,
        width: 400,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text(
            textAlign: TextAlign.center,
            "FEATURED\nDESTINATIONS",
            style: TextStyle(
              fontFamily: 'AdobeGaramondPro',
              fontSize: 35,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      //caraosalstart
      CarouselSlider.builder(
        itemCount: imageList3.length,
        itemBuilder: (context, index, realIndex) {
          return Column(
            children: [
              Image.asset(
                imageList3[index]['image']!,
                height: 110,
                width: 170,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 2),
              Text(
                imageList3[index]['text2']!,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: 'AdobeGaramondPro',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          enlargeCenterPage: false,
          enableInfiniteScroll: true,
          viewportFraction: 0.47,
        ),
      ),
      SizedBox(
        child: Column(
          children: List.generate(imageCount, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                children: [
                  Image.asset(imageList4[index]['image']!),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(
                      height: 110,
                      width: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 143, 129, 4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            minimumSize: const Size(20, 40),
                          ),
                          child: const Text(
                            "BOOK NOW",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
      // Load More Button
      if (imageCount < imageList4.length)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: OutlinedButton(
            onPressed: loadMoreImages,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                  color: Color.fromARGB(255, 142, 128, 4), width: 2),
              backgroundColor: Colors.transparent,
              textStyle: const TextStyle(fontSize: 16),
              minimumSize: const Size(130, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: const Text(
              "LOAD MORE",
              style: TextStyle(
                  color: Color.fromARGB(255, 142, 128, 4),
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
        ),

      Container(
        
        color: Colors.black,
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
                options: CarouselOptions(height: 530,
                 viewportFraction: 0.75,
                ),
                
                )
          ],
        ),
      ),
       Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                height: 1950,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black87,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20,right: 10),
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
                                  focusedBorder:
                                  UnderlineInputBorder(
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
    ])));
  }
}
