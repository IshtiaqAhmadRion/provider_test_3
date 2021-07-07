import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final nameKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'PROVIDER TEST',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Form(
              key: nameKey,
              child: TextFormField(
                decoration:
                InputDecoration(
                  hintText: 'Your Name',
                  icon: Icon(Icons.person),
                  labelText: 'Name*'),
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
            ),
            SizedBox(height: 20,),

            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {
              nameKey.currentState!.validate();
            })

            // TextFormField(
            //   decoration: const InputDecoration(
            //     icon: Icon(Icons.person),
            //     hintText: 'What do people call you?',
            //     labelText: 'Name *',
            //   ),
            //   onSaved: (String? value) {
            //     // This optional block of code can be used to run
            //     // code when the user saves the form.
            //   },
            //   validator: (String? value) {
            //     return (value != null && value.contains('@'))
            //         ? 'Do not use the @ char.'
            //         : null;
            //   },
            // )
          ],
        ));
  }
}
