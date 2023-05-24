import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("images/avatar.jpg"),
              ),
              Text("Alexey P",
                  style: kTitleTextStyle),
              Text("Android Developer"),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Card(child:ListTile(leading: Icon(Icons.call),
                title: Text("88005553555",style: kSmallTextStyle,),),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Card(child:ListTile(leading: Icon(Icons.email),
                  title: Text("engineer.cat@emal.com",style: kSmallTextStyle,),),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Education",textAlign: TextAlign.center,style: kRegularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("School1",textAlign: TextAlign.center,style: kRegularTextStyle,),
                          Text("University1",textAlign: TextAlign.center, style: kRegularTextStyle,),
                          Text("University2",textAlign: TextAlign.center, style: kRegularTextStyle,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Work Experience",textAlign: TextAlign.center,style: kRegularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("Support engineer",textAlign: TextAlign.center, style: kRegularTextStyle,),
                          Text("System administrator",textAlign: TextAlign.center, style: kRegularTextStyle,),
                          Text("Android developer",textAlign: TextAlign.center, style: kRegularTextStyle,),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
