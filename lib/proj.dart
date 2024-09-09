import 'package:flutter/material.dart';
import 'package:flutter_application_agromarket_hub/chatbot.dart';
import 'package:flutter_application_agromarket_hub/comm.dart';
import 'package:flutter_application_agromarket_hub/cotton.dart';

class Proj extends StatefulWidget {
  const Proj({super.key});

  @override
  State<Proj> createState() => _ProjState();
}

class _ProjState extends State<Proj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 225, 181),
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Transparent to show custom bar behind
        elevation: 0, // Remove shadow
        title: const Text(
          "Projection",
          style: TextStyle(color: Colors.orange, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cotton(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const chatbot(),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image with manual positioning
          Positioned(
            top: 0, // Adjust top position
            left: 0, // Adjust left position
            right: 0, // Stretch to the right edge
            bottom: 350, // Stretch to the bottom edge
            child: Image.asset(
              'assets/graph.jpg', // Replace with your image asset path
              fit: BoxFit.contain, // Adjust to cover the entire background
            ),
          ),
          const Positioned(
              top: 0, // Adjust top position
              left: 30, // Adjust left position
              right: 30, // Stretch to the right edge
              bottom: 80, // Stretch to the bottom edge
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'High',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    'Prev Close(Avr 28 Days)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              )),
          const Positioned(
              top: 0, // Adjust top position
              left: 30, // Adjust left position
              right: 30, // Stretch to the right edge
              bottom: 30, // Stretch to the bottom edge
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '11,691.89',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    '11,512.41',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          const Positioned(
              top: 0, // Adjust top position
              left: 30, // Adjust left position
              right: 30, // Stretch to the right edge
              bottom: -50, // Stretch to the bottom edge
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Low',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    'Open',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              )),
          const Positioned(
              top: 0, // Adjust top position
              left: 30, // Adjust left position
              right: 30, // Stretch to the right edge
              bottom: -100, // Stretch to the bottom edge
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '11,470.47',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    '11,690.11',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 450, // Start the image from the top
            left: 20, // Adjust this to control horizontal position
            child: Container(
              height: 280, // Set the height of the container
              width: 350, // Set the width of the container
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 168, 225, 181),
                borderRadius: BorderRadius.circular(20), // Circular border
                border: Border.all(
                  color:
                      const Color.fromARGB(255, 128, 193, 151), // Border color
                  width: 3, // Border width
                ),
              ),
              child: Stack(
                children: [
                  // Text "Chat" at top-left corner
                  const Positioned(
                    top: 10,
                    left: 10,
                    bottom: 200,
                    child: Text(
                      "User Ratio",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15, // Adjust top position
                    left: 0, // Adjust left position
                    right: 0, // Stretch to the right edge
                    bottom: -30, // Stretch to the bottom edge
                    child: Image.asset(
                      'assets/pie.png', // Replace with your image asset path
                      fit: BoxFit
                          .contain, // Adjust to cover the entire background
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Buttons on top of the image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Horizontal scrollable row of buttons
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Seller',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between buttons
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 168, 225, 181),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Buyer',
                          style: TextStyle(
                              color: Color.fromARGB(255, 15, 6, 6),
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between buttons
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 168, 225, 181),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Items',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 5, 5),
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between buttons
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 168, 225, 181),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Brands',
                          style: TextStyle(
                              color: Color.fromARGB(255, 13, 6, 6),
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
