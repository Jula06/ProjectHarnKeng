import 'package:flutter/material.dart';
import 'package:myproject/Screen/home4.dart';

class Home2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'ปิด',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        title: const Text(
          'ข้อกำหนดการให้บริการ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 213, 204),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // โลโก้
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 16),

              // เนื้อหา
              _buildSectionTitle('วัตถุประสงค์'),
              _buildBodyText(
                '     HarnKeng เป็นแอปพลิเคชันสำหรับแบ่งเงินค่าใช้จ่ายในกิจกรรมกลุ่ม เช่น ทริปกับเพื่อน การสังสรรค์ หรือกิจกรรมต่าง ๆ โดยฟังก์ชันหลัก ได้แก่:\n'
                ' • สร้างกลุ่มกิจกรรมและเชิญเพื่อนเข้าร่วม\n'
                ' • บันทึกการจ่าย พร้อมแบบใบเสร็จ\n'
                ' • คำนวณยอดที่แต่ละคนต้องจ่ายโดยอัตโนมัติ (แบบหักล้าง)\n'
                ' • สรุปรายเดือนและแจ้งเตือนรายการสำคัญ\n',
              ),

              _buildSectionTitle('การใช้งานและความรับผิดชอบของผู้ใช้'),
              _buildBodyText(
                'ผู้ใช้ต้อง:\n'
                ' • ให้ข้อมูลที่ถูกต้องและเป็นความจริง\n'
                ' • ดูแลรักษาความปลอดภัยของบัญชีตนเอง\n'
                ' • ไม่กระทำการใด ๆ ที่ทำให้ระบบเสียหาย หรือรบกวนการทำงานของผู้ใช้อื่น\n'
                ' • ไม่ใช้แอปในทางที่ผิดกฎหมาย หรือขัดต่อจริยธรรม\n',
              ),

              _buildSectionTitle('ความเป็นส่วนตัว'),
              _buildBodyText(
                '     แอปจะไม่เก็บข้อมูลบัตรเครดิตหรือบัญชีธนาคารของผู้ใช้ ข้อมูลส่วนตัว เช่น ชื่อ อีเมล และรูปภาพ จะถูกเก็บรักษาตาม [นโยบายความเป็นส่วนตัว] เพื่อวัตถุประสงค์ในการพัฒนาบริการ HarnKeng จะไม่เปิดเผยข้อมูลแก่บุคคลภายนอก เว้นแต่มีเหตุจำเป็นตามกฎหมาย\n',
              ),

              _buildSectionTitle('สิทธิ์การใช้งาน'),
              _buildBodyText(
                '     ผู้ใช้ได้รับสิทธิ์ในการใช้งานแอปเพื่อวัตถุประสงค์ส่วนตัว และไม่เชิงพาณิชย์เท่านั้น ห้ามนำไปให้บริการแก่ผู้อื่นหรือใช้งานในลักษณะอื่นที่ไม่ได้รับอนุญาตจาก HarnKeng\n',
              ),

              _buildSectionTitle('ทรัพย์สินทางปัญญา'),
              _buildBodyText(
                '     เนื้อหา รูปภาพ ฟังก์ชัน และการออกแบบทั้งหมดในแอปนี้ เป็นทรัพย์สินของ HarnKeng ห้ามทำซ้ำ ดัดแปลง แจกจ่าย หรือใช้เพื่อวัตถุประสงค์อื่นโดยไม่ได้รับอนุญาต\n',
              ),

              _buildSectionTitle('การให้บริการและข้อจำกัดความรับผิด'),
              _buildBodyText(
                '     HarnKeng ให้บริการตาม “สภาพที่เป็นอยู่” (As-is) โดยไม่รับประกันความสมบูรณ์หรือความพร้อมของบริการ ทางเราขอสงวนสิทธิ์ในการระงับหรือยกเลิกบัญชีของผู้ที่ละเมิดข้อกำหนดได้โดยไม่ต้องแจ้งล่วงหน้า\n',
              ),

              _buildSectionTitle('การเชื่อมโยงภายนอก'),
              _buildBodyText(
                '     แอปอาจมีลิงก์หรือการเชื่อมต่อกับบริการของบุคคลที่สาม ซึ่งอยู่นอกเหนือการควบคุมของ HarnKeng เราไม่รับประกันความปลอดภัยหรือความถูกต้องของบริการเหล่านั้น\n',
              ),

              _buildSectionTitle('การเปลี่ยนแปลงข้อกำหนด'),
              _buildBodyText(
                '     ข้อกำหนดนี้อาจมีการเปลี่ยนแปลงได้โดยไม่ต้องแจ้งให้ทราบล่วงหน้า การใช้งานต่อหลังมีการเปลี่ยนแปลง ถือว่าท่านยอมรับข้อกำหนดฉบับใหม่โดยอัตโนมัติ\n',
              ),

              _buildSectionTitle('กฎหมายที่ใช้บังคับ'),
              _buildBodyText(
                '     ข้อกำหนดนี้อยู่ภายใต้บังคับแห่งกฎหมายของประเทศไทย หากมีข้อพิพาท ให้ยึดถือเขตอำนาจของศาลไทยเป็นหลัก\n',
              ),

              const SizedBox(height: 16),

              // ✅ ติดต่อเรา แบบแบ่ง 2 บรรทัดตรงกลาง
              Center(
                child: Column(
                  children: [
                    const Text(
                      'หากมีคำถามหรือข้อเสนอแนะ กรุณาติดต่อเราที่ช่องทาง',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home4Screen()),
                            );
                          },
                          child: const Text(
                            '[ติดต่อเรา]',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 43, 138, 32),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'ภายในแอป',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // หัวข้อหลัก
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  // ข้อความทั่วไป
  Widget _buildBodyText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
