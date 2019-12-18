import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Special Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Special Text'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _specialText = RichText(
    textAlign: TextAlign.start,
    textScaleFactor: 1.5,
    text: TextSpan(
      children: [
        TextSpan(
          text:
              "Flutter is an open-source mobile SDK developer can use to build native-looking  applications from the same code base. Flutter has been around since ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: "Android and iOS",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        TextSpan(
          text:
              " applications from the same code base. Flutter has been around since ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: " 2015 ",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.pink,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextSpan(
          text:
              "when Google introduced it and remained in the beta stage before its official launch in December 2018. Since then, the buzz around Flutter has been growing stronger.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: _specialText,
        ),
      ),
    );
  }
}
