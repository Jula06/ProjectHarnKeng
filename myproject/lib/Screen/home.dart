import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(70, 10, 70, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70), // ✅ ขยับโลโก้ลงมานิดนึง

            // โลโก้วงกลม
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
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
            const SizedBox(height: 140),

            // ปุ่มสมัครใช้งาน
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("สมัครใช้งาน", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.pushNamed(context, '/singup');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 19, 117, 22),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // ปุ่มเข้าสู่ระบบ
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 90, 100, 90),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // ลิงก์ ข้อกำหนด | นโยบายความเป็นส่วนตัว | ติดต่อเรา
            Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home2');
                      },
                      child: const Text(
                        "ข้อกำหนด",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 2, 99, 53),
                        ),
                      ),
                    ),
                    const Text("|", style: TextStyle(color: Colors.grey)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home3');
                      },
                      child: const Text(
                        "นโยบายความเป็นส่วนตัว",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 2, 99, 53),
                        ),
                      ),
                    ),
                    const Text("|", style: TextStyle(color: Colors.grey)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home4');
                      },
                      child: const Text(
                        "ติดต่อเรา",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 2, 99, 53),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
