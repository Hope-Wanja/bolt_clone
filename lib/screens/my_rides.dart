import 'package:flutter/material.dart';

class RidesPage extends StatefulWidget {
const RidesPage({Key? key}) : super(key: key);
  @override
  State<RidesPage> createState() => _RidesPageState();
}

class _RidesPageState extends State<RidesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text('Your Rides'),
      ),
    );
  }
}
