import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Variable to track selected option for the group
  int _selectedOption = 0;  // Default to the first option
  int _selectedNewsOption = 0; // For "ข่าวสารและอัพเดต"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การตั้งค่าการแจ้งเตือน'),
        backgroundColor: const Color.fromARGB(255, 207, 240, 251),
      ),
      body: Center( // Center the content
        child: SingleChildScrollView( // Make the content scrollable if necessary
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertically center the content
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start of the screen
            children: [
              // Group of radio buttons for "กลุ่มและเพื่อน"
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'กลุ่มและเพื่อน', // Title for the group
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีคนเพิ่มฉันไปยังกลุ่ม'),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีคนลบฉันออกจากกลุ่ม'),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), 
              // Group of radio buttons for "กลุ่มและเพื่อน"
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'กลุ่มและเพื่อน', // Title for the group
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีการเพิ่มค่าใช้จ่าย'),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีการแก้ไข/ลบค่าใช้จ่าย'),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีคนแสดงความคิดเห็นกับค่าใช้จ่าย'),
                    leading: Radio<int>(
                      value: 3,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อค่าใช้จ่ายถึงกำหนดชำระ'),
                    leading: Radio<int>(
                      value: 4,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('เมื่อมีคนชำระเงินให้ฉัน'),
                    leading: Radio<int>(
                      value: 5,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              // Group of radio buttons for "ข่าวสารและอัพเดต"
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ข่าวสารและอัพเดต', // Title for the group
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text('สรุปกิจกรรมของฉันรายเดือน'),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedNewsOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedNewsOption = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('ข่าวสารและอัพเดตสำคัญของ HarnKeng'),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedNewsOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedNewsOption = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              // Button to save the settings
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green, // Set text color to white
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Remove rounded corners
                  ),
                ),
                onPressed: () {
                  // Handle saving settings
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('บันทึกการเปลี่ยนแปลง'),
                        content: Text('การตั้งค่าของคุณได้ถูกบันทึกแล้ว'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('ตกลง'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('บันทึกการเปลี่ยนแปลง'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsScreen(),
  ));
}
