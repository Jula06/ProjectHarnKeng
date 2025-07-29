import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set app bar transparent
        elevation: 0, // Remove the shadow of the app bar
        automaticallyImplyLeading: false, // Remove the default back button
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p1.png"), // Updated background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // User Greeting Section
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"), // Add your avatar image here
                  ),
                  SizedBox(width: 10),
                  Text(
                    "สวัสดี ! Soptinapa",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 1, 1, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Activity Section
              Text(
                "กิจกรรมล่าสุด",
                style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 1, 1, 1)),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("คุณเพิ่ม \"Natnicha\" เข้าร่วมกลุ่มนิวยอร์ก", style: TextStyle(color: Colors.black)),
                  Text("คุณลงกลุ่ม \"นิวยอร์ก\"", style: TextStyle(color: Colors.black)),
                  Text("คุณสร้างกลุ่ม \"นิวยอร์ก\"", style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 30),

              // Navigation Icons Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.black),
                  Icon(Icons.group, color: Colors.black),
                  Icon(Icons.work, color: Colors.black),
                  Icon(Icons.account_balance_wallet, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
