import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          SizedBox(height: 20),
        ],
      )),
    );
  }
}
