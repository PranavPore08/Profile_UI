import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/input_field.dart';

class EditCertificate extends StatelessWidget {
  const EditCertificate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Certificate Details",
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
                    placeholderText: "Certificate Name",
                    initialValue:
                        "Name",
                  ),
                  const SizedBox(height: 15),
                 
                  const InputField(
                    placeholderText: "Organization Details",
                    initialValue:
                        "Organization",
                  ),
                  const SizedBox(height: 15),

                  const InputField(
                    placeholderText: "Date",
                    initialValue:
                        "DD-MM-YEAR",
                  ),
                  
                  const SizedBox(height: 15),
                  Button(
                    text: "Update Certificate",
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
