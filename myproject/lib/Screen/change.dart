import 'package:flutter/material.dart';

class ChangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width for dynamic adjustment of font size
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Prevent the default back button
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'ปิด',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,  // Adjust text color to match AppBar//////
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: const Text(
            'สกุลเงินเริ่มต้น',
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
                      Image.asset('assets/images/thai.png', width: 24), // Placeholder for flag
                      const SizedBox(width: 10),
                      const Text('Baht (THB)'),
                    ],
                  ),
                  leading: Radio<String>(
                    value: 'THB',
                    groupValue: 'selected_currency',
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('assets/images/usa.png', width: 24), // Placeholder for flag
                      const SizedBox(width: 10),
                      const Text('United States dollar (USD)'),
                    ],
                  ),
                  leading: Radio<String>(
                    value: 'USD',
                    groupValue: 'selected_currency',
                    onChanged: (value) {},
                  ),
                ),
              
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey, // Gray color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // No rounded corners
                  ),
                ),
                child: const Text(
                  'ยกเลิก',
                  style: TextStyle(fontSize: 16, color: Colors.white), // White text color
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, // Gray color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // No rounded corners
                  ),
                ),
                child: const Text(
                  'ถัดไป',
                  style: TextStyle(fontSize: 16, color: Colors.white), // White text color
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
