import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_agromarket_hub/hub.dart';
import 'package:flutter_application_agromarket_hub/main.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SliverAppBar replacement
            SizedBox(
              height: 240.0,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        ),
                        child: Image.asset(
                          'assets/background.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios_outlined),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyApp()),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const hub()),
                              );
                              // Forward button functionality here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(
                  255, 168, 225, 181), // Light green background color
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0), // Add vertical padding
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Circular profile image and text centered at the top
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/profile.png', // Replace with your image asset
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors
                                  .black87, // Background color for the icon
                            ),
                            child: IconButton(
                              padding:
                                  EdgeInsets.zero, // Remove default padding
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 20, // Icon size
                              ),
                              onPressed: () {
                                // Add camera icon functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Rana Shahzaib',
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,
                            color: Colors.black87), // Location icon
                        SizedBox(
                            width: 8), // Space between the icon and the text
                        Text(
                          'Lagos, Nigeria',
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '122',
                          style: TextStyle(color: Colors.orange, fontSize: 30),
                        ),
                        SizedBox(width: 80), // Space between the values
                        Text(
                          '67',
                          style: TextStyle(color: Colors.orange, fontSize: 30),
                        ),
                        SizedBox(width: 70),
                        Text(
                          '37K',
                          style: TextStyle(color: Colors.orange, fontSize: 30),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total bids',
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                        SizedBox(width: 30), // Space between the texts
                        Text(
                          'Item Purchased',
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Spend',
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Bid Applied',
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      '-----------------------------------------------',
                      style: TextStyle(color: Colors.orange, fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200, // Increase the height
                          width: 170, // Increase the width
                          child: Image.asset(
                            'assets/wheat.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 25), // Space between the images
                        SizedBox(
                          height: 200, // Increase the height
                          width: 170, // Increase the width
                          child: Image.asset(
                            'assets/cotton.jpg',
                            fit: BoxFit
                                .fill, // Ensure the image covers the container
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '80 KG of Wheat in ',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'Lahore',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight:
                                          FontWeight.bold), // Highlighted text
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Space between the texts
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Cotton For Sale in Karachi Near ',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'Korangi',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight:
                                          FontWeight.bold), // Highlighted text
                                ),
                              ],
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Aug11,10:40Am - Aug20,06:00Pm',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 10), // Space between the texts
                        Expanded(
                          child: Text(
                            'Aug11,10:40Am - Aug20,06:00Pm',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            // Optional: Add some bottom padding
            const SizedBox(height: 0),
          ],
        ),
      ),
    );
  }
}
