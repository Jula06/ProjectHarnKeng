// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้ Container เพื่อใส่พื้นหลังภาพ
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p2.png"), // ภาพพื้นหลัง
            fit: BoxFit.cover, // ขยายภาพให้เต็มพื้นที่
            colorFilter: ColorFilter.mode(const Color.fromARGB(255, 182, 177, 177).withOpacity(0.5), BlendMode.darken), // ลดความทึบของพื้นหลัง
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(70, 0, 70, 0), // ลดช่องว่างสำหรับโลโก้
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // จัดเนื้อหากึ่งกลาง
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // โลโก้วงกลม (ปรับให้ขึ้นไปด้านบน)
              SizedBox(height: 20), // Move the logo up by adjusting the space here
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
              SizedBox(height: 20), 

              // ข้อความ "ยินดีต้อนรับ"
              Align(
                alignment: Alignment.centerLeft,  // Align the entire RichText to the left
                child: RichText(
                  textAlign: TextAlign.left,  // Align text to the left
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'จัด จด จ่าย \nทำทั้งหมดจบในที่เดียว\n',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 7, 83, 149),
                        ),
                      ),
                      TextSpan(
                        text: 'HarnKeng เก็บประวัติในรูปแบบของ Chat อ่านง่าย สามารถติดตามยอดใช้จ่ายสบาย ไม่ต้องคอยอัพเดตในรายรับ รายจ่ายแยกต่างหาก',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 11, 13, 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10), // Space before the button

              // Add the image below the welcome text
              Image.asset('assets/images/i.png', height: 300), // Add the image here

              // Button "ถัดไป"
              SizedBox(height: 10), 
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                  label: Text("เสร็จ", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/page2');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 81, 83, 81),
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
