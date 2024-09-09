import 'package:flutter/material.dart';
import 'package:flutter_application_agromarket_hub/brief.dart';
import 'package:flutter_application_agromarket_hub/proj.dart';
// Ensure you import the file where Details is defined

class comm extends StatefulWidget {
  const comm({super.key});

  @override
  State<comm> createState() => _commState();
}

class _commState extends State<comm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 225, 181),
      body: Stack(
        children: [
          // Background Container with Chat Text
          Positioned(
            top: 130, // Start the image from the top
            left: 20, // Adjust this to control horizontal position
            child: Container(
              height: 300, // Set the height of the container
              width: 350, // Set the width of the container
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), // Circular border
              ),
              child: Stack(
                children: [
                  // Text "Chat" at top-left corner
                  const Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Chat bubble or information (First row)
                  const Positioned(
                    top: 60, // Adjusted for proper layout
                    left: 10,
                    right: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 45,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rana',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Hello',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '5:29 PM',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Chat bubble or information (Second row)
                  const Positioned(
                    top: 120, // Adjusted for proper layout
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 45,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rana',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'This is qasid',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '8:11 PM',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Button at the bottom of the container
                  Positioned(
                    bottom:
                        10, // Adjust this to position button above the container's bottom
                    left: 20, // Adjust to align it centrally
                    right: 20,
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 148, 147, 146),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'New Message',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors
                  .transparent, // Transparent to show the custom bar behind
              elevation: 0, // Remove shadow
              title: const Text(
                "Community",
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_outlined),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Brief(),
                    ), // Ensure `Hub` is correctly imported
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
                      MaterialPageRoute(builder: (context) => const Proj()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
