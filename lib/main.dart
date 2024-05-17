import 'package:flutter/material.dart';
import 'package:homework_37_uzum_market/singlechild/single_page.dart';

void main(){
  runApp(MyscreenApp());
}
class MyscreenApp extends StatelessWidget {
  const MyscreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SingleChild(),
    );
  }
}
