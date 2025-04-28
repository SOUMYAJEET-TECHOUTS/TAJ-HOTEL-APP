import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int? _selectedIndex;
  bool _isChecked = false;
  bool _isNumberFilled = false;
  bool _isEmailFilled = false;
  bool _isMembershipFilled = false;

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

  // Check if all fields are filled and checkbox is checked
  bool _canContinue() {
    bool isFieldFilled = false;
    if (_selectedIndex == 0) {
      isFieldFilled = _isNumberFilled;
    } else if (_selectedIndex == 1) {
      isFieldFilled = _isEmailFilled;
    } else if (_selectedIndex == 2) {
      isFieldFilled = _isMembershipFilled;
    }
    return isFieldFilled && _isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section with logo and close button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'images/logo.png',
                      height: 60,
                      width: 80,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Color.fromARGB(255, 150, 135, 3),
                      size: 60,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            // Text for login message
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "ALREADY A MEMBER? LOGIN",
                style: TextStyle(
                  fontFamily: 'AdobeGaramondPro',
                  fontSize: 20,
                  letterSpacing: 0.9,
                ),
              ),
            ),
            // Selection buttons (Mobile, Email, Membership)
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 45),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          ' MOBILE\nNUMBER',
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 0.5,
                            color: _selectedIndex == 0
                                ? const Color.fromARGB(255, 147, 133, 6)
                                : Colors.black,
                          ),
                        ),
                        if (_selectedIndex == 0)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            height: 2,
                            width: 45,
                            color: const Color.fromARGB(255, 147, 133, 6),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 70),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          '  EMAIL\nADDRESS',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 0.5,
                            color: _selectedIndex == 1
                                ? const Color.fromARGB(255, 147, 133, 6)
                                : Colors.black,
                          ),
                        ),
                        if (_selectedIndex == 1)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            height: 2,
                            width: 40,
                            color: const Color.fromARGB(255, 147, 133, 6),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'MEMBERSHIP\n    NUMBER',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 0.5,
                            color: _selectedIndex == 2
                                ? const Color.fromARGB(255, 147, 133, 6)
                                : Colors.black,
                          ),
                        ),
                        if (_selectedIndex == 2)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            height: 2,
                            width: 43,
                            color: const Color.fromARGB(255, 147, 133, 6),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Input fields based on the selected index
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 60),
              child: Column(
                children: [
                  if (_selectedIndex == 0) ...[
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _isNumberFilled = value.isNotEmpty;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your mobile number',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const Divider(color: Colors.grey, thickness: 1),
                  ],
                  if (_selectedIndex == 1) ...[
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _isEmailFilled = value.isNotEmpty;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const Divider(color: Colors.grey, thickness: 1),
                  ],
                  if (_selectedIndex == 2) ...[
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _isMembershipFilled = value.isNotEmpty;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your membership number',
                        border: InputBorder.none,
                      ),
                    ),
                    const Divider(color: Colors.grey, thickness: 1),
                  ],
                ],
              ),
            ),
            // Terms and Conditions checkbox
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 60),
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 13, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'By continuing you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: TextStyle(
                                color: Color.fromARGB(255, 147, 133, 6)),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                color: Color.fromARGB(255, 147, 133, 6)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Footer section with logo images
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/17.jfif',
                    height: 50,
                    width: 80,
                  ),
                  Image.asset(
                    'images/15.png',
                    height: 80,
                    width: 120,
                  ),
                  Image.asset(
                    'images/16.png',
                    height: 80,
                    width: 90,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _canContinue() ? () {} : null,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: _canContinue()
                    ? const Color.fromARGB(255, 147, 133, 6)
                    : Colors.grey,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 140),
                shape: const RoundedRectangleBorder(),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text(
                'CONTINUE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            // Join now button
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "NOT A MEMBER? JOIN NOW",
                style: TextStyle(
                  fontFamily: 'AdobeGaramondPro',
                  fontSize: 20,
                  letterSpacing: 0.9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                "images/15.png",
                height: 80,
              ),
            ),

            const Text(
              "MEMBER BENEFITS",
              style: TextStyle(
                fontFamily: 'AdobeGaramondPro',
                fontSize: 18,
                letterSpacing: 0.9,
              ),
            ),

            // Carousel Slider
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
                viewportFraction: 0.44,
              ),
            ),
            
            // Final Join now button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 38),
                shape: const RoundedRectangleBorder(),
                side: const BorderSide(
                  color: Color.fromARGB(255, 147, 133, 6),
                  width: 1,
                ),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text(
                'JOIN NOW',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 147, 133, 6),
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
