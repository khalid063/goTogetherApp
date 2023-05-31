
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class WhyChoiceUs extends StatefulWidget {
  const WhyChoiceUs({Key? key}) : super(key: key);

  @override
  State<WhyChoiceUs> createState() => _WhyChoiceUsState();
}

class _WhyChoiceUsState extends State<WhyChoiceUs> {

  Future<bool> _onBackButtonPress() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackButtonPress,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Go Together'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Text('Why Choice Us'),
          ),
        ),
      ),
    );
  }
}
