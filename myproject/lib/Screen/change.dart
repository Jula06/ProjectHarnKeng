import 'package:flutter/material.dart';
import 'package:myproject/Screen/singup3.dart'; // เพิ่มการนำเข้าไฟล์ signup3.dart

class ChangeScreen extends StatefulWidget {
  const ChangeScreen({super.key});

  @override
  _ChangeScreenState createState() => _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  String? selectedCurrency = 'THB'; // Default to Baht (THB)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Prevent the default back button
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context); // Going back to the previous screen
          },
          child: const Text(
            'ปิด',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        title: const Align( // Align title to the center
          alignment: Alignment.center,
          child: Text(
            'สกุลเงินเริ่มต้น', // Centered title text
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 122, 213, 204),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'เลือกสกุลเงิน',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Currency selection options with Radio buttons
            Column(
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('assets/images/thai.png', width: 24),
                      const SizedBox(width: 10),
                      const Text('Baht (THB)'),
                    ],
                  ),
                  leading: Radio<String>(
                    value: 'THB',
                    groupValue: selectedCurrency,
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('assets/images/usa.png', width: 24),
                      const SizedBox(width: 10),
                      const Text('United States dollar (USD)'),
                    ],
                  ),
                  leading: Radio<String>(
                    value: 'USD',
                    groupValue: selectedCurrency,
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Display the selected currency text
            Center(
              child: Text(
                selectedCurrency == 'THB'
                    ? 'ฉันใช้ THB (฿) เป็นสกุลเงินของฉัน'
                    : 'ฉันใช้ USD (\$) เป็นสกุลเงินของฉัน',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Navigate to Singup3Screen when cancel is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Singup3Screen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, 
                    ),
                  ),
                  child: const Text(
                    'ยกเลิก',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Singup3Screen when next is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Singup3Screen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, 
                    ),
                  ),
                  child: const Text(
                    'ถัดไป',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
