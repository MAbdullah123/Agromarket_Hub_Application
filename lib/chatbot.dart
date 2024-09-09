import 'package:flutter/material.dart';
import 'package:flutter_application_agromarket_hub/Resource.dart';
import 'package:flutter_application_agromarket_hub/proj.dart';

class chatbot extends StatefulWidget {
  const chatbot({super.key});

  @override
  State<chatbot> createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 225, 181),
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Transparent to show custom bar behind
        elevation: 0, // Remove shadow
        title: const Text(
          "chatbot",
          style: TextStyle(color: Colors.orange, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Proj(),
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
                  builder: (context) => const Resource(),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0, // Position the container from the top
            left: 20, // Adjust horizontal position
            child: Container(
              height: 380, // Set the height of the container
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
                    child: Text(
                      "Chat",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // First image positioned at the top-right
                  Positioned(
                    top: 50,
                    right: 10,
                    child: Image.asset(
                      'assets/pic1.png', // Replace with your image URL
                      height: 100,
                      width: 160,
                    ),
                  ),
                  // Second image positioned at the bottom-left
                  Positioned(
                    bottom: 110,
                    left: 10,
                    child: Image.asset(
                      'assets/pic2.png', // Replace with your image URL
                      height: 100,
                      width: 250,
                    ),
                  ),
                  // Message typing bar and send button at the bottom of the container
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              hintText: "Type a message",
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                            width:
                                10), // Add some spacing between TextField and button
                        IconButton(
                          icon: const Icon(Icons.send,
                              color: Colors.orange, size: 40),
                          onPressed: () {
                            // Implement your send message functionality here
                            String message = _messageController.text;
                            print("Sending message: $message");
                            _messageController
                                .clear(); // Clear the input after sending
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
