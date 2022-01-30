import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/contactme.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: 70,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 15),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Our Development Team',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset('assets/images/ab.jpg',
                        width: 70, height: 70),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Abdullah Khalid',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SupermercadoOne'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Mobile Developer',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'About Me',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Passionate software engineering graduate with hands-on, well-developed skills in Software Engineering, programming principles and have developed several android and web apps.',
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'House Number 261, Canal View Housing Society, Gujranwala',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'assets/images/location.png',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
