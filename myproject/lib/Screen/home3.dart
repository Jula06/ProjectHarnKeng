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
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'ปิด',
            style: TextStyle(
              fontSize: 18,
              //fontWeight: FontWeight.bold,
              color: Colors.white,  // Adjust text color to match AppBar
            ),
          ),
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
                      'ข้อมูลที่เราเก็บรวบรวม',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'ข้อมูลที่ผู้ใช้ให้โดยตรง:\n'
                      ' • ชื่อ-นามสกุล\n'
                      ' • อีเมล\n'
                      ' • เบอร์โทรศัพท์\n'
                      ' • รูปโปรไฟล์\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'วัตถุประสงค์ในการใช้ข้อมูล',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'ข้อมูลที่ผู้ใช้ให้โดยตรง:\n'
                      ' • ชื่อ-นามสกุล\n'
                      ' • อีเมล\n'
                      ' • เบอร์โทรศัพท์\n'
                      ' • รูปโปรไฟล์\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    
                    Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 8),
                          Text(
                            'ช่องทางติดต่อ\n'
                            'หากมีข้อสงสัย ร้องเรียน หรือขอใช้สิทธิต่าง ๆ กรุณาติดต่อ:\n'
                            'ทีมงาน HarnKeng\n'
                            '📧 อีเมล: support@harnkeng.app \n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center, // Align the text to center
                          ),
                        ],
                      ),
                    ),
                  ),

                    const SizedBox(height: 5),
                    Center( // Centering the row
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the content
                        children: [
                          const Text(
                            '📱 ผ่านเมนู ',
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
