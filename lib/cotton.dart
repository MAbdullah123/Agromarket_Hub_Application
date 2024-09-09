import 'package:flutter/material.dart';
import 'package:flutter_application_agromarket_hub/brief.dart';
import 'package:flutter_application_agromarket_hub/hub.dart';
// Ensure you import the file where Details is defined

class Cotton extends StatefulWidget {
  const Cotton({super.key});

  @override
  State<Cotton> createState() => _CottonState();
}

class _CottonState extends State<Cotton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 225, 181),
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0, // Start the image from the top
            left: 0,
            right: 0,
            bottom: 220, // Adjust this value to position the image correctly
            child: Image.asset(
              'assets/sugarcane.jpg', // Replace with your image path
              fit: BoxFit.contain, // Adjust fit according to your needs
            ),
          ),
          // Row with Images
          Positioned(
            bottom: 330, // Position it above the new orange bar
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row
              children: [
                Image.asset(
                  'assets/engro.png', // Corrected image extension
                  height: 150,
                  width: 150,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/sugarcane.jpg', // Corrected image extension
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/cotton.jpg', // Corrected image extension
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          // Custom orange bar with seller info
          Positioned(
            bottom: 285, // Position at the bottom of the screen
            left: 0,
            right: 0,
            height: 60, // Height of the orange bar
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Center(
                child: Text(
                  'Seller: Ali Raza',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),

          // New Row with Text and Button
          Positioned(
            bottom:
                220, // Adjust this value to position it below the orange bar
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sugarcane - 20KG',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action to be performed when the button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.black,
                            width: 2), // Border color and width
                        borderRadius: BorderRadius.circular(
                            8), // Optional: rounded corners
                      ),
                      backgroundColor: const Color.fromARGB(
                          255, 168, 225, 181), // Background color
                      minimumSize: const Size(80, 60), // Decrease width here
                    ),
                    child: const Text(
                      'RS 2000',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:
                205, // Adjust this value to position it below the orange bar
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lahore',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:
                145, // Adjust this value to position it below the orange bar
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 60,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.delivery_dining_sharp,
                    size: 60,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:
                115, // Adjust this value to position it below the orange bar
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Calendar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 65, // Adjust this value to position it below the orange bar
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 229, 228)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Last bid: 10,120',
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 5, 5), fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 229, 228)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      child: const Text(
                        '00:10:20',
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 229, 228)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Winning',
                        style: TextStyle(
                            color: Color.fromARGB(255, 22, 16, 8),
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Custom white bar with "Enter your bid" and "Bids" button
          Positioned(
            bottom: 20, // Position it at the bottom
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(40), // Circular border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2), // Changes position of shadow
                  ),
                ],
              ),

              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 40, // Adjust height as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Enter your bid',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action to be performed when the button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 226, 158, 31), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize:
                          const Size(100, 40), // Adjust button size as needed
                    ),
                    child: const Text(
                      'Bid(14)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Custom orange bar with date and time
          Positioned(
            top: 110, // Position it below the AppBar
            left: 0,
            right: 0,
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Aug 11, 10:40 AM - Aug 20, 06:00 PM',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.timer,
                      color: Colors.white,
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
                "Cotton",
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_outlined),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const hub()), // Ensure `Hub` is correctly imported
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
                      MaterialPageRoute(builder: (context) => const Brief()),
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
