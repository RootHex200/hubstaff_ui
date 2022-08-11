import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hubstaff/widgets/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.white,
      margin: const EdgeInsets.only(right: 50, left: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children:const  [
                Image(
                  height: 40,
                  image: AssetImage("assets/images/hubstaff.png")),
                  Text("Hubstaff",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Feature',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'How it works',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Apps',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Expanded(child: Container()),
          const Text(
            'Pricing Demo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: Appcolor.blue, borderRadius: BorderRadius.circular(8)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                "Free 14-day trial",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: Appcolor.blue, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
              child: Text(
                "Sign in",
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
