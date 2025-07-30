import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() =>
      _SettingsScreenState();
}

class _SettingsScreenState
    extends State<SettingsScreen> {
  // List of selected options
  bool _option1 = false;
  bool _option2 = false;
  bool _option3 = false;
  bool _option4 = false;
  bool _option5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การตั้งค่าการแจ้งเตือน'),
        backgroundColor: const Color.fromARGB(255, 198, 247, 230),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // List of checkboxes
            CheckboxListTile(
              title: Text(''),
              value: _option1,
              onChanged: (bool? value) {
                setState(() {
                  _option1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(''),
              value: _option2,
              onChanged: (bool? value) {
                setState(() {
                  _option2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(''),
              value: _option3,
              onChanged: (bool? value) {
                setState(() {
                  _option3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(''),
              value: _option4,
              onChanged: (bool? value) {
                setState(() {
                  _option4 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(''),
              value: _option5,
              onChanged: (bool? value) {
                setState(() {
                  _option5 = value!;
                });
              },
            ),
            // Button to save the settings
            SizedBox(height: 20),
            ElevatedButton(
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsScreen(),
  ));
}
