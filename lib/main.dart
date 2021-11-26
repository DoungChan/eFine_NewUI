import 'package:efine_beta_ui/screens/grideview/gridview.dart';
import 'package:efine_beta_ui/screens/products/product_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eFine_UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: categaryList(),
    );
  }
}
