import 'package:flutter/material.dart';


class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: EdgeInsets.only(top: 20),
      child: Center( 
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              width: 350,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('photos/logo_text.png'),
                    width: 300,
                  ),
                  SizedBox(height: 18),
                  Text(
                    'ABOUT ASFEMAK',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "“ASFEMAK” is a Moscow international education consulting company for students who wish to continue their studying in Russia. Since 2019 we have been authorised to promote various Russian universities. Every service we offer is supported by the hard work of professionals. Our team helps to choose the best and most suitable field and university for the candidates. Till now we have assisted thousands of students to achieve their dreams and come to study in Russia. We appreciate the trust of our students and their parents. ASFEMAK takes care about every prospective student who approached us for looking for admission in our very educated and beautiful country.",
                    style: TextStyle(
                      height: 1.7,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(16.0),
              width: 350,
              height: 620,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('photos/students.png'),
                    width: 300,
                  ),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(
                        'INTERNATIONAL STUDENTS',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "ASFEMAK students are satisfied with the services and with the level of education at the universities of Russia. We have an extraordinary atmosphere, where teachers, students and ASFEMAK team are rather like a family. This helps our students to adjust to the educational process and to the environment of a foreign country. It’s good to feel like at home. Students take an active part in the life of the university. Russian together with the foreign students perform in concerts, festivals, sport events, organize students’ parties, participate in contests. All this gives international students a great opportunity to make friends all around the world, to learn the cultural of a new country, provides them with the skills necessary for their future professional career in the globalizing world.",
                        style: TextStyle(
                          height: 1.7,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(16.0),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('photos/passport.png'),
                    width: 300,
                  ),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(
                        'ADMISSION PROCESS',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "“ASFEMAK” is a Moscow international education consulting company for students who wish to continue their studying in Russia.",
                        style: TextStyle(
                          height: 1.7,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 37,
                        child: ElevatedButton(
                          onPressed: null, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                            side: MaterialStatePropertyAll(BorderSide(color: Color(0xFF27AE60),width: 1),),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Apply here',
                              style: TextStyle(
                                color: Color(0xFF27AE60),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 61,),
                      SizedBox(
                        width: 154,
                        height: 37,
                        child: ElevatedButton(
                          onPressed: null, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                            side: MaterialStatePropertyAll(BorderSide(color: Color(0xFF27AE60),width: 1),),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Russian Embassies',
                              style: TextStyle(
                                color: Color(0xFF27AE60),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}