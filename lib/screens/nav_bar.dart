

import 'package:flutter/material.dart';
import 'package:gotogetherapp_ios_v4/screens/about_us.dart';
import 'package:gotogetherapp_ios_v4/screens/facebook_community.dart';
import 'package:gotogetherapp_ios_v4/screens/how_works_go_together.dart';
import 'package:gotogetherapp_ios_v4/screens/login.dart';
import 'package:gotogetherapp_ios_v4/screens/why_choice_us.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/app_logo.png',
                    width: 90,
                    height: 90,
                  ),
                )
            ),
            decoration: BoxDecoration(
              //color: Colors.deepPurple,
              color: Colors.lightBlueAccent[400],
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                  Icons.home_repair_service_outlined,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                  'About Us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.work_history,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'How Works Go Together',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HowWorksGoTogether()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.query_stats_rounded,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Why Choice Us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WhyChoiceUs()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.facebook,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Facebook Community',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FacebookCommunity()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.login,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
