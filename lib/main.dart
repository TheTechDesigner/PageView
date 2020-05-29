import 'package:flutter/material.dart';
import 'package:pageview/images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'PageView';

  final List<String> images = [
    ironMan,
    venom,
    thor,
    captainAmerica,
    captainMarvel,
    deadPool
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox.fromSize(
          size: Size.fromHeight(600.0),
          child: PageView.builder(
              controller: PageController(viewportFraction: 0.9),
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(16.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
