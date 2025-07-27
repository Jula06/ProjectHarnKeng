import 'package:flutter/material.dart';
import 'package:myproject/Screen/home4.dart';

class Home3Screen extends StatelessWidget {
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
          'นโยบายความเป็นส่วนตัว',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 213, 204),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // โลโก้
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'HarnKeng ให้ความสำคัญกับความเป็นส่วนตัวของผู้ใช้งาน\n'
                'เราขอแจ้งให้ท่านทราบถึงวิธีที่เราเก็บ ใช้\n'
                'และคุ้มครองข้อมูลส่วนตัวของท่าน ตามรายละเอียดต่อไปนี้',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),

              _buildTitle('ข้อมูลที่เราเก็บรวบรวม'),
              _buildBody(
                'ข้อมูลที่ผู้ใช้ให้โดยตรง:\n'
                '• ชื่อ-นามสกุล\n'
                '• อีเมล\n'
                '• เบอร์โทรศัพท์\n'
                '• รูปโปรไฟล์\n'
                '• ข้อมูลกิจกรรมต่าง ๆ ภายในแอป\n'
                '• ใบเสร็จรับเงิน / สลิปโอนเงิน\n\n'
                'ข้อมูลที่เราเก็บโดยอัตโนมัติ:\n'
                '• วันเวลาในการเข้าใช้งาน\n'
                '• ข้อมูลอุปกรณ์ เช่น ประเภทระบบปฏิบัติการและเบราว์เซอร์\n'
                '• เราไม่เก็บข้อมูลบัตรเครดิตหรือบัญชีธนาคาร',
              ),

              _buildTitle('วัตถุประสงค์ในการใช้ข้อมูล'),
              _buildBody(
                'เราใช้ข้อมูลของท่านเพื่อ:\n'
                '• จัดการกลุ่มและรายการค่าใช้จ่าย\n'
                '• คำนวณยอดเงินและหนี้คงค้าง\n'
                '• ส่งการแจ้งเตือน\n'
                '• พัฒนาปรับปรุงแอปและประสบการณ์ผู้ใช้งาน\n'
                '• ตรวจสอบความปลอดภัยของระบบและบัญชี',
              ),

              _buildTitle('การเปิดเผยข้อมูล'),
              _buildBody(
                '• ข้อมูลการใช้จ่าย จะแชร์ให้เฉพาะสมาชิกในกลุ่มเดียวกันเท่านั้น\n'
                '• เราไม่เปิดเผยข้อมูลส่วนตัวแก่บุคคลภายนอก เว้นแต่: เป็นไปตามกฎหมายเพื่อป้องกันอันตรายหรือรักษาความปลอดภัยของระบบและผู้ใช้',
              ),

              _buildTitle('ระยะเวลาการจัดเก็บข้อมูล'),
              _buildBody(
                '• ข้อมูลบัญชี: เก็บตลอดระยะเวลาการใช้งาน\n'
                '• ข้อมูลกิจกรรม: เก็บไว้ 3 ปี\n'
                '• ข้อมูลการเงิน: เก็บไว้ 5 ปี\n'
                'เราใช้การเข้ารหัสและมาตรการรักษาความปลอดภัยมาตรฐาน เช่น HTTPS และการยืนยันตัวตนสองชั้น',
              ),

              _buildTitle('สิทธิของผู้ใช้งาน'),
              _buildBody(
                'ผู้ใช้มีสิทธิ์:\n'
                '• เข้าถึง แก้ไข หรือลบข้อมูลส่วนตัวของตน\n'
                '• ถอนความยินยอมในการเก็บข้อมูล\n'
                '• ขอรับสำเนาข้อมูลของตนในรูปแบบดิจิทัล ท่านสามารถดำเนินการได้ผ่านเมนู "จัดการข้อมูลส่วนตัว" ภายในแอป',
              ),

              _buildTitle('คุกกี้ (Cookies)'),
              _buildBody(
                '• เราใช้คุกกี้เพื่อจดจำการตั้งค่าและปรับปรุงประสบการณ์การใช้งาน\n'
                '• ผู้ใช้สามารถจัดการหรือปิดการใช้คุกกี้ได้ในเมนูการตั้งค่าของแอป',
              ),

              _buildTitle('การถ่ายโอนข้อมูลไปต่างประเทศ'),
              _buildBody(
                'ข้อมูลของท่านอาจถูกจัดเก็บหรือประมวลผลในต่างประเทศ โดยอยู่ภายใต้ มาตรฐานความปลอดภัยสากล',
              ),

              _buildTitle('การเปลี่ยนแปลงนโยบาย'),
              _buildBody(
                'นโยบายความเป็นส่วนตัวนี้อาจมีการเปลี่ยนแปลงเป็นครั้งคราว เราจะแจ้งให้ทราบล่วงหน้าอย่างน้อย 30 วัน\n'
                'ผ่านแอปหรือช่องทางที่เหมาะสม',
              ),

              const SizedBox(height: 24),
              const Center(
                child: Text(
                  'ช่องทางติดต่อ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'หากมีข้อสงสัย ร้องเรียน หรือขอใช้สิทธิต่าง ๆ กรุณาติดต่อ:\n'
                'ทีมงาน HarnKeng\n📧 อีเมล: support@harnkeng.app',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('📱 ผ่านเมนู ', style: TextStyle(fontSize: 16)),
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
                    const Text(' ภายในแอป', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // หัวข้อใหญ่
  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // เนื้อหาทั่วไป
  Widget _buildBody(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}
