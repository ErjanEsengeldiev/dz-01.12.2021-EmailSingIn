import 'package:dz_email/mail.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MailWidget(),
    );
  }
}