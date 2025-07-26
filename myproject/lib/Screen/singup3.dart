import 'package:flutter/material.dart';
import 'package:myproject/Screen/change.dart';
import 'package:myproject/Screen/home2.dart';
import 'package:myproject/Screen/home3.dart';

class Singup3Screen extends StatefulWidget {
  @override
  _Singup3ScreenState createState() => _Singup3ScreenState();
}

class _Singup3ScreenState extends State<Singup3Screen> {
  String? _selectedCountryCode = '+66'; // Default to Thailand code
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context); // Going back to the previous screen
          },
          child: const Text(
            "ย้อนกลับ", // Text as the label instead of an icon
            style: TextStyle(
              color: Colors.black,
              fontSize: 16, // Adjust font size if necessary
              fontWeight: FontWeight.normal, // Make sure the font weight is normal for a clean look
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo Image
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
            SizedBox(height: 20), // Adjust space after logo

            // App Name Text
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
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
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
            ),
            SizedBox(height: 15), // Space between username and next button

            // Phone number input (country code and number)
            Row(
              children: [
                // Country Code Dropdown
                Padding(
                  padding: const EdgeInsets.only(left: 10.0), // เพิ่มช่องว่างทางซ้าย
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
                            Image.asset(
                              flagImage,
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 5),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 10),

                // Phone Number TextField
                Expanded(
                  child: TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      hintText: 'หมายเลขโทรศัพท์',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30), // Space before button

            const SizedBox(height: 5),
            Center( // Centering the row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the content
                children: [
                  const Text(
                    'ฉันใช้ THB (฿) เป็นสกุลเงินของฉัน ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangeScreen()), // แก้ไขหน้าที่ต้องการ
                      );
                    },
                    child: Text(
                      'เปลี่ยน >>',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 43, 138, 32),  
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // เพิ่มช่องว่างระหว่างข้อความ "เปลี่ยน >>" และปุ่ม "เสร็จสิ้น"

            // Next Button
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                label: Text("เสร็จสิ้น", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  // Navigator.pushNamed(context, '/nextScreen');
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
            const SizedBox(height: 20),
                    Center( // Centering the row
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the content
                        children: [
                          const Text(
                            'การสมัครใช้งานถือว่าคุณยอมรับ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home2Screen()),
                              ),
                            child: Text(
                              ' ข้อกำหนดการให้บริการ',
                              style: TextStyle(
                                fontSize: 18, // Adjust font size dynamically
                                color: Color.fromARGB(255, 43, 138, 32),
                               
                              ),
                            ),
                          ),
                          const Text(
                            ' และ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home3Screen()),
                              ),
                            child: Text(
                              ' นโยบายความเป็นส่วนตัว',
                              style: TextStyle(
                                fontSize: 18, // Adjust font size dynamically
                                color: Color.fromARGB(255, 43, 138, 32),
                                
                              ),
                            ),
                          ),
                          const Text(
                            '  ของ HarnKeng',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
