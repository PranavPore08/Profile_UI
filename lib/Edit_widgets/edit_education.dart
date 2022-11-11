import 'package:flutter/material.dart';
import '../widget/button.dart';

class EditEducation extends StatefulWidget {
  const EditEducation({Key key}) : super(key: key);
  _EditEducation createState() => _EditEducation();
}

class _EditEducation extends State<EditEducation> {
  final clg_name = TextEditingController();
  final clg_branch = TextEditingController();
  final clg_start_date = TextEditingController();
  final clg_end_date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Education",
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
                    controller: clg_name,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "College Name",
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: clg_branch,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Branch Name",
                      hintText: 'Enter Branch Name',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: clg_start_date,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Start Date",
                      hintText: 'Start Date',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: clg_end_date,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "End Date",
                      hintText: 'End Date',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Button(
                    text: "Edit Education",
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
