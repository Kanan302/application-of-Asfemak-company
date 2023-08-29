import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactContent extends StatelessWidget {
  _launchInstagram() async {
    const instagramUrl = 'https://www.instagram.com/asfemak/'; //Instagram
    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      throw 'Could not launch $instagramUrl';
    }
  }

  _launchEmail() async {
    const emailUrl = 'mailto:Asfemak@mail.com'; //Email
    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }

  _launchTelegram() async {
    const telegramUrl = 'https://t.me/GERSOLL'; //Telegram 
    if (await canLaunch(telegramUrl)) {
      await launch(telegramUrl);
    } else {
      throw 'Could not launch $telegramUrl';
    }
  }


  final String phoneNumber = '+79032424525'; // Mesaj göndermek istediğiniz numara

  void _whatsAppAc() async {
    String url = 'https://wa.me/$phoneNumber'; //WhatsApp
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Phone number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 40, bottom: 40, left: 13),
                labelText: 'Your Message',
                border: OutlineInputBorder(
                  borderSide:BorderSide(color: Color(0xFF1AC9FD)),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: 500,
            height: 50,
            child: ElevatedButton(
              onPressed: null,
              child: Text('Send Message'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF1AC9FD)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), 
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold, 
                    letterSpacing: 1.2, 
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _launchInstagram, 
                icon: Image.asset(
                  'photos/instagram_icon.png',
                  width: 50,
                ),
                label: Text('Instagram'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(150, 80)),
                ),
              ),
              
              ElevatedButton.icon(
                onPressed: _launchEmail, 
                icon: Image.asset(
                  'photos/email_icon.png',
                  width: 50,
                ),
                label: Text('Email'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(150, 80)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _launchTelegram, 
                icon: Image.asset(
                  'photos/telegram_icon.png',
                  width: 50,
                ),
                label: Text('Telegram'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(150, 80)),
                ),
              ),
              ElevatedButton.icon(
                onPressed: _whatsAppAc,
                label: Text('WhatsApp'), 
                icon: Image.asset(
                  'photos/WhatsApp_icon.png',
                  width: 50,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(150, 80)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

