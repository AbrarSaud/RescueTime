import 'package:flutter/material.dart';

class SoonScreen extends StatelessWidget {
  const SoonScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text("soon" ,style: TextStyle(fontSize:40 ,color: Colors.red),)));
  }
}
