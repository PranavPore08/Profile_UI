import 'package:flutter/material.dart';
import '../widget/button.dart';

class EditCertificate extends StatefulWidget {
  const EditCertificate({Key key}) : super(key: key);
  _EditCertificate createState() => _EditCertificate();
}

class _EditCertificate extends State<EditCertificate> {
  final cer_name = TextEditingController();
  final cer_organization = TextEditingController();
  final cer_date = TextEditingController();
  //late DatabaseReference dbref;

  void initState() {
    super.initState();
    //dbref=FirebaseDatabase.instance.ref().child('Certificates');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Certificate",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(right: 27, bottom: 59, left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: cer_name,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Certificate Name",
                      hintText: 'Enter Certificate Name',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cer_name,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Organization Name",
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cer_name,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Certificate Date",
                      hintText: 'Date',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Button(
                    text: "Edit Certificate",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
