import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_3/providers/1st_provider.dart';
import 'package:provider_test_3/second_screen/second_screen.dart';

class FirstPage extends StatefulWidget {
  static const routeName = '/Home';
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final nameKey = GlobalKey<FormState>();
  final phoneKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<UserDetails>(context);
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Name From
              Form(
                key: nameKey,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Your Name',
                      icon: Icon(Icons.person),
                      labelText: 'Name*'),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  onChanged: (text) {
                    providerData.name = text.toString();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //Numer  from field
              Form(
                key: phoneKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Please Enter Your Phone Number ',
                      icon: Icon(Icons.phone),
                      labelText: 'Phone Number*'),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  onChanged: (num) {
                    providerData.number = int.parse(num);
                  },
                ),
              ),

              SizedBox(
                height: 20,
              ),
              
              //Submit button

              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    nameKey.currentState!.validate();
                    Navigator.pushNamed(context, (SecondScreen.routeName));
                  })
            ],
          ),
        ));
  }
}
