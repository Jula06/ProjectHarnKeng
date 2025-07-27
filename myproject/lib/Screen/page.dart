import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้ Container เพื่อใส่พื้นหลังภาพ
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p2.png"), // ภาพพื้นหลัง
            fit: BoxFit.cover, // ขยายภาพให้เต็มพื้นที่
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(70, 20, 70, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // จัดเนื้อหากึ่งกลาง
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // โลโก้วงกลม
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
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
              const SizedBox(height: 150),

              
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                  label: Text("ถัดไป", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/singup2');
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
