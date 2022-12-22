import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '../Edit_widgets/edit_experience.dart';

class fetch_experience extends StatefulWidget {
  const fetch_experience({Key key}) : super(key: key);
  _FetchData createState() => _FetchData();
}

class _FetchData extends State<fetch_experience> {
  Query query = FirebaseDatabase.instance.ref().child('Students/Experiences');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Students/Experiences');

  Widget experience_section({Map Students}) {
    return Container(
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
                  children: [
                    Text(Students['cmp_name'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800)),
                    Text(Students['cmp_position'],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Text(Students['cmp_description'],
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 41, 41, 49))),
                    Text(
                        Students['cmp_start_date'] +
                            " To " +
                            Students['cmp_end_date'],
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)))
                  ]),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                     builder: (_) =>EditExperience(studentKey: Students['key'])));
                },
                child: const Icon(Icons.edit_outlined, size: 22)),
            const SizedBox(width: 25),
            GestureDetector(
              onTap: () {
                reference.child(Students['key']).remove();
              },
              child: const Icon(
              Icons.delete_outline,
              size: 24,
              color: Color(0xFFFF5959),
            ),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Experiences'),
        ),
        body: Container(
          height: double.infinity,
          child: FirebaseAnimatedList(
            query: query,
            itemBuilder: (context, snapshot, animation, index) {
              Map Students = snapshot.value as Map;
              Students['key'] = snapshot.key;
              return experience_section(Students: Students);
            },
          ),
        ),
      ),
    );
  }
}
