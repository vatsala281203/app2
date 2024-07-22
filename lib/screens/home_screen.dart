import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  List items = [
    "item1",
    "item2",
    "item3",
    "item4",
    "item5",
  ];

  List imgs = [
    "avatar.png",
    "clipart.png",
    "clipart3.png",
    "clipart4.png",
  ];

  @override
  Widget build(BuildContext){
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Alex",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(CupertinoIcons.add,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Add Account",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Make an appointment",
                        style: TextStyle(
                          color: Colors.white54,
                        )
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(CupertinoIcons.home,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Add Account",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF7165D6),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                          "Make an appointment",
                          style: TextStyle(
                            color: Color(0xFF7165D6),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "New Posts",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          ),
          SizedBox(height: 70,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    items[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              );
            },
          ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Popular Doctors",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/${imgs[index]}"),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}