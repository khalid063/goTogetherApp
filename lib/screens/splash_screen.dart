import 'package:flutter/material.dart';
import 'package:gotogetherapp_ios_v4/screens/home_screen.dart';
import 'package:gotogetherapp_ios_v4/utils/constants.dart';
import 'package:gotogetherapp_ios_v4/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigateToHome();
    super.initState();
  }


  void navigateToHome(){
    Future.delayed(Duration(seconds: 5),
            (){
          //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          //Navigator.removeRoute(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomeScreen()));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("Hellow Splash Screen"),
            SizedBox(height: 30),
            CircleAvatar(
              backgroundColor: Colors.greenAccent[250],
              //backgroundImage: Image.asset('assets/images/splash_screen_logo.jpg'),
              radius: 100,
              child: Text(
                'Go Together',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ), //Text
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(
              strokeWidth: 2,
              //valueColor: AlwaysStoppedAnimation(Colors.deepPurple),
              valueColor: AlwaysStoppedAnimation(Colors.greenAccent[250]),
            ),
          ],
        ),
      )
    );
  }
}
