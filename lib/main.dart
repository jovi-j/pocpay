import 'package:flutter/material.dart';
import 'package:pocpay/features/authentication/login.dart';

void main() {
  runApp(MaterialApp(
    title: "Pocpay",
    home: Login(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}
