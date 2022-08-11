import 'package:flutter/material.dart';
import 'package:hubstaff/widgets/colors.dart';

class Part1 extends StatelessWidget {
  const Part1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Column(
      children: [
        Container(
        height: 335,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Appcolor.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: const [
                    Text(
                      "Choose the plane that's right",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    Text(
                      "FOr your team!",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Free 14-day trial.60-day money back guarentee",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Positioned(
              bottom: 0,
              left: (MediaQuery.of(context).size.width - 230) / 2,
              child: Container(
                height: 80,
                width: 300,
                child: Stack(
                  children: [
                    Container(
                      decoration:  BoxDecoration(
                          color:Appcolor.button,
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(100),
                              left: Radius.circular(100))),
                    ),
                    Row(
                      children: [
                        Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color:Appcolor.button.withOpacity(0.6),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(1, 2),
                                  )
                                ]),
                            child: const Center(
                              child: Text("Annual",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  )),
                            )),
                        Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: Appcolor.button,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color:Appcolor.button.withOpacity(0.6),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(1, 2),
                                  )
                                ]),
                            child: const Center(
                              child: Text("Monthly",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                    Container(
          color: Colors.blue,
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text("Get two month free",style: TextStyle(color: Colors.white,fontSize: 18),)),
        ),
        SizedBox(width: 5,),
        Text("When you pray annually",style: TextStyle(fontSize: 15),)
          ],
        )

      ],
    );
  }
}
