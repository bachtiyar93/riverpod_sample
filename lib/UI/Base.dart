import 'package:apphelper/helperapp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_example/main.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_)=> AppHelpers.navigation.openPageNamedNoNav(Main.greetings));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text('App Sample Riverpod', style: GoogleFonts.alexBrush(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Belajar riverpod'),
              Icon(Icons.heart_broken, color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}
