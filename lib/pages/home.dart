import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 1,),
            child: Row(
              children: [
                Image(
                  image: AssetImage('photos/logo.png'),
                ),
                SizedBox(width: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ASFEMAK",
                    style: TextStyle(
                      letterSpacing: 4,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ],
            ),
          ),     
          SizedBox(height: 30),
          Center(
            child: Image.asset(
              'photos/kreml_photo_home.png',
            ),
          ),
          SizedBox(height: 25),
          const Divider(
            color: Color(0xFFD0D0D0),
            height: 20,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(height: 10,),
          const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Study in Russia",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "with us you are in safe hands",
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey
                      ),
                    ),
                  )
                ),
              ],
            ),
          SizedBox(height: 10,),
          const Divider(
            color: Color(0xFFD0D0D0),
            height: 20,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            child: const Text(
              "“ASFEMAK” is a Moscow international education consulting company for students who wish to continue their studying in Russia. Since 2019 we have been authorised to promote various Russian universities. Every service we offer is supported by the hard work of professionals. Our team helps to choose the best and most suitable field and university for the candidates. Till now we have assisted thousands of students to achieve their dreams and come to study in Russia. We appreciate the trust of our students and their parents. ASFEMAK takes care about every prospective student who approached us for looking for admission in our very educated and beautiful country.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.7 
              ),
            ),
          )
        ],
      ),
    );
  }
}

