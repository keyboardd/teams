import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Teams extends StatefulWidget {
  Teams();
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6, right: 7, left: 5),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                Text(
                  "Cheers Everyone",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 15,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(left: 140, right: 10),
                  width: 65,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    backgroundImage: ExactAssetImage('images/a.jpg'),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: Colors.blueAccent,
                      width: 4.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              " Show em some Love!",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: "Arvo-Bold",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "     Your Teams",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Oswald"),
                ),
                new Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),

                  margin: EdgeInsets.only(left: 190),
                  height: 30,
                  // color: Colors.blue,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: new Text(
                    "2",
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              height: 240,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                color: Colors.blue[100],
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "AlfaBolt",
                              style: TextStyle(
                                color: Colors.blue[500],
                                fontSize: 35,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Assistant-Regular",
                              ),
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),

                              margin: EdgeInsets.only(left: 120),
                              height: 30,
                              // color: Colors.blue,
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(
                                Icons.star_border,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("  Web Development for X.Y.Z Company"),
                          Container(
                            padding: EdgeInsets.only(left: 19),
                          ),
                          Text("5 members"),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 145,
                        height: 35,
                        child: Text(
                          "  Front-End Developer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          "View Team Members",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: new Icon(
              Icons.home,
              size: 24,
            ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.supervised_user_circle,
                size: 24,

              ),
              label: "Profile",

            ),
            BottomNavigationBarItem(

              icon: new Icon(
                Icons.emoji_events,
                size: 24,
              ),
              label: "Achievements",
            ),
          ],
        ),
          floatingActionButton: new FloatingActionButton(

              elevation: 0.0,
              child: new Icon(Icons.favorite,color: Colors.white,size: 36,),
              backgroundColor: Colors.pink,
              onPressed: (){
                Navigator.pushNamed(context,'/chat');
              }
          )
      ),
    );
  }
}
