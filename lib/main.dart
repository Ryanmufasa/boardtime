import 'package:boardtime/rummikub/rummikubOption.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'BoardTime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Timer Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIdx =0;
  String mainStr = '게임을 선택해주세요';
  List pages=[
//    Home(),
    RummikubOption()
  ];

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.purpleAccent,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(
                      mainStr,
                      style: TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child:Container(
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const RummikubOption())
                          );
                        },
                        child: Text('Rummikub'),
                      ),
                    ],
                  ),
                )
              ),
              Container(
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
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