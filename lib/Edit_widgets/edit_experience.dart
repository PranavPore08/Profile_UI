import 'package:flutter/material.dart';
import '../widget/button.dart';

class EditExperience extends StatefulWidget {
  const EditExperience({Key key}) : super(key: key);
  _EditExperience createState() => _EditExperience();
}

class _EditExperience extends State<EditExperience> {
  final cmp_name = TextEditingController();
  final cmp_position = TextEditingController();
  final cmp_description = TextEditingController();
  final cmp_start_date = TextEditingController();
  final cmp_end_date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Experience",
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
                    controller: cmp_name,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Company Name",
                      hintText: 'Enter Company Name',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cmp_position,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Position/Role",
                      hintText: 'Enter Your Role',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cmp_description,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Company Description",
                      hintText: 'Enter Description',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: cmp_start_date,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Start Date",
                      hintText: 'Start Date',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cmp_end_date,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "End Date",
                      hintText: 'End Date',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Button(
                    text: "Edit Experience",
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
