import 'package:flutter/material.dart'; 
import 'package:carousel_slider/carousel_slider.dart'; 

 
class EducationContent extends StatelessWidget { 
  final List<Map<String, dynamic>> slides = [ 
    { 
      'image': 'photos/universities/FMSMU.jpg', 
      'title': 'I.M. Sechenov First Moscow State Medical University', 
      'description': 'Sechenov University is the major medical educational and scientific institution in Russia aimed at undergraduate & postgraduate training, accreditation healthcare professionals promoting thus further advance of medical science and healthcare domestically and in a global scale.The Sechenov University - more known as First Medical University.Since the 1949, foreign students were able to study at the university, each year the number increases. The university maintains the atmosphere of respect, friendship and cooperation. Most of the students are Russian, which gives the capacity for foreign students besides learning the educational program, to have a practice of Russian language.The Sechenov University consists of the following faculties:Faculty of General Medicine,Faculty of Dentistry, Faculty of Pharmacy,Faculty of Pediatrics, etc.',       
    }, 
    { 
      'image': 'photos/universities/PFUR.jpg', 
      'title': 'Peoples’ Friendship University of Russia', 
      'description': 'The People’s Friendship University of Russia (PFUR) is one of the leading state higher educational institutes of Russia.It is the only university in the world every year uniting students from 140-150 countries around the world.The PFUR has a multi-profile structure of faculties and majors, typical for classical universities of the world. One of the most popular educational establishments where foreign students are collected from all over the world.the emphasis is on advancing the applied science: new materials, genetics, biomedicine,The PFUR consists of the following faculties and institutes (each institute has each faculty):Ecological Faculty, Engineering Faculty, Faculty of Economics,Faculty of Humanitarian and Social Sciences,Faculty of Science, Philological Faculty,Agro-technological Institute,Institute of Foreign Languages,Institute of Law, Institute of Medicine, Institute of World Economy and Business, etc.', 
    }, 
    { 
      'image': 'photos/universities/RNRMU.jpg', 
      'title': 'Russian National Research Medical University named after N.I. Pirogov', 
      'description': 'Pirogov Russian National Research Medical University (RNRMU) is one of the oldest medical higher educational establishments in Russia.In 2014 RNRMU have been included in European educational system. Nowadays alumnus can be graduated and have Russian certificate or both – Russian and European (University of Milan).The RNRMU consists of the following faculties:Therapeutic faculty, Pediatric faculty, Medicobiologic faculty,International faculty,Psychologico-Social faculty.Having got basic education students can continue their education at clinical internships, postgraduate studies, institutions of doctoral candidate.', 
    }, 
    { 
      'image': 'photos/universities/MSUMD.jpg', 
      'title': 'The Moscow State University of Medicine and Dentistry named after A.I. Evdokimov', 
      'description': 'The Moscow State University of Medicine and Dentistry (MSMSU) is principal university for preparing dentists and one of the leading universities in Russia for training in the specialty "Medicine." The MSMSU has a old history, which dates back to the first dental schools in Russia from 19th century.Pedagogical and personnel capacity of university is unique. At 114 departments the true professionals having exclusive pedagogical skill work: 24 academician and corresponding member of the Russian Academy of Science, more than 1500 PhD (medical sciences), professors, 66 honored doctors of the Russian Federation, winners of the State and international awards.The MSMSU consists of the following faculties:Faculty of General Medicine,Faculty of Dentistry,Faculty of Economics, Faculty of Clinical Psychology,Faculty of Social Work,  Faculty of secondary vocational education, Military training Centre, Preparatory department, etc.', 
    },
    { 
      'image': 'photos/universities/LMSU.jpg', 
      'title': 'Lomonosov Moscow State University', 
      'description': 'Lomonosov Moscow State University (MSU) the first Russian University founded in 1755 on the initiative of M.V. Lomonosov.Yet the major commitment remains the same as it has been in centuries: to provide outstanding teaching, scholarship and research. But what makes our University so lively is this intellectual spirit combined with inexhaustible curiosity.Today, the emphasis is on advancing the applied science: new materials, genetics, biomedicine, pharmaceutics, cognitive sciences, ecology, and information technologies. We work hard to preserve our heritage and develop our traditions of a comprehensive approach to higher education and science. Moscow University has a rich academic history.The MSU consists of the following faculties:Faculty of Law,Faculty of Economics,Faculty of History,Faculty of Journalism,Faculty of Philology,Faculty of Physics,Faculty of Mathematics,Faculty of Psychology,Faculty of Sociology, etc.', 
    },
    { 
      'image': 'photos/universities/MGIMO.jpg', 
      'title': 'Moscow State Institute of International Relations', 
      'description': 'Moscow State Institute of International Relations (MGIMO) was founded on 14th of October 1944 by a special decree of the Soviet Government on the basis of the recently established School of International Relations of the Lomonosov Moscow State University.The MGIMO consists of the following faculties:Faculty of International Relations,Faculty of Law,Faculty of Business,Faculty of Journalism, etc.In raiting “QS University Rankings: By Subject” (2021) MGIMO moved up to the 1st place in Russia and the 41st globally in "Politics and International Relations" and made it into the top 150 for "Modern Language"', 
    },
    { 
      'image': 'photos/universities/KFU.png', 
      'title': 'Kazan Federal University', 
      'description': "Kazan Federal University is a dynamic modern University which participates in local and international cooperation, networking with academia and industry, boosting the region's human resources development, as well as top-level research and innovation in different areas.Physical and mathematical sciences. Natural sciences. Medicine. Education and pedagogy . Humanities. Social sciences. Economics and management. Geology and mineral prospecting and development. Automation and control. Services sphere. Culture and arts. Information science and computer technology. Geodesy and land management. Life safety, environmental engineering and environmental protection.", 
    },
    { 
      'image': 'photos/universities/SU.jpg', 
      'title': 'Synergy University', 
      'description': 'Synergy University or Университет Синергия (MFPA) - higher education institution in Russia. MFPA began its work in the year 1988. In the capital of Russia - Moscow, the main building of the university has its well deserved place. Education at Synergy University regularly receives high marks from experts. Despite being one of the youngest universities of Russia, Synergy University ranks high in international ratings.Programmes:Faculty of Medicine,Information Technologies,Business,Management,Sport Management,Psychology,Game industry & Cybersport,Hotel & Restaurant,Economics,Banking,Law,Online education,Design,Advertising,Linguistics,Theater,Film & Television,Event Management,Preparatory course for Medical and Engineering.', 
    },        
  ]; 
 
  @override 
  Widget build(BuildContext context) { 
    return Padding( 
      padding: EdgeInsets.only(top: 20), 
      child: CarouselSlider( 
        options: CarouselOptions( 
          height: 1000, 
          enlargeCenterPage: true, 
          autoPlay: true, 
          aspectRatio: 16 / 9, 
          autoPlayCurve: Curves.fastOutSlowIn, 
          enableInfiniteScroll: true, 
          autoPlayAnimationDuration: Duration(milliseconds: 800), 
          viewportFraction: 0.8, 
        ), 
        items: slides.map((slide) { 
          return buildCarouselItem( 
            context, 
            slide['image'], 
            slide['title'], 
            slide['description'], 
            slide['additionalWidgets'], 
          ); 
        }).toList(), 
      ), 
    ); 
  } 
 
  Widget buildCarouselItem( 
    BuildContext context, 
    String imagePath, 
    String title, 
    String description, 
    [List<Widget>? additionalWidgets] 
  ) { 
    return Padding( 
      padding: EdgeInsets.symmetric(horizontal: 10), 
      child: Container( 
        padding: EdgeInsets.all(16.0), 
        width: MediaQuery.of(context).size.width, 
        child: Column(
          children: [ 
            Image( 
              image: AssetImage(imagePath), 
              width: 600, 
            ), 
            SizedBox(height: 18), 
            Text( 
              title, 
              textAlign: TextAlign.center, 
              style: const TextStyle( 
                color: Color(0xFF1AC9FD),
                fontSize: 18, 
                fontWeight: FontWeight.w700, 
                letterSpacing: 1.5, 
              ), 
            ), 
            SizedBox(height: 10), 
            Text( 
              description, 
              textAlign: TextAlign.center, 
              style: const TextStyle( 
                height: 1.7, 
                fontSize: 14, 
                fontWeight: FontWeight.w400, 
              ), 
            ), 
            if (additionalWidgets != null) ...additionalWidgets, 
          ], 
        ), 
      ), 
    ); 
  } 
}