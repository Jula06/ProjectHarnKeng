import 'package:flutter/material.dart';

class Home4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ติดต่อเรา'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: const Text(
                  'นโยบายความเป็นส่วนตัว',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'HarnKeng ให้ความสำคัญกับข้อมูลส่วนบุคคลของผู้ใช้งาน เรามุ่งมั่นที่จะปกป้องความเป็นส่วนตัวของคุณ โดยการรวบรวมข้อมูลที่จำเป็นเพื่อปรับปรุงการให้บริการและคำนึงถึงความปลอดภัยของข้อมูลส่วนตัวที่ท่านได้ให้ไว้กับเรา',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
