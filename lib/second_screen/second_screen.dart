import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_3/providers/1st_provider.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/secon';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<UserDetails>(context);
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          data.name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [Text(data.name,), Text(data.number.toString())],
        ),
      ),
    );
  }
}
