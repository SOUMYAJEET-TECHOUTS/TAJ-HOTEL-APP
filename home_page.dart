import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:taj_hotel_ui/widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  Color backgroundColor = Colors.transparent;
  @override
  void initState() {
    scrollController.addListener(
      () {
        final scrollPosition = scrollController.offset;
        if (scrollPosition > 150.0) {
          backgroundColor = Colors.white;
        } else {
          backgroundColor = Colors.transparent;
        }
        setState(() {});
      },
    );
    super.initState();
  }

  final List<Map<String, String>> items = [
    {
      'image': 'images/one.png',
      'text': 'TIMELESS',
      'quote': 'Embrace a timeless'
    },
    {
      'image': 'images/two.png',
      'text': 'ICONIC',
      'quote': 'Luxury meets comfort'
    },
    {
      'image': 'images/three.png',
      'text': 'AUTHENTIC',
      'quote': 'Embrace tradition'
    },
    {
      'image': 'images/four.png',
      'text': 'SOULFUL',
      'quote': 'A journey of serenity'
    },
  ];

  final List<Map<String, String>> additionalItems = [
    {
      'image': 'images/five.png',
    },
    {
      'image': 'images/six.png',
    },
    {
      'image': 'images/seven.png',
    },
  ];

  final List<Map<String, dynamic>> cardlist = [
    {
      'image': 'images/nine.png',
      'title': 'JAISALMER',
      'detail':
          'Nestled in the heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbnd',
    },
    {
      'image': 'images/ten.png',
      'title': ' JAIPUR',
      'detail':
          'Experience the royalty of Rajasthan. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/eleven.png',
      'title': ' UDAIPUR',
      'detail':
          'A serene escape by the lake.heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/twelve.png',
      'title': 'JODHPUR',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/thirteen.png',
      'title': 'BALASORE',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/fourteen.png',
      'title': 'CUTTACK',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/fiveteen.png',
      'title': 'MUMBAI',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/sixteen.png',
      'title': 'HYD',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
    {
      'image': 'images/seventeen.png',
      'title': 'BANGALORE',
      'detail':
          'Luxury meets heritage. heart of the enchanting Great India erth ehgdaajc hdeyhabf ajfeiak fayugrhbn',
    },
  ];
  final List<Map<String, String>> imageList2 = [
    {
      'image': 'images/eighteen.png',
    },
    {
      'image': 'images/nineteen.png',
    },
    {
      'image': 'images/twonty.png',
    },
    {
      'image': 'images/twentyone.png',
    },
    {
      'image': 'images/twentytwo.png',
    },
  ];
  final List<Map<String, String>> imageList3 = [
    {
      'image': 'images/1.png',
      'text2': 'CELEBRATED CHIEFS',
    },
    {
      'image': 'images/2.png',
      'text2': 'LEGENDARY RESTAURENTS',
    },
    {
      'image': 'images/3.png',
      'text2': 'SIGNATURE RECIPES',
    },
    {
      'image': 'images/4.png',
      'text2': 'PREMIER GLOBAL CUISINES',
    },
    {
      'image': 'images/5.png',
      'text2': 'BEYOND THE ORDINARY',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: TopBarWidget(
          backgroundColor: backgroundColor,
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Image.asset(
                'images/home.jpg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.1,
                fit: BoxFit.cover,
              ),
              // Text section
              Padding(
                padding: const EdgeInsets.all(10),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "GLOBAL ICON\n",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'AdobeGaramondPro',
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "--  OF INDIAN  --\n",
                        style: TextStyle(
                          fontFamily: 'AdobeGaramondPro',
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "HOSPITALITY",
                        style: TextStyle(
                          fontFamily: 'AdobeGaramondPro',
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  "Enter a realm of storied halls, sophisticated delights and unrivalled indulgence. Immerse yourself in the grandeur of luxury at our exquisite palaces, hotels, resorts and safaris.",
                  style: TextStyle(
                    fontFamily: 'AdobeGaramondPro',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Image section with carousel for primary items
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: CarouselSlider.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index, realIndex) {
                      return _buildImageContainer(items[index]);
                    },
                    options: CarouselOptions(
                      aspectRatio: 9 / 16,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),
              // Offers heading
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  "-- LATEST OFFERS --",
                  style: TextStyle(
                    fontFamily: 'AdobeGaramondPro',
                    fontSize: 35,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  "Dive into cool adventures at our picture perfect destinations with Taj Hotels",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: CarouselSlider.builder(
                    itemCount: additionalItems.length,
                    itemBuilder: (context, index, realIndex) {
                      return _buildImageContainer(additionalItems[index],
                          showButton: true);
                    },
                    options: CarouselOptions(
                      aspectRatio: 9 / 16,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),

              Container(
                height: 700,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "EXCLUSIVELY\n FOR YOU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'AdobeGaramondPro',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      "Refinement and creativity intertwine with dreamlike destinations and soulful moments on each sojourn with Taj",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: CarouselSlider(
                        items: cardlist.map((item) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 10.0),
                              child: Column(
                                children: [
                                  Flexible(child: Image.asset(item['image'])),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.all(7),
                                      color: Colors.white,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Text(
                                            item['title'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontFamily: 'AdobeGaramondPro',
                                            ),
                                          ),
                                          Text(
                                            item['detail'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'AdobeGaramondPro',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                        }).toList(),
                        options: CarouselOptions(
                          height: 500,
                          viewportFraction: 0.75,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                height: 570,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(221, 6, 143, 131),
                      Color.fromARGB(255, 60, 205, 231)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "EXPLORING\n MORE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'AdobeGaramondPro',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      "\t\tRelaxing beach paradies, thiriling urban getaways,exotic hill stations and historic homes of royality are all within reach",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 420, // Width of the inner container
                      height: 230, // Height of the inner container
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0)),
                      child: CarouselSlider.builder(
                        itemCount: imageList2.length,
                        itemBuilder: (context, index, realIndex) {
                          return Image.asset(
                            imageList2[index]['image']!,
                          );
                        },
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.73,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: const Text(
                        "More>>",
                        style: TextStyle(
                          fontFamily: 'AdobeGaramondPro',
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.yellow,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                height: 850,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 184, 181, 181),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "SIGNATURE\n DINING",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'AdobeGaramondPro',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Text(
                      "\tEmbark on a journey of exquisite experiences, encompassing impeccable service, sophisticated ambience and masterful culinary artistry",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 550,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0)),
                      child: CarouselSlider.builder(
                        itemCount: imageList3.length,
                        itemBuilder: (context, index, realIndex) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                imageList3[index]['image']!,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 15),
                              Text(
                                imageList3[index]['text2']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'AdobeGaramondPro',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        },
                        options: CarouselOptions(
                          aspectRatio: 9 / 16,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          viewportFraction: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                height: 1700,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 247, 247, 247),
                ),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "EVENTS AND\n CONFERENCES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Text(
                    "\tTaj elevates every occasion into an awe-inspiring, immersive experience to cherish forever",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'AdobeGaramondPro',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    child: Column(
                        children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              imageList4[index]['image']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            const SizedBox(height: 1),
                            ElevatedButton(
                              onPressed: () {
                                // Define your onPressed action here
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              child: const Text(
                                "More>>",
                                style: TextStyle(
                                  fontFamily: 'AdobeGaramondPro',
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.red, // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
                  ),
                ]),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "J WELLNESS\n CIRCLE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'AdobeGaramondPro',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Text(
                      "\tWelcome to a sanctury that seamlessly blends Indian heritage healing with serene contemporary comforts for the mind, body and soul",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: const Text(
                        "EXLORE >",
                        style: TextStyle(
                          fontFamily: 'AdobeGaramondPro',
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 167, 151, 3),
                        ),
                      ),
                    ),
                  ])),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: ClipRRect(
                  child: Image.asset(
                    'images/9.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                height: 1950,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black87,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90, left: 30),
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
        ));
  }

  // Image on text section
  Widget _buildImageContainer(Map<String, String> item,
      {bool showButton = false}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Image
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: double.infinity,
          child: ClipRRect(
            child: Image.asset(
              item['image']!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          child: showButton
              ? ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        const Color.fromARGB(255, 237, 12, 12).withOpacity(0.5),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text(
                    "EXPLORE MORE",
                    style: TextStyle(
                      fontFamily: 'AdobeGaramondPro',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : Column(
                  children: [
                    Text(
                      item['text']!,
                      style: const TextStyle(
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item['quote']!,
                      style: const TextStyle(
                        fontFamily: 'AdobeGaramondPro',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
