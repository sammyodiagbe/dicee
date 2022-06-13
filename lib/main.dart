import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {

  const Dicee({Key? key}) : super(key: key);

  State<Dicee> createState() => _diceeState();
}

class _diceeState extends State<Dicee> {

  var rand = Random();
  int _firstDice = 3;
  int _secondDice = 1;
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
        elevation: 1,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
            children: [
              Expanded(
                child:  Image(
                  image: AssetImage('images/dice$_firstDice.png'),
                ),
              ),

              SizedBox(width: 20),
              Expanded(child:Image(
                  image: AssetImage('images/dice$_secondDice.png')
              ) ,)


            ],
          ),SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    setState((){
                        _firstDice = rand.nextInt(6) + 1;
                        _secondDice = rand.nextInt(6) + 1;
                    });
                  },
                  child: Text('Roll dice', style: TextStyle(color: Colors.red, fontSize: 16),),
                ),],),
        ),
        ),
      )
    );
  }
}