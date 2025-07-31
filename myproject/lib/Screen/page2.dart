import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the app bar completely
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p1.png"), // Background image (p1.png)
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // User Greeting Section - Aligned to the left and Settings Icon to the right
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between left and right
                children: [
                  Row(
                    children: [
                      Text(
                        "สวัสดี ! \nSoptinapa",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 12, 95, 178),
                        ),
                      ),
                      SizedBox(width: 30), // Space between text and logo
                      Image.asset(
                        "assets/images/logo.png", // Your logo image
                        width: 90, // Adjust the size of the image
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.black), // Settings icon
                    onPressed: () {
                      Navigator.pushNamed(context, '/setting');// Add action for settings icon here
                    },
                  ),
                ],
              ),
              SizedBox(height: 5),

              // Search Section with Icon inside the TextField
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "ค้นหา",
                          prefixIcon: Icon(Icons.search, color: Colors.black), // Icon inside the TextField
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                            borderSide: BorderSide.none,
                          ),
                          filled: true, // Ensures the background is filled
                          fillColor: const Color.fromARGB(255, 225, 224, 224), // Background color of the search field
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              // JP Image and Add Member Button with rounded corners and blue background
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 231, 248), // Blue background for both image and button
                  borderRadius: BorderRadius.circular(15), // Rounded corners for the background container
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(170), // Rounded corners for the image
                      child: Image.asset("assets/images/jp.png", width: 250), // Image on the left side
                    ),
                    SizedBox(width: 10), // Space between image and button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 123, 196, 187), // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners for the button
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        ),
                        child: Text(
                          "+ เพิ่มสมาชิก",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              // Activity Section with Blue Background
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 231, 248), // Blue background
                  borderRadius: BorderRadius.circular(15), // Rounded corners for the background container
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "กิจกรรมล่าสุด",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Image.asset("assets/images/logo1.png", width: 40), // Add your logo image here
                        SizedBox(width: 10),
                        Text(
                          "คุณเพิ่ม \"Natnicha\" เข้าร่วมกลุ่มญี่ปุ่น",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/logo1.png", width: 40),
                        SizedBox(width: 10),
                        Text(
                          "คุณลงกลุ่ม \"ญี่ปุ่น\"",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/logo1.png", width: 40),
                        SizedBox(width: 10),
                        Text(
                          "คุณสร้างกลุ่ม \"ญี่ปุ่น\"",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Navigation Icons Section with Text Labels and Blue Background
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 231, 248), // Blue background for the row
                  borderRadius: BorderRadius.circular(20), // Rounded corners for the background container
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/logo1.png", width: 70), // Logo 1 for Home
                        Text("หน้าหลัก"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/logo2.png", width: 70), // Logo 2 for Group
                        Text("กลุ่ม"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/logo3.png", width: 70), // Logo 3 for Activities
                        Text("กิจกรรม"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/logo4.png", width: 70), // Logo 4 for Account
                        Text("บัญชี"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
