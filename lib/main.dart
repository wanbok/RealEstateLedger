import 'package:flutter/material.dart';
import 'package:RealEstateLedger/views/home.dart';

void main() => runApp(RealEstateLedgerApp());

class RealEstateLedgerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '부동산 계산기',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: '부동산 계산기'),
    );
  }
}
