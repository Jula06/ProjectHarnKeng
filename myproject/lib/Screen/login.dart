import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // ใช้พื้นหลังโปร่งใส
        elevation: 0, // ไม่มีเงา
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context); // ย้อนกลับไปหน้าก่อนหน้า
          },
          child: const Text(
            "กลับ", // ข้อความที่แสดงในปุ่ม
            style: TextStyle(
              color: Colors.black, // สีข้อความเป็นสีดำ
              fontSize: 16, // ขนาดตัวอักษร
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p.png"), 
            fit: BoxFit.cover, // ขยายภาพให้เต็มพื้นที่
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Change from center to start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // โลโก้
              SizedBox(height: 20), // เพิ่มช่องว่างระหว่างขอบบนและโลโก้
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70), // Space between logo and app name

              // Align the text to the left
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 50), // Space before form

              // Signup Form
              TextField(
                decoration: InputDecoration(
                  hintText: 'ที่อยู่อีเมล',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'รหัสผ่าน',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
              
              // Align the "8 characters" text to the left
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '*ต้องมีตัวอักขระอย่างน้อย 8 ตัว',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 35, 35),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 50), // Space between form and buttons

              // Signup Button
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                  label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/page');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 67, 154, 67),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: Text(
                      "ลืมรหัสผ่าน?",
                      style: TextStyle(color: const Color.fromARGB(255, 2, 99, 53)),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
