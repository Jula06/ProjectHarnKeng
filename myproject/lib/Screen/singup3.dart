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
            Navigator.pop(context);
          },
          child: const Text(
            "กลับ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
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
            const SizedBox(height: 20),

            // หัวข้อ
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
            const SizedBox(height: 15),

            // ช่องชื่อผู้ใช้
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
            const SizedBox(height: 15),

            // เบอร์โทร
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
                    items: <String>['+66', '+1', '+44', '+81'].map((String value) {
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
            const SizedBox(height: 25),

            // เปลี่ยนสกุลเงิน
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ฉันใช้ THB (฿) เป็นสกุลเงินของฉัน ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeScreen()));
                    },
                    child: const Text(
                      'เปลี่ยน >>',
                      style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 43, 138, 32)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // ปุ่มเสร็จสิ้น
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                label: const Text("เสร็จสิ้น", style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Navigator.pushNamed(context, '/nextScreen');
                },
                icon: const Icon(Icons.check),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 67, 154, 67),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),

            // ยอมรับข้อกำหนด/นโยบาย
            Center(
              child: Column(
                children: [
                  const Text(
                    'การสมัครใช้งานถือว่าคุณยอมรับ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home2Screen())),
                        child: const Text(
                          'ข้อกำหนดการให้บริการ',
                          style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 43, 138, 32)),
                        ),
                      ),
                      const Text(
                        ' และ ',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home3Screen())),
                        child: const Text(
                          'นโยบายความเป็นส่วนตัว',
                          style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 43, 138, 32)),
                        ),
                      ),
                      const Text(
                        ' ของ HarnKeng',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
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
