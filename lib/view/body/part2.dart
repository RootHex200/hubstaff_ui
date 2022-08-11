import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hubstaff/widgets/colors.dart';

List data = [
  ["Time", 'Simple time tracking and reporting'],
  ["Desk", 'Proof of work,time tracking, and team management'],
  ['Filed', 'GPS Location Tracking and team management']
];

class Part2 extends StatelessWidget {
  const Part2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(data.length, (index) {
          return Container(
            height: 180,
            width: 300,
            margin: const EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                      color: Appcolor.blue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Image(
                            height: 40,
                            image: AssetImage("assets/images/hubstaff.png")),
                        RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: "Hubstaff ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          TextSpan(
                              text: data[index][0], style: TextStyle(fontSize: 17))
                        ]))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Text(
                        data[index][1],
                        textAlign: TextAlign.justify,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }));
  }
}
