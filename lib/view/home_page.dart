


import 'package:flutter/material.dart';
import 'package:hubstaff/view/body/part1.dart';
import 'package:hubstaff/view/body/part2.dart';
import 'package:hubstaff/view/footer/footer.dart';
import 'package:hubstaff/view/header/header.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            Part1(),
            SizedBox(height: 40,),
            Part2(),
            SizedBox(height: 20,),
            Footer()          ],
        ),
      ),
    );
  }
}