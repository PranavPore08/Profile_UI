import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:flutter/material.dart';
import 'package:settingapp_flutter/Screen/fetch_certificate.dart';
import 'package:settingapp_flutter/Screen/fetch_education.dart';
import 'package:settingapp_flutter/Screen/fetch_experience.dart';
import 'package:settingapp_flutter/Screen/fetch_skills.dart';
import 'package:settingapp_flutter/add_widget/add_certificate.dart';
import 'package:settingapp_flutter/add_widget/add_education.dart';
import 'package:settingapp_flutter/add_widget/add_experience.dart';
import 'package:settingapp_flutter/add_widget/add_skill.dart';

import '../Edit_widgets/edit_certificate.dart';
import '../Edit_widgets/edit_education.dart';
import '../Edit_widgets/edit_experience.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);
  final String title;
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black87),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp'),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'Joan Louji',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Full Stack Developer at XY',
                            style: TextStyle(
                                color: Colors.blueGrey[400],
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.blueGrey[200],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            '30',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Posts',
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            '203',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Connections',
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.blueGrey[200],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              'Experiences',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AddExperience()));
                        },
                        child: const Icon(Icons.add, size: 22)),
                  ),
                ],),
                  Container(
                    alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(  
                               color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const fetch_experience()));
                            },
                              child: Text(
                                      'View',
                                  style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,),),
                      ),
                    ),
              
              Row(
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AddEducation()));
                        },
                        child: const Icon(Icons.add, size: 22)),
                  ),],),

                  Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(  
                               color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const fetch_education()));
                            },
                              child: Text(
                                'View',
                                style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                ),
                                ),
                      ),
                    ),

              Row(
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              'Certification',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AddCertificate()));
                        },
                        child: const Icon(Icons.add, size: 22)),
                  ),]),

                  Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(  
                               color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                            ), 
                            child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const fetch_certificate()));
                            },
                            
                              child: Text(
                                'View',
                                style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                )),
                      ),
                    ),
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Row(
                    children: [
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  'Top Skills',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                    padding: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const AddSkill()));
                        },
                        child: const Icon(Icons.add, size: 22)),
                  ),
                    ],
                  ),

                  Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(  
                               color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                            ), 
                            child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const fetch_skills()));
                            },
                            
                              child: Text(
                                'View',
                                style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                )),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}
