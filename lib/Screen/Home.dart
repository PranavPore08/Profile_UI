import 'package:flutter/material.dart';
import 'package:settingapp_flutter/add_widget/add_certificate.dart';
import 'package:settingapp_flutter/add_widget/add_education.dart';
import 'package:settingapp_flutter/add_widget/add_experience.dart';

import '../Edit_widgets/edit_certificate.dart';
import '../Edit_widgets/edit_education.dart';
import '../Edit_widgets/edit_experience.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class _MyHomePageState extends State<MyHomePage> {
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
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: -4,
                      blurRadius: 25,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                  top: 11,
                  bottom: 11,
                  right: 27,
                  left: 27,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Company Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text("Position/ Role",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 41, 41, 49))),
                              Text("Description",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 41, 41, 49))),
                              Text("MM-Year To MM-Year",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8F8F9E)))
                            ]),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const EditExperience()));
                          },
                          child: const Icon(Icons.edit_outlined, size: 22)),
                      const SizedBox(width: 25),
                      const Icon(
                        Icons.delete_outline,
                        size: 24,
                        color: Color(0xFFFF5959),
                      ),
                    ],
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
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: -4,
                      blurRadius: 25,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                  top: 11,
                  bottom: 11,
                  right: 27,
                  left: 27,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("College Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text("Branch",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 41, 41, 49))),
                              Text("MM-Year To MM-Year",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8F8F9E)))
                            ]),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const EditEducation()));
                          },
                          child: const Icon(Icons.edit_outlined, size: 22)),
                      const SizedBox(width: 25),
                      const Icon(
                        Icons.delete_outline,
                        size: 24,
                        color: Color(0xFFFF5959),
                      ),
                    ],
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
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: -4,
                      blurRadius: 25,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                  top: 11,
                  bottom: 11,
                  right: 27,
                  left: 27,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Certficate Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text("Organization Name",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 41, 41, 49))),
                              Text("DD-MM-Year",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8F8F9E)))
                            ]),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const EditCertificate()));
                          },
                          child: const Icon(Icons.edit_outlined, size: 22)),
                      const SizedBox(width: 25),
                      const Icon(
                        Icons.delete_outline,
                        size: 24,
                        color: Color(0xFFFF5959),
                      ),
                    ],
                  ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.add,
                              size: 24,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'Flutter',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'React JS',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'Node js',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'Django',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'Laravel',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            'Express JS',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
