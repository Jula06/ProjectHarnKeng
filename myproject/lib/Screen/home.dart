import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white, // สีพื้นหลังเป็นสีขาว
                shape: BoxShape.circle, // รูปทรงวงกลม
              ),
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(15.0), // กำหนด padding เพื่อให้รูปภาพเล็กลง
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 120, // ลดขนาดของรูปภาพให้น้อยกว่าวงกลม
                    width: 120,  // ลดขนาดของรูปภาพให้น้อยกว่าวงกลม
                    fit: BoxFit.cover, // ทำให้รูปภาพไม่ยืด
                ),
              ),
            ),
          ),
            SizedBox(height: 50),
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                icon: Icon(Icons.add),
                label: Text("สมัครใช้งาน", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.pushNamed(context, '/singup');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 19, 117, 22),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 90, 100, 90),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
             SizedBox(height: 10),
            // ใช้ Row เพื่อให้อยู่ในบรรทัดเดียวกัน
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // จัดตำแหน่งให้กลาง
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home2');
                  },
                  child: Text(
                    "ข้อกำหนด  | ",
                    style: TextStyle(color: const Color.fromARGB(255, 2, 99, 53)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home3');
                  },
                  child: Text(
                    "นโยบายความเป็นส่วนตัว  | ",
                    style: TextStyle(color: const Color.fromARGB(255, 2, 99, 53)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home4');
                  },
                  child: Text(
                    "ติดต่อเรา",
                    style: TextStyle(color: const Color.fromARGB(255, 2, 99, 53)),
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