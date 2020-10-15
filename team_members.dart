import 'package:flutter/material.dart';
import 'package:uiauth/heading.dart';
import 'name_number.dart';

class TeamMembers extends StatefulWidget {
  @override
  _TeamMembersState createState() => _TeamMembersState();
}

class _TeamMembersState extends State<TeamMembers> {
  Widget _buildProfileList(
    String image,
    String name,
    String designation,
    String company,

    int level,
      Color color,
  ) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Container(
          child: Row(
            children: [
              Text(designation),
              SizedBox(
                width: 1,
              ),
              Container(
                  child: Center(
                    child: Text(
                      company,
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  width: 80,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color,
                  )),
            ],
          ),
        ),
        trailing: Flex(
          direction: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Flexible(
                child: Text(
                  "LVL" + level.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Text(
                "View Profile",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: ListView.builder(itemCount:3,itemBuilder: (context, index) {
              return Column(
                children: [
                  _buildProfileList("images/a.jpg", "Ali Asad",
                      "Frontend Developer at", "AlphaBolt", 100,Colors.blue.withOpacity(0.35)),
                  _buildProfileList("images/a.jpg", "Ali Asad",
                      "Frontend Developer at", "AlphaBolt", 100,Colors.blue.withOpacity(0.35)),
                  SizedBox(
                    height: 2,
                  ),
                  NameNumber("All Team Members", "23"),
                  SizedBox(
                    height: 2,
                  ),
                  _buildProfileList("images/a.jpg", "Awais Qamar",
                      "Junior Developer at", "Traverse", 120,Colors.deepOrangeAccent.withOpacity(0.25)),
                ],
              );
            }),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
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
                  height: 4,
                ),
                Heading("Select the choosen one!"),
                NameNumber("Recently Contacted", "2"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
