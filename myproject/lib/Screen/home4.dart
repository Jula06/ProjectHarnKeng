import 'package:flutter/material.dart';

class Home4Screen extends StatelessWidget {
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
            'ช่องทางการติดต่อเรา',
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
                    const SizedBox(height: 8),
                    const Text(
                      'ติดต่อเรา',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 116, 11),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '   หากคุณมีคำถาม ข้อเสนอแนะ หรือพบปัญหาในการใช้งาน กรุณาติดต่อทีมงานผ่านช่องทางด้านล่างนี้\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'ข้อมูลติดต่อ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 116, 11),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'HarnKeng (หารเก่ง)\n'
                      'อาคารนวัตกรรม มหาวิทยาลัยเทคโนโลยีสุรนารี อ.เมือง   จ.นครราชสีมา 30000\n'
                      '098-xxx-xxxx\n'
                      'support@harnkeng.app\n'
                      'จันทร์ - ศุกร์ เวลา 09:00 - 17:00 น.\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'ช่องทางอื่นๆ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 116, 11),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Ig: @harnkeng_official\n'
                      'Line: @harnkeng\n'
                      'Facebook: @harnkeng.official\n',
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
      ),
    );
  }
}
