import 'package:flutter/material.dart';
import 'package:myproject/Screen/home4.dart';

class Home3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width for dynamic adjustment of font size
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Prevent the default back button
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.center,
          child: const Text(
            'นโยบายความเป็นส่วนตัว',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 122, 213, 204),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Centered image
              Center(
                child: Container(
                  width: 120,  // Adjust width here
                  height: 120, // Adjust height here
                  child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 16), // Adding space between image and text
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height:8),
                    Center(
                      child: const Text(
                        'HarnKeng ให้ความสำคัญกับความเป็นส่วนตัวของผู้ใช้งาน เราขอแจ้งให้ท่านทราบถึงวิธีที่เราเก็บ ใช้ และคุ้มครองข้อมูลส่วนตัวของท่าน ตามรายละเอียดต่อไปนี้',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center, // Ensure the text is aligned in the center
                      ),
                    ),
                    const Text(
                      'การใช้งานและความรับผิดชอบของผู้ใช้',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'ผู้ใช้ต้อง:\n'
                      ' • ให้ข้อมูลที่ถูกต้องและเป็นความจริง\n'
                      ' • ดูแลรักษาความปลอดภัยของบัญชีตนเอง\n'
                      ' • ไม่กระทำการใด ๆ ที่ทำให้ระบบเสียหาย หรือรบกวนการทำงานของผู้ใช้อื่น\n'
                      ' • ไม่ใช้แอปในทางที่ผิดกฎหมาย หรือขัดต่อจริยธรรม\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'ความเป็นส่วนตัว',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     แอปจะไม่เก็บข้อมูลบัตรเครดิตหรือบัญชีธนาคารของผู้ใช้ข้อมูลส่วนตัว เช่น ชื่อ อีเมล และรูปภาพ จะถูกเก็บรักษาตาม [นโยบายความเป็นส่วนตัว] เพื่อวัตถุประสงค์ในการพัฒนาบริการHarnKeng จะไม่เปิดเผยข้อมูลแก่บุคคลภายนอก เว้นแต่มีเหตุจำเป็นตามกฎหมาย\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'สิทธิ์การใช้งาน',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     ผู้ใช้ได้รับสิทธิ์ในการใช้งานแอปเพื่อ วัตถุประสงค์ส่วนตัว และ ไม่เชิงพาณิชย์เท่านั้นห้ามนำไปให้บริการแก่ผู้อื่นหรือใช้งานในลักษณะอื่นที่ไม่ได้รับอนุญาตจาก HarnKeng\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'ทรัพย์สินทางปัญญา',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     เนื้อหา รูปภาพ ฟังก์ชัน และการออกแบบทั้งหมดในแอปนี้ เป็นทรัพย์สินของ HarnKeng ห้ามทำซ้ำ ดัดแปลง แจกจ่าย หรือใช้เพื่อวัตถุประสงค์อื่นโดยไม่ได้รับอนุญาต\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'การให้บริการและข้อจำกัดความรับผิด',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     HarnKeng ให้บริการตาม “สภาพที่เป็นอยู่” (As-is) โดยไม่รับประกันความสมบูรณ์หรือความพร้อมของบริการทางเราขอสงวนสิทธิ์ในการระงับหรือยกเลิกบัญชีของผู้ที่ละเมิดข้อกำหนดได้โดยไม่ต้องแจ้งล่วงหน้า\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'การเชื่อมโยงภายนอก',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     แอปอาจมีลิงก์หรือการเชื่อมต่อกับบริการของบุคคลที่สาม ซึ่งอยู่นอกเหนือการควบคุมของ HarnKeng เราไม่รับประกันความปลอดภัยหรือความถูกต้องของบริการเหล่านั้น\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'การเปลี่ยนแปลงข้อกำหนด',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     ข้อกำหนดนี้อาจมีการเปลี่ยนแปลงได้โดยไม่ต้องแจ้งให้ทราบล่วงหน้าการใช้งานต่อหลังมีการเปลี่ยนแปลง ถือว่าท่านยอมรับข้อกำหนดฉบับใหม่โดยอัตโนมัต\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'กฎหมายที่ใช้บังคับ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '     ข้อกำหนดนี้อยู่ภายใต้บังคับแห่งกฎหมายของประเทศไทย หากมีข้อพิพาท ให้ยึดถือเขตอำนาจของศาลไทยเป็นหลัก\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center( // Centering the row
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the content
                        children: [
                          const Text(
                            'หากมีคำถามหรือข้อเสนอแนะ กรุณาติดต่อเราที่ช่องทาง',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home4Screen()),
                              );
                            },
                            child: Text(
                              '[ติดต่อเรา]',
                              style: TextStyle(
                                fontSize: 18, // Adjust font size dynamically
                                color: Color.fromARGB(255, 43, 138, 32),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const Text(
                            ' ภายในแอป',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
