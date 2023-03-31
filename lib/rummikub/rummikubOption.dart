import 'package:flutter/material.dart';

void main() {
  runApp(const RummikubOption());
}

class RummikubOption extends StatelessWidget {
  const RummikubOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      child:playerCnt()

    );
  }
}

class playerCnt extends StatefulWidget {
  const playerCnt({Key? key}) : super(key: key);

  @override
  State<playerCnt> createState() => _playerCntState();
}

class _playerCntState extends State<playerCnt> {


  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      color:Colors.grey,
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Form(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rummikub 상세설정",
                        style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                color: Colors.yellow,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "인원",
                        style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                color: Colors.blue,
                child: TextFormField(

                ),
              ),
              Container(
                color: Colors.yellow,
                child: TextFormField(

                ),
              ),
              Container(
                color: Colors.blue,
                child: TextFormField(

                ),
              ),
            ],
          )
      ),
    );
  }
}

