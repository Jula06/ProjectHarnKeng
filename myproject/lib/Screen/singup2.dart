import 'package:flutter/material.dart';

class Singup2Screen extends StatefulWidget {
  const Singup2Screen({super.key});

  @override
  _Singup2ScreenState createState() => _Singup2ScreenState();
}

class _Singup2ScreenState extends State<Singup2Screen> {
  String? _selectedCountryCode = '+66'; // Default to Thailand code
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // ทำให้แถบมีพื้นหลังโปร่งใส
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
            image: AssetImage("assets/images/p.png"), // พื้นหลัง
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
              SizedBox(height: 70), // Adjust space after logo

              // App Name Text
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'สมัครใช้งาน',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15), // Space before form

              // Signup Form
              TextField(
                decoration: InputDecoration(
                  hintText: 'ชื่อผู้ใช้',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
              SizedBox(height: 15), // Space between username and next button

              // Phone number input (country code and number)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButton<String>(
                      value: _selectedCountryCode,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCountryCode = newValue!;
                        });
                      },
                      items: <String>['+66', '+1', '+44', '+81']
                          .map<DropdownMenuItem<String>>((String value) {
                        String flagImage = '';
                        switch (value) {
                          case '+66':
                            flagImage = 'assets/images/thai.png';
                            break;
                          case '+1':
                            flagImage = 'assets/images/eng.png';
                            break;
                          case '+44':
                            flagImage = 'assets/images/usa.png';
                            break;
                          case '+81':
                            flagImage = 'assets/images/japan.png';
                            break;
                        }

                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Image.asset(flagImage, width: 24, height: 24),
                              const SizedBox(width: 5),
                              Text(value),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'หมายเลขโทรศัพท์',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50), // Space before button

              // Next Button
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                  label: const Text("ถัดไป", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/singup3');
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
            ],
          ),
        ),
      ),
    );
  }
}
