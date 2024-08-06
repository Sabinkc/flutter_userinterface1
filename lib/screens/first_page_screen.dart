import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class FirstPageScreen extends StatefulWidget {
  FirstPageScreen({super.key});

  @override
  State<FirstPageScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FirstPageScreen> {
  final List _feelings = ["Happy", "Funny", "Flirty", "Angry"];

  final List _emojis = [
    "lib/assets/Happy.png",
    "lib/assets/Funny.png",
    "lib/assets/Flirty.png",
    "lib/assets/Angry.png"
  ];

  final List _skills = [
    "Speaking skills",
    "Reading speed",
    "Listening skill",
    "Writing speed"
  ];

  final List _exercises = [
    "16 exercises",
    "8 exercises",
    "7 exercises",
    "17 exercises"
  ];

  final List<IconData> _icons = [
    Icons.heart_broken,
    Icons.people,
    Icons.school,
    Icons.alarm
  ];

  final List<Color> _iconColors = [
    Colors.orange,
    Colors.blue,
    Colors.purple,
    Colors.pinkAccent
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: Colors.blue[900],
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hi, Sabin!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "25 Jan, 2004",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 84, 161, 224)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          Color.fromARGB(255, 84, 161, 224).withOpacity(0.5),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 28, right: 28, top: 13),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                              width: 15,
                            ),
                        padding: EdgeInsets.all(10),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 84, 161, 224)
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Image.asset(
                                  _emojis[index],
                                  height: 50,
                                  width: 50,
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _feelings[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 360,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 100,
              child: Column(
                children: [
                  Container(
                    width: 50,
                    child: Divider(
                      thickness: 4,
                      height: 30,
                      color:
                          Color.fromARGB(255, 84, 161, 224).withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 35),
                            child: Container(
                              height: 90,
                              child: Center(
                                child: Card(
                                  // color: Colors.white54,
                                  elevation: 2,

                                  shadowColor: Colors.black,
                                  child: ListTile(
                                    leading: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: _iconColors[index],
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        _icons[index],
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.more_horiz,
                                      color: Colors.grey,
                                    ),
                                    title: Text(_skills[index]),
                                    subtitle: Text(_exercises[index]),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: _skills.length),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: WaterDropNavBar(
      //       backgroundColor: Colors.white,
      //       inactiveIconColor: Colors.grey,
      //       waterDropColor: Color.fromARGB(255, 84, 161, 224).withOpacity(01),
      //       barItems: [
      //         BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home),
      //         BarItem(filledIcon: Icons.mail, outlinedIcon: Icons.mail),
      //         // BarItem(filledIcon: Icons.message, outlinedIcon: Icons.message),
      //         BarItem(filledIcon: Icons.people, outlinedIcon: Icons.people),
      //       ],
      //       selectedIndex: _currentIndex,
      //       onItemSelected: (index) {
      //         setState(() {
      //           _currentIndex = index;
      //         });
      //       }),
      
    );
  }
}

