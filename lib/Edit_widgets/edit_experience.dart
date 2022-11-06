import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/input_field.dart';

class EditExperience extends StatelessWidget {
  const EditExperience({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Experience Details",
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

                    const InputField(
                    placeholderText: "Company Name",
                    initialValue:
                        "Comapny Name",
                    ),
                    const SizedBox(height: 15),

                  const InputField(
                    placeholderText: "Position/Role",
                    initialValue:
                        "Position Name",
                  ),
                  const SizedBox(height: 15),
                 
                 const InputField(
                    placeholderText: "Description",
                    initialValue:
                        "Description",
                  ),
                  const SizedBox(height: 20),

                  const InputField(
                    placeholderText: "Start Date",
                    initialValue:
                        "MM-YEAR",
                  ),
                  const SizedBox(height: 15),

                  const InputField(
                    placeholderText: "End Date",
                    initialValue:
                        "MM-YEAR",
                  ),
                  
                  const SizedBox(height: 15),
                  Button(
                    text: "Update Experience",
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
